# -*- coding: utf-8 -*-

"""
Study-agnostic Pipeline functions
Author: Scott Burns <sburns AT nmr DOT mgh DOT harvard DOT edu>
Copyright 2011 Kuperberg Lab
License: BSD,3 clause
"""


from subprocess import Popen,PIPE
import os
import smtplib
import time
import string
import pickle
from email.mime.text import MIMEText
import smtplib
import getpass

class ProgrammerError(Exception):
	pass

def find_session(subject,verbose=False):
	"""
	subject: list of arguments to findsession, typically [<subjectname>, "-x",<experimenter>] 
	or something along those lines
	Returns the path to the subject's dicom directory in the archives.
	Will print a warning if more than two paths were found, but always uses the newest.
	"""
	if not subject:
		raise ProgrammerError('pipeline:find_session - did not specify subject.')
	args = ['findsession']
	args.extend(subject)
	if verbose:
		print('pipeline:find_session')
		print(' '.join(args))		
	process = run_process(args)
	output = process.communicate()[0]
	out_lines = output.splitlines()
	paths = filter(lambda x:x.startswith('PATH'),out_lines)
	if len(paths) > 1:
		print('Warning: more than one session found, using newest.')
		ind_to_use = len(paths)-1
	else:
		ind_to_use = 0
	return paths[ind_to_use].split()[2]
	
def mirror(src, dest, block=True):
	"""
	src:path from which tree are copied (usually in the archives, but could be from anywhere)
	dest: path to which tree is copied
	block: if True, this function will wait for the process to complete.
	This sets up an rsync job to mirror the src directory to the dest directory.
	A '/' is appened to both src and dest if the paths don't contain it already (without these, the
	end result is a mess of subfolders)
	"""
	if not src or not dest:
		raise ProgrammerError('pipeline:mirror - empty arg(s)')
	#make sure both end with end with /
	if not src.endswith(os.sep):
		src = src + os.sep
	if not dest.endswith(os.sep):
		dest = dest + os.sep
	job = ['rsync','-a',src,dest]
	# start the process
	process = run_process(job)
	if block:
		output = process.communicate()[0]
		
def scan_only(src,targ,scan):
	"""
	src: dicom directory
	targ: directory where images will be unpacked
	scan: path to scan.log
	Runs unpacksdcmdir in -scanonly mode.
	Try unpcksdcmdir -h for more info.
	"""
	if not (src and targ and scan):
		raise ProgrammerError('pipeline:scan_only - empty arg(s)')
	args = ['unpacksdcmdir','-src',src,'-targ',targ,'-scanonly',scan]
	process = run_process(args)
	output = process.communicate()[0]
		
def scan_to_cfg(dir_map,file_map,scan_list,scan_path,filetype='nii'):
	"""
	run_map: (dict)run names in the scan.log -> desired directory name for the run
	file_map: (dict)run names in the scan.log -> desired filename
	scan_list: list of lists which match the desired runs in scan.log
	scan_path: path to file outputted from scan_only
	filetype: type of file to convert to (default=nii)
	Returns a list suitable for use in the cfg file in unpacksdcmdir.
	The only runs converted are those which contain all elements of one of the lists in scan_list.
	The list is not written to disk because the caller may wish to further alter the list.
	User must write this list to disk to use in later stages of unpacksdcmdir!
	"""
	if not (dir_map and file_map and scan_list and scan_path):
		raise ProgrammerError('Scan_to_cfg: empty arg(s).')
	try:
		with open(scan_path) as f:
			in_text = f.read()
			in_text = in_text.splitlines()
	except IOError:
		raise ProgrammerError('pipeline:scan_to_cfg - can not open scan.log')
	good_lines = []
	for scan in scan_list:
		good_scans = [v.split() for v in in_text if set(scan) < set(v.split())]
		for i,v in enumerate(good_scans):
			good_lines.append(' '.join([v[0],dir_map[v[1]],filetype,
				'{0}{1}.nii'.format(file_map[v[1]],i+1)]))
	return good_lines
	
def unpack(src,targ,cfg_path,output=None,verbose=False):
	"""
	src: dicom directory
	targ: unpacking directory
	cfg: path to cfg file (that was probably made with the help of scan_to_cfg)
	Runs unpacksdcmdir with -cfg
	Can be very time consuming, run with care.
	This function will always wait for unpacksdcmdir to finish before returning.
	"""
	if not (src and targ and cfg_path):
		raise ProgrammerError('pipeline:unpack - empty arg(s)')
	args = ['unpacksdcmdir','-src',src,'-targ',targ,'-cfg',cfg_path,'-fsfast']
	if verbose:
		print('pipeline:unpack')
		print(' '.join(args))
	process = run_process(args,output)
	output = process.communicate()[0]

def load_data(path,verbose=False):
	"""
	Read the file at path as pickled object and return the object.
	"""
	try:
		with open(path,"r") as f:
			info = pickle.load(f)
			if verbose:
				print("Loaded data from {0}".format(path))
	except:
		raise
	return info
	
def save_data(data,path,verbose=False):
	"""
	Save the object given by data to a file at path.
	"""
	try:
		with open(path,"w") as f:
			pickle.dump(data,f)
			if verbose:
				print("Saved data to {0}".format(path))
	except:
		print("Couldn't save data to {0}".format(path))
		raise
		
def f2f_replace(incoming,outgoing,replace,verbose=False):
	"""
	incoming: path to the "template" file that contains keywords
	outgoing: path to write new file
	replace: dictionary that contains keywords and their replacements
		Note: replacements should be strings (but not positive about that)
	Ex:
	incoming contains "My name is $name."
	replace is ({"name":"Scott"})
	outgoing contains "My name is Scott."
	"""
	try:
		with open(incoming,"r") as f:
			new_string = string.Template(f.read()).safe_substitute(replace)
			if verbose:
				print("Read and replaced {0}".format(incoming))
			#check if there were $keywords that weren't replaced
			if new_string.count("$") > 0:
				print("WARNING: keyword missed in {0} -> {1}".format(incoming,outgoing))
		with open(outgoing,"w") as f:
			f.write(new_string)
			if verbose:
				print("Wrote {0}".format(outgoing))
	except IOError:
		print("IOError with {0} or {1}".format(incoming,outgoing))
		raise		
	except:
		raise
	
def run_process(my_args,output=PIPE,error=PIPE,input=PIPE,verbose=False):
	"""
	my_args: list of string tokens that make up command to run
	E.G. to run something like 'ls -l .' at the commandline, my_args should be ['ls','-l','.']
	Returns the process object so the caller can block if needed or extract output.
	"""
	if not my_args:
		raise ProgrammerError('pipeline:run_process - empty command')
	if verbose:
		print('pipeline:run_process...')
		print(' '.join(my_args))
	return Popen(my_args,stdin=input,stdout=output,stderr=error,close_fds=True)

def wait_to_finish(running_jobs,loop_time=30):
	"""
	running_jobs: a list of currently running processes
	loop_time: number that controls the interval of when processes are checked for completion (sec.)
	This waits for all processes to quit.
	"""
	while len(running_jobs) > 0:
		running_jobs[:] = [process for process in running_jobs if process.poll() is None]
		time.sleep(loop_time)
				
def run_script(study, stream, subject, script_to_run, log=None):
	my_args = [script_to_run]
	start_time = time.strftime("%Y%m%d %H:%M:%S")
	print("(%s) began %s" % (start_time,script_to_run) )
	return_value = run_process(my_args).wait()
	finish_time = time.strftime("%Y%m%d %H:%M:%S")
	print("(%s) finish %s" % (finish_time,script_to_run) )
	if return_value:
	   status = "failure"
	else:
	   status = "success"
	log_text = '\n'.join(["%d errors..."% return_value,
						"Start: %s" % start_time,
						"Finish: %s" % finish_time,
						study])+'\n'
	if log:
		with open(log, 'r') as f:
			log_text += f.read()
	add = "%s@nmr.mgh.harvard.edu" % getpass.getuser()
	subj = "%s %s %s" % (subject, stream, status)
	email(sender=add,receiver=add,subject=subj,message=log_text)
		
def email(sender,receiver,subject=None,message=None):
	#construct the message
	msg = MIMEText(message)
	msg["From"] = sender
	msg["To"] = receiver
	msg["Subject"] = subject
	
	#start smtp server
	server = smtplib.SMTP('localhost')
	try:
		server.sendmail(sender,receiver,msg.as_string())
	except:
		print("Error sending email")
		raise
	finally:
		server.quit()

def write_file_with_list(path,lines,quiet=False):
	"""
	Any file writing should go through here.
	"""
	try:
		with open(path,'w') as f:
			f.writelines(lines)
		if not quiet:
			print("Wrote %s (%d)" % (os.sep.join(path.split(os.sep)[5:]),len(lines.split("\n"))))
	except IOError:
		raise

def list_from_file(path,verbose=None):
	"""
	Any file reading should go through here. Returns a list from the file split at newlines.
	"""
	try: 
		with open(path,'r') as f:
			all_lines = f.read()
			all_lines = all_lines.splitlines()
			if verbose:
				print("Reading from {0}".format(path))
	except IOError:
		print("Cannot open %s"  % path)
		raise
	return all_lines

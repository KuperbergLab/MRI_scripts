# -*- coding: utf-8 -*-

from subprocess import Popen,PIPE
import os
import smtplib
import time
import string

VERBOSE = False

class ProgrammerError(Exception):
	pass

def find_session(subject):
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
	if VERBOSE:
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
	
def unpack(src,targ,cfg_path,output=None):
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
	if VERBOSE:
		print('pipeline:unpack')
		print(' '.join(args))
	process = run_process(args,output)
	output = process.communicate()[0]

	
def load_data(path):
	try:
		with open(path,"r") as f:
			info = pickle.load(f)
	except:
		raise
	return info
	
def save_data(data,path):
	try:
		with open(path,"w") as f:
			pickle.dump(data,path)
	except:
		raise
	
	
def f2f_replace(incoming,outgoing,replace,verbose=None):
	try:
		with open(incoming,"r") as f:
			old_string = f.read()
			if verbose:
				print("Reading {0}".format(incoming))
	except IOError:
		print("Cannot open {0}".format(incoming))
		raise
	t = string.Template(old_string)
	try:
		new_string = t.safe_substitute(replace)
		try:
			with open(outgoing,"w") as f:
				f.write(new_string)
				if verbose:
					print("Writing {0}".format(outgoing))
		except IOError:
			print("Cannot write {0}".format(outgoing))
			raise
	except KeyError:
		print("KeyError with {0}".format(incoming))
		raise
	except :
		print("Error : {0}".format(incoming))
		raise
	
def run_process(args,output=None,error=None):
	"""
	args: list of string tokens that make up command to run
	E.G. to run something like 'ls -l .' at the commandline, args should be ['ls','-l','.']
	Returns the process object so the caller can block if needed or extract output.
	"""
	if not args:
		raise ProgrammerError('pipeline:run_process - empty command')
	if VERBOSE:
		print('pipeline:run_process...')
		print(' '.join(args))
	if not output:
		output=PIPE
	if not output:
		error=PIPE
	return Popen(args,stdout=output,stderr=error,close_fds=True)

def wait_to_finish(running_jobs):
	"""
	running_jobs: a list of currently running processes
	This waits for all processes to quit by looping
	"""
	while len(running_jobs) > 0:
		running_jobs[:] = [process for process in running_jobs if process.poll() is None]
		time.sleep(30)
	

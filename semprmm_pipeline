#!/usr/bin/env python

"""
Semantic Priming (MultiModal) Pipeline
Author: Scott Burns <sburns AT nmr DOT mgh DOT harvard DOT edu>
Copyright 2011 Kuperberg Lab
License: BSD,3 clause
"""

from optparse import OptionParser,OptionGroup
import os
from os.path import join as pj
from pprint import pprint
from glob import glob
import getpass
import stat
import sys
import time
try:
	from joblib import Parallel, delayed
	use_joblib = True
except ImportError:
	use_joblib = False
import shutil
from readInput import readTable
import pipeline as pipeline

possible_studies = dict({"ATLLoc": 1, "MaskedMM": 2, "BaleenLP": 4, "BaleenHP":4, "AXCPT": 2})

cond_num = dict({"ATLLoc":
					{"Sentences":"1",
					"Wordlist":"2",
					"Nonwords":"3"},
				"MaskedMM":
					{"DirectlyRelated":"1",
					"IndirectlyRelated":"2",
					"Unrelated":"3",
					"InsectPrime":"4",
					"InsectTarget":"5",
					"Misses":"6"},
				"BaleenLP":
					{"RelatedTarget":"1",
					"UnrelatedTarget":"2",
					"UnrelatedFiller":"3",
					"AnimalTarget":"4",
					"AnimalPrime":"5",
					"Misses":"6"},
				"BaleenHP":
					{"RelatedTarget":"1",
					"UnrelatedTarget":"2",
					"RelatedFiller":"3",
					"UnrelatedFiller":"4",
					"AnimalTarget":"5",
					"AnimalPrime":"6",
					"Misses":"7"},
				"AXCPT":
					{"AY":"1",
					"BX":"2",
					"BY":"3",
					"AX":"4",
					"Misses":"5"}
					})
					
contrasts = dict({"ATLLoc":
					{"Sentences":(("1"),("0")),
					"Wordlist":(("2"),("0")),
					"Nonwords":(("3"),("0")),
					"Sentences-Wordlist":(("1"),("2")),
					"Wordlist-Nonwords":(("2"),("3")),
					"Sentences-Nonwords":(("1"),("3")),
					"all":(("1","2","3"),("0"))},
				"MaskedMM":
					{"Direct":(("1"),("0")),
					"Indirect":(("2"),("0")),
					"Unrelated":(("3"),("0")),
					"InsectPrime":(("4"),("0")),
					"InsectTarget":(("5"),("0")),
					"Dir-Unr":(("1"),("3")),
					"all":(("1","2","3","4","5"),("0"))},
				"BaleenLP":
					{"Related":(("1"),("0")),
					"Unrelated":(("2"),("0")),
					"UnrelateFiller":(("3"),("0")),
					"AnimalTarget":(("4"),("0")),
					"AnimalPrime":(("5"),("0")),
					"Unrelated-Related":(("2"),("1")),
					"AnimalTarget-Unrelated":(("4"),("2")),
					"All":(("1","2","3","4","5"),("0"))},
				"BaleenHP":	
					{"Related":(("1"),("0")),
					"Unrelated":(("2"),("0")),
					"RelatedFiller":(("3"),("0")),
					"UnrelateFiller":(("4"),("0")),
					"AnimalTarget":(("5"),("0")),
					"AnimalPrime":(("6"),("0")),
					"Unrelated-Related":(("2"),("1")),
					"UnrelatedFiller-RelatedFiller":(("4"),("3")),
					"AnimalTarget-Unrelated":(("5"),("2")),
					"All":(("1","2","3","4","5","6"),("0"))},
				"AXCPT":
					{"AY":(("1"),("0")),
					"BX":(("2"),("0")),
					"BY":(("3"),("0")),
					"AX":(("4"),("0")),
					"all":(("1","2","3","4"),("0")),
					"AY-BY":(("1"),("3")),
					"BX-BY":(("2"),("3"))}
					})

batch_dir = "/cluster/kuperberg/SemPrMM/MRI/scripts/spm_batches/"
func_dir = "/cluster/kuperberg/SemPrMM/MRI/functionals/"
dicom_dir = "/cluster/kuperberg/SemPrMM/MRI/dicoms/"
meg_dir = "/cluster/kuperberg/SemPrMM/MEG/data/"
meg_scripts = "/cluster/kuperberg/SemPrMM/MEG/scripts/"
mri_scripts = "/cluster/kuperberg/SemPrMM/MRI/scripts/"
mri_vtsd = "/cluster/kuperberg/SemPrMM/MRI/vtsd_logs/"
running_jobs = []


class ProgrammerError(Exception):
	pass


class UserError(Exception):
	pass


class SystemError(Exception):
	pass


####COPYING/UNPACKING#######

def archive_to_cluster(data):
	"""
	data: dict
		req. keys:"subject","subject_dicom"
	Copies dicom images from archive dir to dicom dir.
	parallel subjects : YES
	"""
	if data["verbose"]:
		print("archive_to_cluster:")
	data["archive_dir"] = pipeline.find_session([data["subject"], "-x", "Kuperberg"])
	if data["archive_dir"] is None:
		print("ALERT:findsession returned nothing for {0}".format(data["subject"]))
		return
	if not os.path.exists(data["dicom_dir"]):
		os.mkdir(data["dicom_dir"])
	pipeline.mirror(data["archive_dir"], data["dicom_dir"], True)


def scan_only(data):
	"""
	data: dict with keys:"subject_dir","subject_dicom"
	Runs unpacksdcmdir in -scanonly mode, which creates data["mri_dir"]/scan.log
	parallel subjects: NO
	"""
	if not os.path.exists(data["mri_dir"]):
		os.mkdir(data["mri_dir"])
	data["scan_path"] = scan_path(data)
	try:
		pipeline.scan_only(data["dicom_dir"], data["mri_dir"], data["scan_path"])
	except OSError:
		raise UserError("scan_only: start nmrenv and try again.")


def unpack(data):
	"""
	data: dict with keys:"subject_dir", "subject_dicom", "subject"
	Runs unpacksdcmdir in the full mode.
	Can take a long time,  run with care.
	parallel subjects: NO
	"""
	data["cfg_path"] = cfg_path(data)
	if os.access(data["cfg_path"], os.R_OK):
		pipeline.unpack(data["dicom_dir"], data["mri_dir"], data["cfg_path"])
	else:
		print("ALERT: cannot find cfg file for {0}, re-run --scan2cfg".format(data["subject"]))


def cfg_path(data):
	"""
	data: dict with keys:"subject_dir"
	Returns path to cfg file.
	"""
	return pj(data["mri_dir"], "cfg.txt")


def scan_path(data):
	"""
	data: dict with "subject_dir"
	returns path to scan.log file
	"""
	return pj(data["mri_dir"], "scan.log")


def unpack_all(data):
	"""
	data: dict with keys:"subject_dir", "subject_dicom", "subject"
	Wrapper for all three pieces of unpacking a subject"s dicom dir.
	Runs:
		1) scan_only
		2) scan2cfg
		3) cfg2info
		4) unpack
	parallel subjects: NO
	"""
	scan_only(data)
	scan2cfg(data)
	cfg2info(data)
	unpack(data)


def scan2cfg(data):
	"""
	data: dict with keys:"subject_dir"
	Converts scan.log to appropriate cfg file and writes to disk.
	"""
	data["scan_path"] = scan_path(data)
	data["cfg_path"] = cfg_path(data)
	dir_map = dict({"MEMPRAGE_4e_p2_1mm_iso": "MPRAGE", "ge_functionals_atlloc": "ATLLoc",
			"field_mapping": "FieldMap", "ge_functionals_maskmm": "MaskedMM", 
			"ge_functionals_baleen": "BaleenMM", "MEFLASH_8e_1mm_iso_5deg": "MEFLASH",
			"ge_functionals_axcpt": "AXCPT", "ge_functionals_axcpt_sc": "AXCPT"})
	scan_list = [["MEMPRAGE_4e_p2_1mm_iso","ok","256","256","1"], 
				["ge_functionals_atlloc","ok","160"],["ge_functionals_maskmm","ok","148"],
				["ge_functionals_baleen","ok","130"],["ge_functionals_axcpt","ok","240"],
				["MEFLASH_8e_1mm_iso_5deg","256","256","ok","1"],["field_mapping","ok","1"],
				["ge_functionals_axcpt_sc","ok","140"]]
	good_lines = pipeline.scan_to_cfg(dir_map,dir_map,scan_list,data["scan_path"])
	good_lines.sort(key=lambda x:int(x.split()[0]))
	#split baleen lines into LP and HP
	for i,line in enumerate(good_lines[:]):
		if line.split()[1] == "BaleenMM":
			run_num = int(line.split()[3].partition(".nii")[0].partition("BaleenMM")[2])
			if run_num < 5:
				new_study = "BaleenLP"
				new_run = run_num
			else:
				new_study = "BaleenHP"
				new_run = run_num - 4
			filetype = line.split()[2]
			good_lines[i] = "%s %s %s %s" % (line.split()[0],new_study,filetype,"%s%d.%s" % (new_study,new_run,filetype))
	fieldmaps = [v for v in good_lines if v.split()[1] == "FieldMap"]
	if len(fieldmaps) % 2 == 1:
		print("Odd amount of fieldmaps. --scan2cfg cannot continue. Copy/paste/edit as needed.")
		for line in good_lines:
			print(line)
		return
	good_fieldmaps = []
	func_names = ["MaskedMM","BaleenHP","ATLLoc","AXCPT"]
	for fm in fieldmaps:
		ind = good_lines.index(fm)
		all_prev_func = [r for r in good_lines[0:ind] if r.split()[1] in func_names]
		if len(all_prev_func) < 1:
			print("ALERT: no func runs for the field maps. Copy/paste/edit the dump below.")
			for line in good_lines:
				print(line)
			return
		prev_func = all_prev_func[len(all_prev_func) - 1]

		func = prev_func.split()[1]
		parts = fm.split()
		(before,dot,filetype) = parts[3].partition(".")
		(nothing,maptext,num) = before.partition("FieldMap")
		if int(num)%2 == 1:
			postfix = "Mag"
		else:
			postfix = "Phase"
		good_fieldmaps.append("{0} {1} {2} FieldMap_{3}_{4}.{5}".format(parts[0],parts[1],parts[2],
			func,postfix,parts[2]))
	#now we have fieldmaps for BaleenHP, but not LP, so just copy the index
	for i,map in enumerate(good_fieldmaps[:]):
		if "BaleenHP" in map.split()[3]:
			fname = map.split()[3].replace("BaleenHP","BaleenLP")
			good_fieldmaps.append("%s FieldMap %s %s" % (map.split()[0],map.split()[2],fname))
	not_fieldmaps = [v for v in good_lines if v.split()[1] != "FieldMap"]
	not_fieldmaps.extend(good_fieldmaps)
	good_lines = not_fieldmaps
	good_lines.sort(key=lambda x:int(x.split()[0]))
	pipeline.write_file_with_list(data["cfg_path"],"\n".join(good_lines))


####GENERAL FUNCTIONAL####
	
def studies_to_setup(data,type):
	"""
	returns what studies should be set up. 
	This list depends on the type of processing to be setup.
	"""
	if data["single_study"]:
		return data["single_study"]
	if type in ["fs_analysis", "fs_group", "fs_glm", "fs_image", "fs_group_image"]:
		return cond_num.keys()
	if not os.path.exists(info_path(data)):
		print("No info.txt for {0}, rerun --cfg2info".format(data["subject"]))
		raise UserError("Broke in studies_to_setup")
	info = pipeline.load_data(info_path(data),data["verbose"])
	if type in ["spm_stats", 'spm_stats_outliers', 'spm_art']:
		studies = [k for k,v in info.iteritems() if os.path.exists(
			touch_file_path(data,k,"preproc","run"))]
	elif type in ["fs_preproc", "spm_preproc", "fs_stats"]:
		studies = [k for k,v in info.iteritems() if v["was_run"] and v['complete']]
	return studies


def info_path(data):
	"""
	just a little method to encapsulate this path
	"""
	return pj(data["mri_dir"],"info.txt")


def cfg2info(data):
	"""
	converts the cfg.txt to a pickled data file. This data file is used in the rest of the stream 
	and as such, is very important.
	The pickled data is a dictionary with keys of the studies that were run and values that are 
	dictionaries themselves.  These dictionaries hold keys like "MPRAGEXXX","FieldMapPhaseXXX",etc. 
	and are used as the keyword mapping when templating SPM batches.
	"""
	cfg_fname = cfg_path(data)
	if not os.path.exists(cfg_fname):
		print("ALERT: cannot find cfg file for {0}".format(data["subject"]))
		raise UserError
	cfg = readTable(cfg_fname)
	info = dict({})
	prepend_zero = lambda x: "00"+x if int(x)<10 else "0"+x
	for study in possible_studies:
		study_dict = dict({})
		runs = [x for x in cfg if x[1] == study]
		if len(runs) > 0:
			study_dict["was_run"] = True
			for run in runs:
				run_num = run[3].split(".")[0].split(study)[1]
				study_dict["Run"+run_num+"XXX"] = prepend_zero(run[0])
			if not (study == "AXCPT" and (data["stype"] in ['ac', 'sc'])):
				if len(runs) == possible_studies[study]:
					study_dict["complete"] = True
				else:
					study_dict["complete"] = False
			else:
				if len(runs) == 3:
					study_dict["complete"] = True
				else:
					study_dict["complete"] = False
			#find the MPRAGE
			mprage_runs = [x for x in cfg if x[1] == "MPRAGE"]
			study_dict["MPRAGE_runs"] = [prepend_zero(x[0]) for x in mprage_runs]
			#find the Phase and Mag XXX
			for type in ["Phase","Mag"]:
				type_run = [x for x in cfg if study in x[3] and type in x[3]]
				if not len(type_run) == 1:
					print("ALERT: Couldn't find the FieldMap_{0}_{1}.nii in cfg for {2}".format(study,
						type,data["subject"]))
				else:	
					study_dict["FieldMap"+type+"XXX"] = prepend_zero(type_run[0][0])
			info[study] = study_dict
		else:
			study_dict["was_run"] = False
	#write out info.txt as pickled dict
	pipeline.save_data(info,info_path(data),data["verbose"])
	if data["verbose"]:
		pprint("Info:")
		pprint(info)
		

def makeMC(data):
	codes = {"ATLLoc":{
				"1":("Sentences",False),
				"2":("Wordlist",False),
				"3":("Nonwords",False),
				"duration": "4",
				"on_sub":0.4},
			"BaleenLP":{
				"1":("RelatedTarget",False),
				"2":("UnrelatedTarget",False),
				"4":("UnrelatedFiller",False),
				"5":("AnimalTarget",True),
				"11":("AnimalPrime",True),
				"duration":"2",
				"on_sub":1},
			"BaleenHP":{
				"6":("RelatedTarget",False),
				"7":("UnrelatedTarget",False),
				"8":("RelatedFiller",False),
				"9":("UnrelatedFiller",False),
				"10":("AnimalTarget",True),
				"12":("AnimalPrime",True),
				"duration": "2",
				"on_sub":1},
			"MaskedMM":{
				"1":("DirectlyRelated",False),
				"2":("IndirectlyRelated",False),
				"3":("Unrelated",False),
				"4":("InsectPrime",True),
				"5":("InsectTarget",True),
				"duration": "2",
				"on_sub":1},
			"AXCPT":{
				"1":("AY",False),
				"2":("BX",False),
				"3":("BY",False),
				"4":("AX",True),
				"duration": "2",
				"on_sub": 0}
			}
	#first, just glob all the vtsd_logs from mri_vtsd/data["subject"]
	vtsd_logs = glob(pj(mri_vtsd,data["subject"],"*.vtsd_log"))
	if len(vtsd_logs) == 0:
		raise UserError("Hey dummy, no vtsd logs. Try again after copying")
	info = pipeline.load_data(info_path(data),data["verbose"])
	for vtsd_log in vtsd_logs:
		if data["verbose"]:
			print("Parsing {0}".format(vtsd_log))
		vtsd_data = readTable(vtsd_log)
		pass
		#study scanner subject list run onset # stims..... code item iti response_time
		code_ind = len(vtsd_data[0]) - 1 - 3
		response_ind = len(vtsd_data[0]) - 1
		iti_ind = len(vtsd_data[0]) - 1 - 1
		onset_ind = 5
		run = vtsd_data[0][4]
		study = vtsd_data[0][0]
		if study == "BaleenMM":
			if int(run) < 5:
				study_key = "BaleenLP"
			else:
				study_key = "BaleenHP"
				run = str(int(run) - 4)
		else:
			study_key = study
		if data["stype"] in ['ac', 'sc']:
			if study == "ATLLoc_SC":
				study_key = "ATLLoc"
			elif study == "MaskedMM_SC":
				study_key = "MaskedMM"
			elif study == "AXCPT_SC":
				study_key = "AXCPT"
		sub = codes[study_key]["on_sub"]
		uncodes = sorted(set([x[code_ind] for x in vtsd_data]),cmp=lambda x,y: cmp(int(x),int(y)))
		misses = []
		for code in uncodes:
			#get raw data
			good_onsets = []
			for trial in [x for x in vtsd_data if x[code_ind] == code]:
				task = codes[study_key][code][1]
				response =  trial[response_ind] != "0.000"
				if (task and response) or (not task and not response):
					good_onsets.append(trial[onset_ind])
				if (not task and response) or (task and not response):
					misses.append(trial[onset_ind])
			#xfm to floats, subtract, round,int,back to string
			xfm_onsets = map(str,[int(round(float(x) - sub)) for x in good_onsets])
			if len(xfm_onsets) == 0:
				print("WARNING: %s:%s:Run %s empty onsets for %s Please fix manually" % (data["subject"], study_key, run, codes[study_key][code][0]))
			new_dict = {"Run"+run+codes[study_key][code][0]+"Onsets": " ".join(xfm_onsets),
				"Run"+run+codes[study_key][code][0]+"Durations": " ".join(codes[study_key]["duration"] * len(xfm_onsets))}
			if study_key in info:
				info[study_key].update(new_dict)
		if study_key != "ATLLoc":
			#do misses
			if len(misses) > 0:
				xfm_misses = [str(int(round(float(x) - sub))) for x in misses]
				miss_dur = [codes[study_key]["duration"]] * len(xfm_misses)
				print("{0}:{1}:Run{2}:{3} miss(es)".format(data["subject"],study_key,run,len(xfm_misses)))
			else:
				trials_with_iti = [x for x in vtsd_data if x[iti_ind] == "2.000"]
	
				xfm_misses = [str(int(round(float(trials_with_iti[0][onset_ind]))+float(codes[study_key]["duration"])))]
				miss_dur = ["2"]
			if study_key in info:
				info[study_key].update({"Run"+run+"MissesOnsets": " ".join(xfm_misses),
							"Run"+run+"MissesDurations": " ".join(miss_dur)})
	pipeline.save_data(info,info_path(data),data["verbose"])


def make_file_exec(path):
	"""
	just makes the file given by path executable by the system
	"""
	os.chmod(path,stat.S_IRUSR|stat.S_IWUSR|stat.S_IXUSR|stat.S_IRGRP|stat.S_IWGRP|stat.S_IXGRP|stat.S_IROTH )
	

def touch_file_path(data,study,type,when):
	"""
	yet another little method to capture this logic in one place
	"""
	return pj(data["mri_dir"],study,"jobs",study.lower()+"_"+type+"_"+when)

#####SPM#####

def spm_setup(data,type):
	"""
	Any 1st-level spm mri processing goes through this function.
	"""
	#does this subject exist?
	if not os.path.exists(data["mri_dir"]):
		print("Hey dummy, no MRI dir for {0}".format(data["subject"]))
		raise UserError("Broke in spm_setup")
	for study in studies_to_setup(data, "spm_"+type):
		job_dir = pj(data["mri_dir"],study,"jobs")
		if not os.path.exists(job_dir):
			os.mkdir(job_dir)
		if "stats" in type:
			stat_dir = pj(data["mri_dir"],study,type)
			if not os.path.exists(stat_dir):
					os.mkdir(stat_dir)
			for smooth in ["6mm","8mm"]:
				smooth_dir = pj(stat_dir,smooth)
				if not os.path.exists(smooth_dir):
					os.mkdir(smooth_dir)
		spm_write_mlab_script(data,study,type)
		spm_write_script(data,study,type)


def spm_script_path(data,study,type):
	"""
	This function just encapsulates the little bit of logic needed to name a shell script.
	"""
	script_dir = pj(data["mri_dir"],"scripts")
	if not os.path.exists(script_dir):
		os.mkdir(script_dir)
	return pj(script_dir,"_".join([study,"spm"+"-"+type+".sh"]))


def spm_write_script(data,study,type):
	"""
	type (string): "preproc","stats","outliers"
	Writes out the shell script with matlab calls if we're preprocessing or stats processing or with
	recon-all functions if we're reconstructing.
	If --parallel was used, then & will be appended to the matlab lines. With the new parallelization
	scheme I've got with joblib, this could be dangerous, use at your own risk.
	"""
	shell_script = spm_script_path(data,study,type)
	commands = []
	commands.append("#!/bin/sh")
	mlab_cmd = "nohup matlab7.11 -nosplash -nodesktop"
	if "stats" in type:
		commands.append("unset DISPLAY")
		mlab_cmd += " -nodisplay "
	commands.append("%s < %s > %s " % (mlab_cmd, spm_jobfile(data,study,type), spm_logfile(data,study,type)))	
	pipeline.write_file_with_list(shell_script,"\n".join(commands))
	make_file_exec(shell_script)


def spm_run_art(data):
	"""
	This function writes out the ART-specific session file, then a short matlab script, then
	runs matlab and passes the script into the matlab process to run. We use ART defaults.
	"""
	studies = studies_to_setup(data,"spm_art")
	sessions = []
	for study in studies:
		#glob the images
		images = glob(pj(data["mri_dir"],study,"*",study+"*.nii"))
		motions = glob(pj(data["mri_dir"],study,"*","rp_"+study+"*.txt"))
		if len(images) != len(motions):
			raise UserError("spm_run_art: Not the same amount of images and motion files")
		sess_contents = []
		sess_contents.append("sessions: {0}".format(len(images)))
		sess_contents.append("global_mean: 1")
		sess_contents.append("drop_flag: 0")
		sess_contents.append("motion_file_type: 0")
		sess_contents.append("end")
		for i,(im,mo) in enumerate(zip(images,motions)):
			sess_contents.append("session {0} image {1}".format(str(i+1),im))
			sess_contents.append("session {0} motion {1}".format(str(i+1),mo))
		sess_contents.append("end")
		sess_path = pj(data["mri_dir"],study,"art_sess.txt")
		sessions.append(sess_path)
		pipeline.write_file_with_list(sess_path,"\n".join(sess_contents))
	art_m = []
	for session in sessions:
		art_m.append("art('sess_file','{0}');".format(session))
		study = session.split(os.sep)[-2]
		search_path = pj(os.sep.join(session.split(os.sep)[:-1]),"0*")
		runs = glob(search_path)
		runs.sort()
		for run_path in runs:
			art_m.append("art2tpef('%s','%s');" % (study,run_path))
	art_m.append("exit;")
	art_path = pj(data["mri_dir"],"spm_run_art.m")

	pipeline.write_file_with_list(art_path,"\n".join(art_m))
	my_args = ["matlab7.11", "-nodisplay","-nosplash","-nodesktop", "<", art_path]
	proc = pipeline.run_process(my_args,output=sys.stdout,error=sys.stderr)
	proc.communicate()
	print("Finished ART for {0}".format(data["subject"]))

		
def spm_write_mlab_script(data,study,type):
	"""
	This basically just wraps f2f_replace and uses the dictionary from spm_matlab_dict.
	"""
	if "stats_outliers" in type:
		good_type = "stats"
	else:
		good_type = type
	batch_dict = spm_matlab_dict(data,study,type)
	if data["unwarp"]:
		batch_i = pj(batch_dir,data["stype"],study.lower()+"_"+good_type+"_unwarp.m")			
	else:
		batch_i = pj(batch_dir,data["stype"],study.lower()+"_"+good_type+".m")
	batch_o = spm_jobfile(data,study,type)
	pipeline.f2f_replace(batch_i,batch_o,batch_dict,data["verbose"])


def spm_jobfile(data,study,type):
	return pj(data["mri_dir"],study,"jobs",study+"_"+type+".m")


def spm_logfile(data,study,type):
	return pj(data["mri_dir"],study,"jobs",study+"_"+type+".log")


def spm_matlab_dict(data,study,type):
	"""
	Adds to the dictionary returned by spm_funcdir_info.  Any keywords you insert to the SPM batches
	should be added here.
	"""
	replace_dict = spm_funcdir_info(data,study,type)
	replace_dict["study"] = study.lower()
	replace_dict["type"] = type
	if "stats" in type:
		replace_dict["SixSPM"] = pj(data["mri_dir"],study,type,"6mm","SPM.mat")
		replace_dict["EightSPM"] = pj(data["mri_dir"],study,type,"8mm","SPM.mat")
	replace_dict["run_file"] = touch_file_path(data,study,type,"run")
	replace_dict["start_file"] = touch_file_path(data,study,type,"start")
	replace_dict["email_success"] = "{0} {1} {2} succeeded".format(data["subject"],study,
		type)
	replace_dict["email_fail"] =  "{0} {1} {2} failed".format(data["subject"],study,
		type)
	if data["local"]:
		replace_dict["location"] = "home/scratch"
	else:
		replace_dict["location"] = "cluster/kuperberg/SemPrMM/MRI"
	return replace_dict


def spm_funcdir_info(data,study,type):
	"""spm_funcdir_info:
	looks for info.txt and uses the dictionary stored that for everything.
	The MPRAGEXXX is filled out here"""
	info = pipeline.load_data(info_path(data),data["verbose"])
	study_dict = info[study];
	study_dict["subject"] = data["subject"]
	study_dict["stat_folder"] = type
	if "stats" in type:
		# we need to insert MRs into study_dict
		run_keys = [k for k,v in study_dict.iteritems() if "Run" in k]
		for run_key in run_keys:
			mr_key = run_key.split("XXX")[0]
			run_num = mr_key.split("Run")[1]
			mr_key += "MR"
			if "outliers" in type:
				study_dict[mr_key] = "art_regression_outliers_and_movement_{0}{1}.mat".format(
					study,run_num)
			else:
				study_dict[mr_key] = "rp_{0}{1}.txt".format(study,run_num)
	elif type == "preproc":
		#find mprage xxx (hardcoded to use the first)
		study_dict["MPRAGEXXX"] = study_dict["MPRAGE_runs"][0]
	return study_dict	


def spm_run(data,type):
	"""
	Looks for the write script to run based on type and executes it. This method blocks which is ok
	because this method is starting in parallel automatically for many subjects. This will only 
	block if --launchpad is used.
	"""
	scripts_to_run = []
	studies = []
	for study in studies_to_setup(data,"spm_"+type):
		script_to_run = spm_script_path(data,study,type)
		if not os.path.exists(script_to_run):
			raise UserError("spm_run: no script found for %s" % study)
		if data["group_parallel"]:
			pipeline.run_script(study,"spm-%s"%type, data['subject'],
							script_to_run,spm_logfile(data,study,type))
		else:
			scripts_to_run.append(script_to_run)
			studies.append(study)
	if use_joblib and data["subject_parallel"]:
		if data["joblib"]:
			Parallel(n_jobs=data["joblib"],verbose=data["verbose"])(delayed(pipeline.run_script)(study,"spm-%s"%type,data['subject'],script_to_run,spm_logfile(data,study,type)) for (study,script_to_run) in zip(studies,scripts_to_run))


def spm_write_coreg_mprage(data):
	commands = []
	commands.append("#!/bin/sh")
	for study in ['ATLLoc']:
		mlab_cmd = "nohup matlab7.11 -nosplash -nodesktop "
		study_info = pipeline.load_data(info_path(data),data["verbose"])[study]
		new_dict = {"par":study,"subject":data["subject"],"MPRAGEXXX":study_info["MPRAGE_runs"][0]}
		incoming = pj(mri_scripts,"spm_batches","coreg_write.m")
		outgoing = pj(data["mri_dir"],"scripts","%s_%s.m" % (study,"cowrite"))
		pipeline.f2f_replace(incoming, outgoing, new_dict,data["verbose"])
		lf = pj(data["mri_dir"],"scripts","%s_cowrite.log" % (study))
		mlab_cmd += " < %s > %s " % (outgoing,lf)
		commands.append(mlab_cmd)
	script_name = spm_script_path(data,'ATLLoc', "cowrite")
	pipeline.write_file_with_list(script_name,"\n".join(commands))
	make_file_exec(script_name)
	pipeline.run_process(["nohup",script_name],output=sys.stdout).wait()


#####RECONSTRUCTION####

def recon_script_path(data):
	script_dir = pj(data["mri_dir"],"scripts")
	if not os.path.exists(script_dir):
		os.mkdir(script_dir)
	return pj(script_dir,"recon"+"_"+data["subject"]+".sh")


def recon_write_script(data):
	script_path = recon_script_path(data)
	commands = []
	commands.append("#!/bin/sh")
	recon_cmd = "recon-all -all -s " + data["subject"]
	#find all mprages 
	mprages = glob(pj(data["mri_dir"],"MPRAGE","*","MPRAGE*.nii"))
	for mprage in mprages:
		recon_cmd +=  " -i " + mprage
	commands.append(recon_cmd + " -mail {1} >& {0}".format(recon_logfile(data),getpass.getuser()))
	for hemi in ('lh', 'rh'):
		annot = pj(os.environ["SUBJECTS_DIR"], data['subject'], 'label', '%s.aparc.a2009.annot' % hemi)
		base = pj(os.environ["SUBJECTS_DIR"], data['subject'], 'label', "aparc2009-%s" % hemi)
		commands.append(' '.join(["mri_annotation2label",
								'--subject %s' % data['subject'],
								'--hemi %s' % hemi,
								'--annotation %s' % annot,
								'--labelbase %s' % base]))
	pipeline.write_file_with_list(script_path,"\n".join(commands))
	make_file_exec(script_path)
	

def recon_run(data):
	script_to_run = recon_script_path(data)
	if not os.path.exists(script_to_run):
		raise UserError("recon_run: no recon script made")
	my_args = ["nohup", script_to_run]
	print("\nStarting %s" % (script_to_run))
	return_val = pipeline.run_process(my_args).wait()


def recon_logfile(data):
	return pj(data["mri_dir"],"scripts","recon_"+data["subject"]+".log")


#####FSFAST#####

def write_par(data,study,info,run):
	cond_onsets = [key for key in info.keys() if "Run"+run in key and "XXX" not in key and "Onsets" in key]
	full_par = []
	for cond_onset in cond_onsets:
		cond_name = cond_onset.partition("Run"+run)[2].partition("Onsets")[0]
		onsets = info[cond_onset]
		duration = info["Run"+run+cond_name+"Durations"].split()[0] #assume all are same
		for onset in onsets.split():
# 			if study == "BaleenMM" and int(run) > 4 and cond_name == "Misses":
# 				code_num = str(int(cond_num[study][cond_name]) + 1)
# 			else:
			code_num = cond_num[study][cond_name]
			full_par.append([onset,code_num,duration,"1.0",cond_name])
	full_par.sort(key=lambda x:int(x[0]))
	par_fname = pj(data["mri_dir"],study,info["Run"+run+"XXX"],study.lower()+".par")
	if not data["no_par"]:
		pipeline.write_file_with_list(par_fname,"\n".join(["\t".join(x) for x in full_par]), True)
	

def fs_setup(data,type,subjects=None):
	"""
	All 1st level FSFAST processing goes through this function
	Try to keep variables inline with FSFAST lingo
	"""
	fir_wind = dict({"MaskedMM":(6,18),
					"ATLLoc":(6,22),
					"BaleenHP":(6,18),
					"BaleenLP":(6,18),					
					"AXCPT":(4,16)})
	for study in studies_to_setup(data,"fs_"+type):
		if data["verbose"]:
			print("fs_setup:{0}:{1}:{2}".format(type,data["subject"],study))
		commands = []
		commands.append("#!/bin/sh")
		
		if type == "preproc" or type == "stats":
			fsd = pj(data["mri_dir"],study)
			sessid = data["mri_dir"]
		
		if type == "preproc":
			lf = fs_logfile(data,type,study)
			preproc_cmd = " ".join(["preproc-sess",
									"-d /cluster/kuperberg/SemPrMM/MRI/functionals/",
									"-s %s" % data["subject"],
									"-fsd %s" % study, 
									"-per-run",
									"-fwhm 8",
									"-surface fsaverage lhrh",
									"-sliceorder siemens ",
									"-mni305",
									"> %s %s" % (lf,data["parallel"])])
			commands.append(preproc_cmd)
			commands.append("exit $?")
			script_path = fs_script_path(data,type,study)
			pipeline.write_file_with_list(script_path,"\n".join(commands))
			make_file_exec(script_path)
		
		elif type == "analysis":
			commands.append("cd %s" % func_dir)
			for space in ["lh","rh","mni305"]:
				for shape in ["spm","fir"]:
					#config shape_opt
					if shape == "spm":
						shape_opt = "-spmhrf 0 -refeventdur 2"
					else:
						shape_opt = "-fir %d %d -TER 2" % (fir_wind[study][0],fir_wind[study][1]+fir_wind[study][0])
					nconds = len(cond_num[study].keys())
					preproc_opt = "-fwhm 8 -stc siemens "
					if space != "mni305":
						preproc_opt += "-surface fsaverage %s" % space
					else:
						preproc_opt += "-mni305 2"
					aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
					cmd = " ".join(["mkanalysis-sess",
									"-analysis %s" % aname,
									"-fsd %s" % study,
									"-p %s.par" % study.lower(),
									"%s" % shape_opt,
									"-tpexclude %s" % study.lower()+".tpef",
									"-event-related",
									"-TR 2",
									preproc_opt,
									"-nconditions %d" % nconds,
									"-mcextreg",
									"-force"])
					commands.append(cmd)
					#mkcontrast-sess
					for contrast,(a,c) in contrasts[study].iteritems():
						#print("%s --> %s,%s" % (contrast,a,c))
						pos_con = " ".join(["-a "+sa for sa in a])
						neg_con = " ".join(["-c "+sc for sc in c])
						con_cmd = " ".join(["mkcontrast-sess",
									"-analysis %s" % aname,
									"-contrast %s" % contrast,
									pos_con,
									neg_con])
						commands.append(con_cmd)
			script_path = fs_script_path(data,type,study)
			pipeline.write_file_with_list(script_path,"\n".join(commands))
			make_file_exec(script_path)
		
		elif type == "stats":
			sname = [data["subject"]]
			sname_path = pj(sessid,"subjectname")
			pipeline.write_file_with_list(sname_path,"\n".join(sname),True)
			#write .par
			study_dict = pipeline.load_data(info_path(data))[study]
			#amount of runs 
			runsXXX = [key for key in study_dict.keys() if ("XXX" in key and "Run" in key)]
			for runXXX in runsXXX:
				run = runXXX.partition("Run")[2].partition("XXX")[0]
				write_par(data,study,study_dict,run)
				#*.nii -> f.nii
				real_path = pj(fsd,study_dict[runXXX],study+run+".nii")
				sym_path = pj(fsd,study_dict[runXXX],"f.nii")
				if not os.path.exists(sym_path):
					os.symlink(real_path,sym_path)
			commands.append("cd %s" % func_dir)
			lf = fs_logfile(data,type,study)
			commands.append("rm %s" % lf)
			commands.append("let z=0")
			for space in ["lh","rh","mni305"]:
				for shape in ["spm","fir"]:
					aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
					srchdir = func_dir
					sessid = data["subject"]
					logfile = pj(data["mri_dir"],"scripts",aname+".log")
					cmd = " ".join(["selxavg3-sess",
									"-analysis %s" % aname,
									"-s %s" % sessid,
									"-d %s" % srchdir,
									"-log %s" % logfile,
									">> %s" % lf])
					commands.append(cmd)
					commands.append("let z=z+$?")
			commands.append("exit $z")
			script_path = fs_script_path(data,type,study)
			pipeline.write_file_with_list(script_path,"\n".join(commands))
			make_file_exec(script_path)

		elif type == "group":		
			fsgd = []
			fsgd.append("GroupDescriptorFile 1")
			fsgd.append("Title SemPrMM-%s-Group" % data["stype"])
			fsgd.append("Class %s plus blue" % data["stype"])
			fsgd.append("Variables")
			#take subjects from fuctionals/data["stype"].study.sessid
			sessid = pj(func_dir,"%s.%s.sessid" % (data["stype"],study))
			subjects = get_subjects(sessid)
			if not subjects:
				raise UserError("Couldn't read %s" % sessid)
			for sub in subjects:
				fsgd.append("Input %s %s" % (sub,data["stype"]))
			fsgd.append("\n")
			fsgd_path = pj(func_dir,"%s.%s.fsgd" % (data["stype"],study))
			pipeline.write_file_with_list(fsgd_path,"\n".join(fsgd),True)
			for space in ["lh","rh","mni305"]:
				for shape in ["fir","spm"]:
					commands = []
					commands.append("#!/bin/sh")
					commands.append("cd %s" % func_dir)
					aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
					lf = pj(func_dir,"fsfast_scripts","%s-isxconcat.%s.log" % (study,aname))
					isx_cmd = " ".join(["isxconcat-sess",
										"-a %s" % aname,
										"-d %s" % func_dir,
										"-all-contrasts",
										"-sf %s" % sessid,
										"-fsgd %s" % fsgd_path,
										"-o %s.group-analysis/%s/" % (data["stype"], study),
										">& %s" % lf])
					commands.append(isx_cmd)
					isx_cmd_path = pj(func_dir, "fsfast_scripts","%s.%s-isxconcat.%s.sh" % (data['stype'], study,aname))
					if data["launchpad"]:
						q = True
						print("""pbsubmit -c "%s" -l nodes=1:ppn=1,vmem=16gb -mail sburns@nmr.mgh.harvard.edu """ % isx_cmd_path)
					else:
						q = False
					pipeline.write_file_with_list(isx_cmd_path,"\n".join(commands),q)
					make_file_exec(isx_cmd_path)
			
		elif type == "glm":
			for con in contrasts[study].keys():
				for space in ["lh","rh","mni305"]:
					for shape in ["fir","spm"]:
						if space != "mni305":
							space_opt = "--surf fsaverage %s" % space
						else:
							space_opt = ""
						aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
						group_dir = pj(func_dir,"%s.group-analysis/%s" % (data["stype"], study))
						adir = pj(group_dir,aname)
						con_dir = pj(adir,con)
						commands = []
						commands.append("#!/bin/sh")
						commands.append("cd %s" % con_dir)
						if shape == "fir":
							#build XXX
							conc = lambda x:"00"+str(x) if x < 10 else "0"+str(x)
							XXX = [conc((x+fir_wind[study][0])/2) for x in range(-1*fir_wind[study][0],fir_wind[study][1],2)]
							for cesXXX in XXX:
								if data["wls"]:
									wls_opt = "--wls cesvar.%s.nii.gz" % cesXXX
									glmdir = "glm.%s.wls" % cesXXX
								else:
									wls_opt = ""
									glmdir = "glm.%s" % cesXXX
								commands.append(" ".join(["mri_glmfit",
														"--osgm",
														"--glmdir %s" % glmdir,
														"--y ces.%s.nii.gz" % cesXXX,
														wls_opt,
														"--mask %s" % pj(adir,"mask.nii.gz"),
														space_opt]))
						else:
							if data["wls"]:
								wls_opt = "--wls cesvar.nii.gz"
								glmdir = "glm.wls"
							else:
								wls_opt = ""
								glmdir = "glm"
							commands.append(" ".join(["mri_glmfit",
													"--osgm",
													"--glmdir %s" % glmdir,
													"--y ces.nii.gz",
													wls_opt,
													"--mask %s" % pj(adir,"mask.nii.gz"),
													space_opt]))
						if data["wls"]:
							wls_opt = "-wls"
						else:
							wls_opt =""
						glm_path = pj(func_dir,"fsfast_scripts","%s.%s-glmfit%s.%s.%s.sh" % (data['stype'], study, wls_opt, aname, con))
						if data["launchpad"]:
							pipeline.write_file_with_list(glm_path, "\n".join(commands),True)
							print("""pbsubmit -c "%s" -l nodes=1:ppn=1,vmem=16gb -mail sburns@nmr.mgh.harvard.edu """ % glm_path)
						else:
							pipeline.write_file_with_list(glm_path, "\n".join(commands))
						make_file_exec(glm_path)
				
		elif type == "image":#this is subject-specific
			for con in ["Unrelated-Related"]:#contrasts[study].keys()
				for space in ["lh","rh"]:
					for shape in ["spm"]:
						aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
						con_dir = pj(data["mri_dir"],study,aname,con)
						replace = {"con_dir":con_dir,"hemil":space,"overlay":"sig.nii.gz","subject":"fsaverage","thresh":"0.1"}
						iscript = pj(mri_scripts,"surf_analysis","make_fs_images.sh")
						oscript = pj(con_dir,"make_images.sh")
						pipeline.f2f_replace(iscript,oscript,replace,data["verbose"])
						make_file_exec(oscript)
						commands.append(oscript)
			script_path = pj(data["mri_dir"],"scripts","%s-fs-images.sh" % study)
			pipeline.write_file_with_list(script_path,"\n".join(commands))
			make_file_exec(script_path)
			if not data['dry']:
				os.system("""xvfb-run -s "-screen 0 2048x2048x24" %s""" % script_path)	

		elif type == "group_image":
			for con in contrasts[study].keys():
				for space in ["lh","rh"]:
					for shape in ["spm"]: #only spm for now
						aname = "%s.%s.%s.sm8.%s" % (data["stype"],study,shape,space)
						group_dir = pj(func_dir,"%s.group-analysis" % data["stype"])
						adir = pj(group_dir,aname)
						if data["wls"]:
							glm_dir = "glm.wls"
						else:
							glm_dir = "glm"
						con_dir= pj(adir,con,glm_dir,"osgm")						
						replace = {"con_dir":con_dir,"hemil":space,"overlay":"sig.mgh","subject":"fsaverage","thresh":"1.3"}
						iscript = pj(mri_scripts,"surf_analysis","make_fs_images.sh")
						oscript = pj(con_dir,"make_images.sh")
						pipeline.f2f_replace(iscript,oscript,replace,data["verbose"])
						make_file_exec(oscript)
						commands.append(oscript)
			if data["wls"]:
				image_path = pj(func_dir,"fsfast_scripts","%s.%s-image-wls.sh" % (data['stype'], study))
			else:
				image_path = pj(func_dir,"fsfast_scripts","%s-image.sh" % study)
			pipeline.write_file_with_list(image_path, "\n".join(commands))
			make_file_exec(image_path)


def fs_run(data,type):
	scripts_to_run = []
	studies = []
	for study in studies_to_setup(data,"fs_"+type):
		script_to_run = fs_script_path(data,type,study)
		if not os.path.exists(script_to_run):
			raise UserError("Hey dummy, you need to run --setup_fs_preproc")
		if data["group_parallel"]:
			pipeline.run_script(study,"fs-%s"%type,data['subject'],
				script_to_run,fs_logfile(data,type,study))
		else:
			scripts_to_run.append(script_to_run)
			studies.append(study)
	if use_joblib and data["subject_parallel"]:
		if data["joblib"]:
			Parallel(n_jobs=data["joblib"],verbose=data["verbose"])(delayed(pipeline.run_script)(study,"fs-%s"%type,data['subject'],script_to_run,fs_logfile(data,type,study)) for (study,script_to_run) in zip(studies,scripts_to_run))
			

def fs_script_dir(data,type=None):
	if type in ["analysis", "glm", "group", "group_image"]:
		return pj(func_dir,"fsfast_scripts")
	else:
		return pj(data["mri_dir"],"scripts")


def fs_logfile(data,type,study):
	return pj(fs_script_dir(data),"{0}_fs-{1}.log".format(study.lower(),type))


def fs_script_path(data,type,study):
	script_dir = fs_script_dir(data,type)
	if not os.path.exists(script_dir):
		os.mkdir(script_dir)
	return pj(script_dir,".".join([data['stype'],study,"fs-"+type+".sh"]))


####MEG#####
def new_preProc(data):
	"""
	New pure-python pre-processing for MEG.
	"""
	import meg_py
	print("Starting meg_py:preProc")
	meg_py.preProc(data["subject"],data["meg_dir"])


def meg_script(data,type,extra=None):
	"""
	Run a particular meg script as given in type.
	data: the regular dict
	type: name of meg script (e.g. "preProc1","preAnat1",etc)
	extra: list of extra arguments (e.g. for "preProc2", extra would be [{preBlinkTime},
	{postBlinkTime}])
	"""
	script_path = pj(meg_scripts,type+".sh")
	if not os.path.exists(script_path):
		raise UserError("meg_script: can not locate {0}".format(type))
	my_args = [script_path,data["subject"]]
	if type == "preProc":
		bad_chan_path = pj(data["meg_dir"],"%s_bad_chan.txt" % data["subject"])
		if not os.path.isfile(bad_chan_path):
			raise UserError("%s wasn't found, make it and try again" % bad_chan_path)
		fif = glob(pj(data["meg_dir"],"*_raw.fif"))
		#filter our blink and emptyroom
		fif = [x for x in fif if x.find("Blink") == -1 and x.find("emptyroom") == -1]
		N_fif = len(fif)
		if data["verbose"]:
			print("Fifs:\n{0}".format("\n".join(fif)))
		icamat = glob(pj(data["meg_dir"],"*_raw_ica.mat"))
		N_icamat = len(icamat)
		if data["verbose"]:
			print("ICA mat:\n{0}".format("\n".join(icamat)))
		blinks = glob(pj(data["meg_dir"],"*.blinks"))
		N_blinks = len(blinks)
		if data["verbose"]:
			print("Blinks:\n{0}".format("\n".join(blinks)))
		if (N_fif == 0):
			raise UserError("No fif files found for this subject")
		if not (N_fif == N_icamat == N_blinks):
			raise UserError("Unequal amount of fif,ica.mat,and blink files.\nTry Again")
		# DEFAULT EYE BLINK ARGUMENTS FOR PREPROC1
		
		extra = ["-0.1","0.3"]
	if type == "preAnat":
		setup_bem(data)
		#check that flash was unpacked
		if os.path.exists(pj(data["mri_dir"],"MEFLASH")):
			extra = ["FLASH"]
		else:
			extra = ["WATER"]
	if extra:
		my_args.extend(extra)
	if type == "makeInv":
		cor_search = pj(os.environ["SUBJECTS_DIR"],data["subject"],"mri","T1-neuromag","sets","COR-*.fif")
		cor_files = glob(cor_search)
		if len(cor_files) < 1:
			raise UserError("No good COR file found in SUBJECTS_DIR/%s/mri/T1-neuromag/sets/" % data["subject"])
	#start the process
	log_dir = pj(data["meg_dir"],"logs")
	if not os.path.isdir(log_dir):
		os.mkdir(log_dir)
	log_file = pj(log_dir,"%s_%s.log" % (data["subject"],type))
	print("Logging to {0}".format(log_file))
	f = open(log_file,"w")
	process = pipeline.run_process(my_args,output=f,error=f)
	if data["parallel"]:
		running_jobs.append(process)	
	else:
		process.communicate()[0]
	os.system("chgrp -R lingua %s" % data["meg_dir"])


def run_ica(data):
	"""
	just writes out the run_ica script for a subject and runs it.
	"""
	iscript = pj(meg_scripts,"generic_runica.m")
	oscript = pj(data["meg_dir"],data["subject"]+"_ica.m")
	pipeline.f2f_replace(iscript,oscript,dict({"subject": data["subject"]}),data["verbose"])
	log = pj(data["meg_dir"],"logs",data["subject"]+"_ica.log")
	if not os.path.isdir(pj(data["meg_dir"],"logs")):
		os.mkdir(pj(data["meg_dir"],"logs"))
	os.system("chgrp -R lingua %s" % data["meg_dir"])
	my_args = ["matlab7.11", "-nodisplay","-nosplash","-nodesktop", "<", oscript,
		">", log]
	try:
		process = pipeline.run_process(my_args,output=None)
		process.communicate()
	except:
		print("Unexpected error when running ICA")
		raise
	finally:
		os.system("chgrp -R lingua %s" % data["meg_dir"])


def setup_bem(data):
	"""
	This makes symbolic links to the MEFLASH_8e_1mm_iso_5deg dicom images. This is called for --preProc.
	"""
	print("Setup_BEM:{0}".format(data["subject"]))
	#must have env var set
	if os.getenv("SUBJECTS_DIR") is None:
		raise UserError("$SUBJECTS_DIR is not set")
	recon_dir = pj(os.getenv("SUBJECTS_DIR"),data["subject"])
	#if the recon hasn"t run yet quit
	if not os.path.exists(recon_dir):
		raise UserError("Reconstruction folders not setup. Start recon and try again later.")
	bem_dir = pj(recon_dir,"bem")
	if not os.path.exists(bem_dir):
		os.mkdir(pj(recon_dir,"bem"))
	flash_dcm_dir = pj(bem_dir,"flash_dcm")
	if not os.path.exists(flash_dcm_dir):	
		os.mkdir(flash_dcm_dir)
	flash_org_dir = pj(bem_dir,"flash_org")	
	if not os.path.exists(flash_org_dir):	
		os.mkdir(flash_org_dir)
	try:
		scanlog_path = scan_path(data)
		all_lines = pipeline.list_from_file(scanlog_path,data["verbose"])
		dcm = [line.split()[7] for line in all_lines if "MEFLASH_8e_1mm_iso_5deg" in line and " 8 " in line]
		if len(dcm) > 1:
			ProgrammerError("More than one MEFLASH5 with 8 frames...check scan.log")
		elif len(dcm) == 0:
			dcm = None;		
		else:
			dcm = dcm[0]
	except IOError:
		raise ProgrammerError("Could not open scan.log file")
	if dcm:
		(sub_dcm,dash,after) = dcm.rpartition("-")
		search_dir = pj(data["dicom_dir"],sub_dcm+"*.dcm")
		flash_dcms = glob(search_dir)
		flash_dcms.sort()
		for flash_dcm in flash_dcms:
			(path,slash,filename) = flash_dcm.rpartition("/")
			try:
				sympath = pj(flash_dcm_dir,filename)
				os.symlink(flash_dcm,sympath)
			except OSError:
				pass
	else:
		print("NO Flash DCM...")

####SECOND LEVEL#######

def second_level(data,type):
	"""
	All second level functions pass through here.
	"""
	prefix = pj(func_dir,"SecondLevelStats")
	study_contrasts = dict({"ATLLoc": [["Nonwords","0003"],["WordLists","0002"],["Sentences","0001"],
		["SentencesVWordLists","0004"],["SentencesVNonwords","0006"],["WordListsVNonwords","0008"]],
		"MaskedMM": [["Rel","0001"],["UnRel","0003"],["UnRelVRel","0007"]],
		"BaleenLP": [["Rel","0001"],["UnRel","0002"],["UnRelVRel","0007"]],
		"BaleenHP": [["Rel","0001"],["UnRel","0002"],["UnRelVRel","0008"],
		["UnRelFillvRelFill","0009"]],"AXCPT": [["AYvBY","0009"],["BXvBY","0011"]]})
	if data["date"]:
		date_dir = data["date"]
	else:
		date_dir = time.strftime("%Y%m%d")
	if type == "setup":
		second_setup(data,prefix,date_dir,study_contrasts)
	if type == "run":
		second_run(data,prefix,date_dir,study_contrasts)
	if type == "surf":
		second_surf(data,prefix,date_dir,study_contrasts)
	if type == "package":
		second_package(data,prefix,date_dir,study_contrasts)

		
def second_package(data,prefix,date,study_contrasts):
	"""
	This copies images and copy/replaces the HTML files to the date directory.
	"""
	print("Packaging second level surf analysis....\n")
	package_dir = pj(prefix,"surf_analysis_"+date)
	surf_dir = pj(mri_scripts,"surf_analysis")
	if not os.path.exists(package_dir):
		os.mkdir(package_dir)
	if data["single_study"]:
		studies = [data["single_study"]]
	else:
		studies = ["ATLLoc","BaleenLP","BaleenHP","MaskedMM","AXCPT"]
	#copy index.html
	shutil.copyfile(pj(surf_dir,"index.html"),
		pj(package_dir,"index.html"))
	for study in studies:
		date_dir = pj(prefix,data["stype"],study,date)
		#copy <study>.html
		shutil.copyfile(pj(surf_dir,study+".html"),
			pj(package_dir,study+".html"))
		#within package_dir, make study/
		study_dir = pj(package_dir,study)
		if not os.path.exists(study_dir):
			os.mkdir(study_dir)
		for [contrast,XXXX] in study_contrasts[study]:
			print("{0}:\t{1}...".format(study,contrast))
			#within study_dir, make con/
			con_dir = pj(date_dir,contrast)
			res_con_dir = pj(study_dir,contrast)
			if not os.path.exists(res_con_dir):
				os.mkdir(res_con_dir)
			#data_con_dir points to data contrast directory
			img_con_dir = pj(con_dir,"img")
			#within every data_con_dir is which holds all jpgs
			#we want to copy these jpgs to res_con_dir
			print("Copying images...")
			jpgs = glob(pj(img_con_dir,"*.jpg"))
			for jpg in jpgs:
				shutil.copy(jpg,res_con_dir)
			info_fname = pj(con_dir,"info.txt")
			info = pipeline.load_data(info_fname,data["verbose"])
			#now, make the <con>.html file
			replace_dict = dict({"N": str(info["N"]),"pvalue": str(info["pvalue"]),
				"contrast": info["contrast"],"study": study,"stype": info["stype"],
				"images": "\n".join(["<li>{0}</li>".format(x) for x in info["images"]]),
				"mask": info["mask"]})
			pipeline.f2f_replace(pj(surf_dir,"contrast.html"),
				pj(study_dir,contrast+".html"),replace_dict,data["verbose"])

			
def second_surf(data,prefix,date,study_contrasts):
	"""
	This copy/replaces the make_images.sh script and runs each one for each paradigm/contrast.
	"""
	from scipy import stats
	import shutil
	print("We're going surfing....\n")
	if data["single_study"]:
		studies = [data["single_study"]]
	else:
		studies = ["ATLLoc","BaleenLP","BaleenHP","MaskedMM","AXCPT"]
	for study in studies:
		date_dir = pj(prefix,data["stype"],study,date)
		for [contrast,XXXX] in study_contrasts[study]:
			print("\n{0}:\t{1}...".format(study,contrast))
			con_dir = pj(date_dir,contrast)
			#first, check that --setup_second has been run by looking for con_dir
			if not os.path.exists(con_dir):
				print("ERROR:--setup_second hasn't been run.")
				print("Do this and try again or pass in a specific date by --date=YYYYMMDD")
				break
			#next, check that SPM has been run and that spmT_0001.img exists
			t_img_exists = len(glob(pj(con_dir,"spmT_0001.img"))) == 1
			if not t_img_exists:
				print("ERROR:SPM hasn't been run on {0}:{1}".format(study,contrast))
				break
			#spmT_0001.img exists, let's proceed
			#look for the pickled data
			info_fname = pj(con_dir,"info.txt")
			info = pipeline.load_data(info_fname,data["verbose"])
			script_dict = dict({})
			if not "pvalue" in info:
				info["pvalue"] = data["pvalue"]
			if data["override_p"]:
				info["pvalue"] = data["pvalue"]
			#else, assume pvalue is already in info
			info["tvalue"] = stats.t.isf(info["pvalue"],info["N"])
			print("T-threshold at N={0} and p<{1} is {2}".format(info["N"],info["pvalue"],
				info["tvalue"]))
			script_dict["tvalue"] = str(info["tvalue"])
			script_dict["aparc"] = data["aparc"]
			script_dict["con_dir"] = con_dir
			new_script_path = pj(con_dir,"make_images.sh")
			pipeline.f2f_replace(pj(mri_scripts,"surf_analysis","make_images.sh"),
				new_script_path,script_dict,data["verbose"])
			make_file_exec(new_script_path)
			#copy lh_tiffs and rh_tiffs
			for surf_script in ["lh_tiff","rh_tiff"]:
				tiffs_path = pj(mri_scripts,"surf_analysis",surf_script)
				new_tiffs_path = pj(con_dir,surf_script)
				shutil.copyfile(tiffs_path,new_tiffs_path)
			pipeline.save_data(info,info_fname,data["verbose"])
			if not data["dry"]:
				# all ready to run make_images.sh
				try:
					process = pipeline.run_process([new_script_path],output=sys.stdout,
						error=sys.stderr)
					process.communicate()[0]
				except KeyboardInterrupt:
					sys.exit("Surf canceled by user...Goodbye")

			
def second_setup(data,prefix,date_dir,study_contrasts):
	"""
	This copy/replaces the generic_2nd_level.m script for each paradigm/contrast and writes out a 
	script to run each in matlab. This is the 2nd-level cousin to --spm_setup.
	"""
	mlab_cmd = "matlab7.11 -nodisplay -nosplash -nodesktop "
	shell_commands = []
	shell_commands.append("#!/bin/sh")
	shell_commands.append("unset DISPLAY")
	if data["single_study"]:
		studies = [data["single_study"]]
	else:
		studies = ["ATLLoc","BaleenLP","BaleenHP","MaskedMM","AXCPT"]
	for study in studies:
		if data["list_prefix"]:
			head, base = os.path.split(data['list_prefix'])
			list_path = pj(head, "%s_%s" % (base, study.lower()))
		else:
			list_path = pj(mri_scripts, "%s_mri_%s" % (data['stype'], study.lower()))
		if not os.path.isfile(list_path):
			raise ValueError("Can't find %s" % list_path)
		print("Getting subjects from %s" % list_path)
		_, tail = os.path.split(list_path)
		new_dir = pj(prefix,data['stype'],study,"_".join([date_dir, tail]))
		print("new dir is %s" % new_dir)
		#make the new dir
		if not os.path.exists(new_dir):
			os.mkdir(new_dir)
		job_dir = pj(new_dir,"jobs")
		if not os.path.exists(job_dir):
			os.mkdir(job_dir)
		print("{0}:\t{1} contrasts".format(study,len(study_contrasts[study])))
		for [contrast,XXXX] in study_contrasts[study]:
			replace_dict = dict()
			replace_dict["contrast"] = contrast
			con_dir = pj(new_dir,contrast)
			replace_dict["con_dir"] = con_dir
			if not os.path.exists(con_dir):
				os.mkdir(con_dir)
			subjects = get_subjects(list_path)
			good_img = ["'%s'" % pj(func_dir, sub , study, "stats_outliers", "8mm", "con_%s.img" % XXXX) for sub in subjects]
			N = len(subjects)
			replace_dict["contrast_images"] = "\n".join(good_img)
			#are we masking?
			match = [x for x in data["mask"] if x[0] == study and x[1] == contrast]
			if match:
				mask = match[0][2]
				print("Using mask at {0}".format(mask))
			else:
				mask = ""
			replace_dict["mask"] = mask
			replace_dict["email_fail"] = "{0} {1} 2nd Level failed".format(study,contrast)
			replace_dict["SPM"] = "{0}/SPM.mat".format(con_dir)
			ibatch = pj(batch_dir,data["stype"],"generic_2nd_batch.m")
			obatch = pj(job_dir,contrast+".m")
			#make batch
			pipeline.f2f_replace(ibatch,obatch,replace_dict,data["verbose"])
			log = pj(job_dir,contrast+".log")
			shell_commands.append("{0} < {1} > {2} {3}".format(mlab_cmd,obatch,log,data["parallel"]))
			shell_commands.append("if [ $? -eq 0 ] \nthen\necho {0}:{1} succeeded\nelse\n echo {0}:{1} failed\nfi\n".format(study,contrast))
			info_fname = pj(con_dir,"info.txt")
			info = dict({"N": N,"images": good_img,"stype": data["stype"],"contrast": contrast})
			if mask:
				info["mask"] = mask
			else:
				info["mask"] = "No mask used"
			pipeline.save_data(info,info_fname,data["verbose"])
			print("%s -> %s subjects (%s)" % (contrast,N, " ".join(subjects)))
		print('\n\n')
	shell_path = second_script(data)
	pipeline.write_file_with_list(shell_path,"\n".join(shell_commands))
	make_file_exec(shell_path)


def second_run(data,prefix,date_dir,study_contrasts):
	"""
	Runs the script made by --setup_second.  That script's output is hooked into sys.stdout (which 
	probably the terminal)
	"""
	script_path = second_script(data)
	print("\nStarting {0}".format(script_path))
	process = pipeline.run_process(script_path,output=sys.stdout)
	process.communicate()


def second_script(data):
	"""
	returns the path to the second-level script.
	"""
	return pj(func_dir,"SecondLevelStats",data["stype"],"all_studies.sh")


#####MISC#####

def set_paths(data):
	"""Fairly self-explanatory.  Adds keys to the dictionary for "mri_dir","subject_dir",
	"dicom_dir",and "subject_dicom".  path prefixes are hard coded.
	"""
	if data["local"]:
		data["mri_dir"] = pj("/home/scratch/functionals",data["subject"])+os.sep
	else:
		data["mri_dir"] = pj(func_dir,data["subject"])+os.sep
	data["dicom_dir"] = pj(dicom_dir,data["subject"])+os.sep
	data["meg_dir"] = pj(meg_dir,data["subject"])+os.sep


def get_subjects(sub_list):
	raw = pipeline.list_from_file(sub_list)
	subjects = []
	for s in raw:
		if s and s[0] != "#": #notempty
			subjects.append(s)
	return subjects

		
def subject_type(subjects):
	"""
	This code is shakey but works.
	"""
	# assume first is good
	if len(subjects) == 1:
		stype = subjects[0][:2]
	elif len(subjects) == 0:
		raise UserError("No subject input")
	else:
		stype = subjects[0][:2]
#		 match = len([x for x in subjects[1:] if x[:2] == stype]) == (len(subjects) - 1)
#		 if not match:
#			 print("\nWarning, you seem to be processing subjects of differing types!!!!\n")
#			 response = 'n'
#			 response = input("Do you wish to continue? (y/n) : ")
#			 if response != "y":
#				 raise UserError("Try again with a better subject list")
	return stype


def print_info(data):
	info = pipeline.load_data(info_path(data))
	print(data["subject"])
	if data["single_study"]:
		for study in data["single_study"]:
			if study in info:
				info = info[study]
				for k,v in sorted(info.items()):
					print("%s:%s" % (k,v))
	else:
		for k,v in sorted(info.items()):
			print("{0}...".format(k))
			for key,value in sorted(v.items()):
				print("{0}:{1}".format(key,value))
			print('\n')

####SUBJ#####
def process_subject(subject,data):
	"""
	This processes options on a single-subject basis.
	"""
	data["subject"] = subject
	set_paths(data)
	if data["copy_dicom"]:		
		archive_to_cluster(data)
	if data["scan_only"]:
		scan_only(data)
	if data["scan2cfg"]:
		scan2cfg(data)
	if data["cfg2info"]:
		cfg2info(data)
	if data["unpack"]:
		unpack(data)
	if data["unpack_all"]:
		unpack_all(data)
	if data["makeMC"]:
		makeMC(data)

	#SETUP
	if data["setup_preproc"]:
		spm_setup(data,"preproc")
	if data["setup_fs_preproc"]:
		fs_setup(data,"preproc")
	if data["setup_stats"]:
		spm_setup(data,"stats")
	if data["setup_outliers"]:
		spm_setup(data,"stats_outliers")
	if data["setup_fs_stats"]:
		fs_setup(data,"stats")
	if data["setup_fs_image"]:
		fs_setup(data,"image")
	
	#recon
	if data["setup_recon"]:
		recon_write_script(data)
	if data["run_recon"]:
		recon_run(data)
	
	#SPM
	if data["run_preproc"]:
		spm_run(data,"preproc")
	if data["run_art"]:
		spm_run_art(data)
	if data["reg_mprage"]:
		spm_write_coreg_mprage(data)
	if data["run_stats"]:
		spm_run(data,"stats")
	if data["run_outliers"]:
		spm_run(data,"stats_outliers")
	
	#FSFast
	if data["run_fs_preproc"]:
		fs_run(data,"preproc")
	if data["run_fs_stats"]:
		fs_run(data,"stats")
	
	#MEG
	if data["setup_bem"]:
		setup_bem(data)
	if data["run_ica"]:
		run_ica(data)
	if data["preProc"]:
		meg_script(data,"preProc")
	if data["new_preProc"]:
		new_preProc(data)
	if data["preAnat"]:
		meg_script(data,"preAnat")
	if data["makeInv"]:
		meg_script(data,"makeInv")
	if data["makeSTC"]:
		meg_script(data,"makeSTC")
		
	if data["print_info"]:
		print_info(data)

def parse_arguments():
	parser = OptionParser(usage="%prog [options] subject (more subjects)", version="%prog 1.0")

	#Copying/Unpacking options
	copy_group = OptionGroup(parser,"Copying/Unpacking")
	copy_group.add_option("--copy_dicom",dest="copy_dicom", 
		help="Copy from archive to $DICOM_DIR/[subject]",action="store_true",default=False)
	copy_group.add_option("--unpack_all",dest="unpack_all",action="store_true",default=False,
		help="If specified, unpacking occurs in $FUNCTIONAL_DIR/[subject]")
	copy_group.add_option("--scan_only",dest="scan_only",help="Run only the scan_only unpack",
		action="store_true",default=False)
	copy_group.add_option("--scan2cfg",dest="scan2cfg",help="Convert scan.log into cfg file",
		action="store_true",default=False)
	copy_group.add_option("--unpack",dest="unpack",help="Run the full unpacking step",
		action="store_true",default=False)
	copy_group.add_option("--cfg2info",dest="cfg2info",action="store_true",default=False,
		help="Convert cfg to info dictionary")
	parser.add_option_group(copy_group)

	
	#full-stream options
	stream_group = OptionGroup(parser,"Full stream options")
	stream_group.add_option("--spm_all",dest="spm",action="store_true",default=False,
		help="Wraps --setup_preproc,--run_preproc,--run_art,--setup_outliers,--run_outliers")
	stream_group.add_option("--fs_all",dest="fs",action="store_true",default=False,
		help="Wraps --setup_fs_preproc,--setup_fs_stats,--run_fs_stats--because fs_stats does preproc automatically")
	parser.add_option_group(stream_group)


	#SPM options
	spm_group = OptionGroup(parser,"SPM Preprocessing/1st Level Statistics")
	spm_group.add_option("--setup_preproc",dest="setup_preproc",action="store_true",
		default=False,help="Make spm (preproc) batch files")
	spm_group.add_option("--setup_stats",dest="setup_stats",
		help="Make spm (stats) batch files using rp_*.txt as mult regressors",action="store_true",
		default=False)
	spm_group.add_option("--setup_outliers",dest="setup_outliers",
		help="Make spm (stats) batch files using outliers as mult regressors",action="store_true",
		default=False)
	spm_group.add_option("--run_outliers",dest="run_outliers",help="Run outlier script",
		action="store_true",default=False)
	spm_group.add_option("--run_stats",dest="run_stats",help="Run stats script",action="store_true",
		default=False)
	spm_group.add_option("--run_preproc",dest="run_preproc",help="Run preproc script",
		action="store_true",default=False)
	spm_group.add_option("--makeMultCond",dest="makeMC",action="store_true",default=False,
		help="Parse exp logs for multiple condition information, must be done before --setup_[stats]")	
	spm_group.add_option("--run_art",dest="run_art",action="store_true",default=False,
		help="Run artifact detection for a subject")
	spm_group.add_option("--reg_mprage",dest="reg_mprage",action="store_true",default=False,
		help="Register the subject's MPRAGE to each functional run")
	spm_group.add_option("--unwarp",dest="unwarp",action="store_true",default=False,
		help="Use with --setup_preproc, do unwarping")
	parser.add_option_group(spm_group)
	
	#FSFast options
	fs_group = OptionGroup(parser,"FSFast Preprocessing/1st level statistics")
	fs_group.add_option("--setup_fs_preproc",dest="setup_fs_preproc",action="store_true",
		default=False,help="Setup preprocessing using FSFast")
	fs_group.add_option("--setup_fs_stats",dest="setup_fs_stats",action="store_true",
		default=False,help="Setup preprocessing using FSFast")
	fs_group.add_option("--run_fs_preproc",dest="run_fs_preproc",action="store_true",
		default=False,help="Run preprocessing using FSFast")
	fs_group.add_option("--run_fs_stats",dest="run_fs_stats",action="store_true",default=False,
		help="Run 1st-level statistics using FSFast")
	fs_group.add_option("--setup_fs_analysis",dest="setup_fs_analysis",action="store_true",
		default=False,help="Setup all paradigms analysis with FSFast")
	fs_group.add_option("--setup_fs_group",dest="setup_fs_group",action="store_true",
		default=False,help="Setup group level analysis with FSFast")
	fs_group.add_option("--setup_fs_glm",dest="setup_fs_glm",action="store_true",default=False,
		help="Setup the script to run mri_glmfit")
	fs_group.add_option("--no_par",dest="no_par",action="store_true",default=False,
		help="Don't write par files with --setup_fs_preproc")
	fs_group.add_option("--setup_fs_group_image",dest="setup_fs_group_image",default=False,action="store_true",
		help="Write script to batch tksurfer image production")
	fs_group.add_option("--setup_fs_image",dest="setup_fs_image",default=False,action="store_true",
		help="Write script to batch tksurfer image production PER SUBJECT")
	fs_group.add_option("--nowls",dest="wls",default=True,action="store_false",
		help="With --setup_fs_glm, compute WITHOUT weighted least squares")
	parser.add_option_group(fs_group)	
	
	#Cortical reconstruction options
	recon_group = OptionGroup(parser,"Cortical reconstructions with Freesurfer")
	recon_group.add_option("--setup_recon",dest="setup_recon",help="Setup cortical reconstruction",
		action="store_true",default=False)
	recon_group.add_option("--run_recon",dest="run_recon",help="Run reconstruction script",
		action="store_true",default=False)
	parser.add_option_group(recon_group)
	
	#MEG options
	meg_group = OptionGroup(parser,"MEG processing")
	meg_group.add_option("--preProc",dest="preProc",help="Run the preProc script for meg",
		action="store_true",default=False)
	meg_group.add_option("--preAnat",dest="preAnat",help="Run the preAnat script for meg",
		action="store_true",default=False)
	meg_group.add_option("--makeInv",dest="makeInv",action="store_true",default=False,
		help="Run the MEG makeInv script")
	meg_group.add_option("--run_ica",dest="run_ica",action="store_true",default=False,
		help="Run ICA processing (takes 90-120 minutes).")
	meg_group.add_option("--setup_bem",dest="setup_bem",help="Setup BEM folders/dicoms",
		action="store_true",default=False)
	meg_group.add_option("--new_preProc",dest="new_preProc",action="store_true",default=False,
		help="Run the new meg preprocessing.")
	meg_group.add_option("--makeSTC",dest="makeSTC",action="store_true",default=False,
		help="Run the makeSTC script")
	parser.add_option_group(meg_group)
	
	#SPM Second-level options
	second_group = OptionGroup(parser,"Second-Level Statistics")
	second_group.add_option("--setup_second",dest="setup_second",action="store_true",default=False,
		help="Setup second level stats")
	second_group.add_option("--surf_second",dest="surf_second",action="store_true",default=False,
		help="Analyze second level stats (that have been run) with Freesurfer")
	second_group.add_option("--package_second",dest="package_second",action="store_true",default=False,
		help="Make analysis package (run after --surf_second)")
	second_group.add_option("--pvalue",dest="pvalue",type="float",default=0.001,
		help="Use with --surf_second")
	second_group.add_option("--date",dest="date",type="string",default=None,
		help="Specify a previously run second level date in the form of YYYYMMDD")
	second_group.add_option("--aparc",dest="aparc",action="store_true", default=False,
		help="If passed with --surf_second, tksurfer will load aparc annotations")
	second_group.add_option("--dry",dest="dry",action="store_true",default=False,
		help="If passed with --surf_second, all scripts are copied but tksurfer isn't run")
	second_group.add_option("--exc",dest="bad_sub",action="append",default=[],
		help="Exclude subjects, for use with --setup_second")
	second_group.add_option("--mask",dest="mask",action="append",default=[],
		help="At the second level, mask certain contrasts. Pass in <study>,<contrast>,<pathtomaskimage>")
	second_group.add_option("--inc",dest="good_sub",action="append",default=[],
		help="At the second level, include subjects, use with --setup_second")
	second_group.add_option("--run_second",dest="run_second",action="store_true",default=False,
		help="Run the script made my --setup_second")
	second_group.add_option("--override_p",dest="override_p",action="store_true",default=False,
		help="Overwrite p-value with new --pvalue")
	second_group.add_option("--all_second",dest="all_second",action="store_true",default=False,
		help="Run --setup_second,--run_second,--surf_second, and --package_second all in one call")
	parser.add_option_group(second_group)
	
	#Parallelization Options
	par_group = OptionGroup(parser,"Paralleization","WARNING:Use --joblib and --parallel together "
													"at your own risk")
	par_group.add_option("--ncpu",dest="joblib",action="store",type="int",default=0,
		help="Process this many subjects in parallel")
	par_group.add_option("--parallel",dest="parallel",action="store_true",default=False,
		help="For use with --setup_*.Make the script so jobs run in parallel")
	par_group.add_option("--launchpad",dest="launchpad",action="store_true",default=False,
		help="Use with --run_*, pipeline only exits when all jobs finish")
	parser.add_option_group(par_group)
	
	#Miscellaneous options
	misc_group = OptionGroup(parser,"Miscellaneous")
	misc_group.add_option("--subject_list",dest="subject_list",action="store",default="",
		help="Run the pipeline for subjects in this file.")
	misc_group.add_option("--print_info",dest="print_info",action="store_true",default=False,
		help="Print subject's info.txt")
	misc_group.add_option("--verbose",dest="verbose",help="Print info",action="store_true",
		default=False)
	misc_group.add_option("--study",dest="single_study",help="Use with --setup_*, can use multiple times",action="append",default=None)
	misc_group.add_option("--error_email",dest="error_email",default=False,action="store_true",
		help="Send email when errors occur, off by default")
	misc_group.add_option("--type",dest="stype",default="",action="store",type="string",
		help="For group level options, process by subject type (ya,ac,sc)")
	misc_group.add_option("--local",dest="local",default=False,action="store_true",
		help="Use local data (/home/scratch/functionals/")
	misc_group.add_option("--list_prefix",dest="list_prefix",default=False,action="store",type="string",
		help="With --setup_second, specify the prefix to a subject list. Searched path will be [this option]_[lower case paradigm]")
	parser.add_option_group(misc_group)


	return parser.parse_args()

if __name__ == "__main__":
	
	options, subjects = parse_arguments()
	
	data = dict({})
	#add options to data
	for opt,value in options.__dict__.items():
		data[opt] = value
	
	if data["subject_list"]:
		subjects = get_subjects(data["subject_list"])
	
	#transform parallel
	if data["parallel"]:
		data["parallel"] = "&"
	else:
		data["parallel"] = ""
	#transform aparc
	if data["aparc"]:
		data["aparc"] = "-aparc"
	else:
		data["aparc"] = ""
	#transform mask(s)
	if data["mask"]:
		masks = []
		for mask_str in data["mask"]:
			parts = mask_str.split(",")
			masks.append(parts)
		data["mask"] = masks
	
	if not data["stype"]:
		data['stype'] = subject_type(subjects)
		
	if data["spm"]:
		data["setup_preproc"] = True
		data["setup_outliers"] = True
		data["run_preproc"] = True
		data["run_art"] = True
		data["reg_mprage"] = True
		data["run_outliers" ] = True
	if data["fs"]:
		data["setup_fs_stats"] = True
		data["run_fs_stats"] = True
	
	#determine parallelism
	if len(subjects) > 1 and data["joblib"]:
		data["group_parallel"] = True
		data["subject_parallel"] = False
	elif data["joblib"] and len(subjects) == 1:
		data["group_parallel"] = False
		data["subject_parallel"] = True
	else:
		data["group_parallel"] = True
		data["subject_parallel"] = False
	
	#subject-level options
	if use_joblib and data["joblib"] and data["group_parallel"]:
		Parallel(n_jobs=data["joblib"],verbose=data["verbose"])(delayed(process_subject)(subject,data) for subject in subjects)
	else:
		[process_subject(subject,data) for subject in subjects]
	#group level options
	if data["setup_fs_analysis"]:
		fs_setup(data,"analysis")
	if data["setup_fs_group"]:
		fs_setup(data,"group",subjects)
	if data["setup_fs_glm"]:
		fs_setup(data,"glm")
	if data["setup_fs_group_image"]:
		fs_setup(data,"group_image")
	if data["all_second"]:
		second_level(data,"setup")
		second_level(data,"run")	
		second_level(data,"surf")
		second_level(data,"package")
	if data["setup_second"]:
		second_level(data,"setup")
	if data["run_second"]:
		second_level(data,"run")
	if data["surf_second"]:
		second_level(data,"surf")
	if data["package_second"]:
		second_level(data,"package")
	#miscellaneous
	if data["launchpad"]:
		pipeline.wait_to_finish(running_jobs)

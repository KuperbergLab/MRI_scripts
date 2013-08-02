import sys
import os 
import os.path
import readInput
from os.path import join as pj

def write_surfrend_script_AllCon(swd, thresh, exthresh):
    """
    Writes out the m file with matlab calls to surfrend_canonical.m.
    """
    mfile_script = pj(swd,"AllContrasts.m")
    commands = []
    commands.append("warning off all")
    mlab_cmd = "call_surfrend_canonical"
    commands.append("%s('%s', %s, %s)" % (mlab_cmd, swd, thresh, exthresh))
    commands.append('exit;')
    write_file_with_list(mfile_script, commands, swd)


def write_file_with_list(path,lines, swd,quiet=False):
    """
    File writing
    """
    try:
        with open(path,'w') as f:
            text = '\n'.join(lines)
            f.write(text + '\n')
       # make_lingua(path)
        if not quiet:
            print("Hi! Wrote %s/AllContrasts.m" % (swd))
    except IOError:
        raise



if __name__ == "__main__":
   write_surfrend_script_AllCon(sys.argv[1], sys.argv[2], sys.argv[3])

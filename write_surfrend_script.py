import sys
import os 
import os.path
import readInput
from os.path import join as pj

def write_surfrend_script(conname,connum, swd, thresh, exthresh):
    """
    Writes out the m file with matlab calls to surfrend_canonical.m.
    """
    mfile_script = pj(swd, conname+".m")
    commands = []
    commands.append("warning off all")
    mlab_cmd = "surfrend_canonical"
    commands.append("%s('%s', %s, '%s', %s, %s)" % (mlab_cmd, conname, connum, swd, thresh, exthresh))
    commands.append('exit;')
    write_file_with_list(mfile_script, commands, conname, swd)


def write_file_with_list(path,lines,conname,swd,quiet=False):
    """
    File writing
    """
    try:
        with open(path,'w') as f:
            text = '\n'.join(lines)
            f.write(text + '\n')
       # make_lingua(path)
        if not quiet:
            print("Hi! Wrote %s/%s.m" % (swd,conname))
    except IOError:
        raise



if __name__ == "__main__":
   write_surfrend_script(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])

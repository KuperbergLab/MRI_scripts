import sys
import os 
import os.path
import readInput
from os.path import join as pj

def write_tickle_script(conname, swd, hem, pval, thresh):
    """
    Writes out the m file with matlab calls to surfrend_canonical.m.
    """
    tcl_script = pj(swd, conname+"-"+hem+".tcl")
    commands = []
##    commands.append("set colscalebarvertflag 1")
 #   commands.append("set fthresh %s" % pval)
    commands.append("set file '%s/%s-%s.w'" % (swd, conname, hem))
    commands.append("set val $file") 
    commands.append("sclv_read_from_dotw 0")
    commands.append("redraw")
    commands.append("set outpth '%s'" %(swd))
    commands.append("set conname '%s'" %(conname))
    commands.append("set hem '%s'" %(hem))
    commands.append("\n")
    commands.append("rotate_brain_y 90")
    commands.append("sclv_set_current_field 0")
    commands.append("UpdateAndRedraw")
    commands.append("\n")
    commands.append("make_lateral_view")
    commands.append("redraw")
    commands.append("set rgb %s-%s-%s-%s-Lat.rgb" % (conname, hem, pval, thresh))
    commands.append("save_rgb")
    commands.append("\n")
    commands.append("rotate_brain_x 90")
    commands.append("set fthresh %s" % pval)
    if hem == 'rh':
         commands.append("rotate_brain_z 180")
    commands.append("redraw")
    commands.append("set rgb %s-%s-%s-%s-Ven.rgb" % (conname, hem, pval, thresh))
    commands.append("save_rgb")
    commands.append("\n")
    commands.append("make_lateral_view")
    commands.append("rotate_brain_y 180")
    commands.append("redraw")
    commands.append("set rgb %s-%s-%s-%s-Med.rgb" % (conname,hem, pval, thresh))
    commands.append("save_rgb")
    commands.append("\n")
   ## if hem == 'rh':
    commands.append("exit")
    write_file_with_list(tcl_script, commands, conname, swd, hem)


def write_file_with_list(path,lines,conname,swd,hem,quiet=False):
    """
    File writing
    """
    try:
        with open(path,'w') as f:
            text = '\n'.join(lines)
            f.write(text + '\n')
       # make_lingua(path)
        if not quiet:
            print("Hi! Wrote %s/%s-%s.tcl" % (swd,conname,hem))
    except IOError:
        raise



if __name__ == "__main__":
   
   write_tickle_script(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5])

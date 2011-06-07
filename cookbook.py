"""
THIS IS NOT A PYTHON SCRIPT

I'm using it a "cookbook" to make scripts/etc.  

Try to 


"""


#register.dat
cd ya1/BaleenHP/
ln -s 014/register.dof6.dat register.dat
cd ../../



#make links
def link_reg(sub):
    import os
    import pipeline as p
    d = p.load_data("%s/info.txt" % sub)
    if BaleenHP in d:
        os.chdir("%s/BaleenHP" % sub)
        src = "%s/register.dof6.dat" % d["BaleenHP"][Run1XXX]
        dst = "register.dat"
        print("%s -> %s" % (src dst))
        if os.path.isfile(src) and not os.path.exists(dst):
            try:
                os.symlink(src dst)
            except:
                pass


for sub in subjects:
    link_reg(sub)
    os.chdir(/Volumes/kuperberg/SemPrMM/MRI/functionals/)
    




#!/usr/bin/env python3

# makeopton.py

# Generate scripts and procedures for:
# "optics on"
# "optics off"
 
# Author A.D'Angelo

# $Revision: 1.14 $ $Date: 2020/09/09 18:47:35 $


# import Linux OS commands
import argparse, datetime, os, sys, stat

# set up the argument parser
parser = argparse.ArgumentParser(description='Generate .snap files for optics pages.')
parser.add_argument('-s', required=True, metavar=' Control System', action='store', type=str, default=None, help='select isac, elinac or ariel')
args = parser.parse_args()
sysdir = '/usr1/'
s = args.s
if type(s) is str:
 s = s.lower()
sList = ['isac', 'elinac', 'ariel']
if s in sList:
 sysdir += s
else:
  if s == None:
    parser.print_help()
  else:
    print('use one of these control system options:')
    for p in sList: print(p) 
    print('example: makeopton.py -s isac')
  sys.exit()
  
# specify optics tags for devices to be included
opticsdevices = [':Q', ':B', ':XCB', ':YCB', ':SOL', ':DEF', ':CCB']

# generate burt header information
header = []
header.append('--- Start BURT header\n')
header.append('Time:      {0}\n'.format(datetime.datetime.now().strftime('%a %b %d %H:%M:%S %Y')))
header.append('Login ID:  {0}\n'.format(os.getlogin()))
header.append('Eff  UID:  {0}\n'.format(os.getuid()))
header.append('Group ID:  {0}\n'.format(os.getgid()))
header.append('Keywords:  {0}\n'.format(''))
header.append('Comments:  Generated by makeopton.py from {0}\n'.format(os.getcwd()))
header.append('Type:      Absolute\n')
header.append('Directory: {0}{1}\n'.format(sysdir, '/burt/auto'))
header.append('Req File:  {0}\n'.format(''))
header.append('--- End BURT header\n')
 
os.chdir('{0}/config/optics_pages/pagecfg'.format(sysdir))
cwd = os.getcwd()

# read all .cfg files in pagecfg dir
cfg = os.listdir(cwd)
for c in cfg:
  if c.endswith('.cfg'):
    with open(c, 'r') as f:
      lines = f.readlines()
    cfgname = c.split('/')[-1].replace('_optics', 'opt(on/off)').replace('.cfg', '')
    ofile = []
    dlist = []
    for l in lines:
      
      # get #include lines and parse directory
      if '#include' in l:          
        ofile.append(l.split(' ')[1].split(' ')[0].strip('\n'))
        
    # grab all files in orthogonal dir
    for o in ofile:
      with open(os.path.realpath(o), 'r') as f:
        alldevices = f.readlines()
      
      # iterate for all orthogonal file devices to generate list
      for i, d in enumerate(alldevices):

        # check if its an optics device
        if not '<' in d and ':' in d and any(devs in d for devs in opticsdevices):

          # check if its a repeat
          if not any(k in d for k in dlist):
            try:

              # check if it's metadata has any exclusion tags
              if not ('NOCTRL1=YES' in alldevices[i + 1]):
                d = d.strip('\n')
                dlist.append(d)
            except:
              continue
                    
    # create 2 new .snap files and write device list for both ON and OFF
    onoff = ['on', 'off']
    for oo in onoff:
      scrfile = '{0}.scr'.format(cfgname.replace('(on/off)', oo))
      snapfile = '{0}.snap'.format(cfgname.replace('(on/off)', oo))
      
      # create .scr files if they do not already exist
      path = '{0}/scr/auto/{1}'.format(sysdir, scrfile)
      if not os.path.exists(path):
        scr = []
        scr.append('#!/bin/bash\n')
        scr.append('# >{0}\n'.format(path))
        scr.append('# script to switch {0} supplies {1}\n'.format(snapfile.split('_')[0], oo))
        scr.append('burtwb -f {0}/burt/{1}\n'.format(sysdir, snapfile))
        scr.append('#')
        with open(path, 'w') as f:
          f.writelines(scr)
        st = os.stat(path)
        os.chmod(path, st.st_mode | 0o775)

      # write the .snap files
      path = '{0}/burt/auto/{1}'.format(sysdir, snapfile)
      with open(path, 'w') as f:
        f.writelines(header)
        snap = []
        for d in dlist:
          snap.append('{0}{1} 1 on\n'.format(d, ':DRV' + oo.upper()))
        f.writelines(snap)
      st = os.stat(path)
      os.chmod(path, st.st_mode | 0o775)

    # print resulting list of updated files
    print(snapfile.split('.')[0].split('opt')[0])
print('^ were updated successfully.')
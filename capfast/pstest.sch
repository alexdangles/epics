[schematic2]
uniq 4
[tools]
[detail]
w 2116 1867 100 0 n#1 ebos.EXTIL.FLNK 2064 1864 2168 1864 2168 1656 2256 1656 efanouts.SCANMSTR.SLNK
w 2082 1834 -100 0 n#2 ebos.EXTIL.VAL 2064 1832 2560 1832 2560 1976 2632 1976 biasgman.biasgman#2.intok
w 2234 1842 -100 0 n#2 junction 2224 1832 2224 1688 2256 1688 efanouts.SCANMSTR.SDIS
w 2506 1738 -100 0 n#3 efanouts.SCANMSTR.LNK1 2496 1736 2600 1736 2600 1912 2632 1912 biasgman.biasgman#2.scan
n 4004 2958 4775 3076 275
Functionality:
Testing Glassman KT power supply
_
[cell use]
use bd200tr 0 0 100 0 bd200tr#1
xform 0 2640 1680
p 3987 187 150 0 -1 seta:Alex
p 3840 496 250 0 -1 sets:Alex Testbench
p 3852 348 200 0 -1 sett1:Alex IOC
p 4360 187 150 0 -1 setdat:2020/01/13
p 4072 250 200 0 -1 setd:$Revision: 1.1 $
p 3834 119 150 0 -1 setf:pstest.sch
use biasgman 2632 1672 100 0 biasgman#2
xform 0 2840 1936
p 2746 2120 100 0 -1 setd:D ALEX:PS1:
p 2714 1744 100 0 -1 set6:ASYINFO IP 192.168.1.5:2101,0,0,0
p 2714 1792 100 0 -1 set8:ASYPORT PS1
use ebos 1947 1733 100 0 EXTIL
xform 0 1936 1832
p 1821 1733 100 0 -1 PV:ALEX:PS1:
p 1873 1932 100 0 1 OMSL:closed_loop
p 1580 1860 100 0 1 def(DOL):ALEX:EXTIL
p 1872 1910 100 0 1 SCAN:.2 second
use efanouts 2357 1525 100 0 SCANMSTR
xform 0 2376 1672
p 2231 1525 100 0 -1 PV:ALEX:PS1:
p 2515 1705 100 0 0 def(LNK2):0
p -64 0 100 0 0 pproc(SDIS):NPP
p -64 0 100 0 0 palrm(SDIS):NMS
p 2341 1689 100 0 1 DISV:0
[comments]

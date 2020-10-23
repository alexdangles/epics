[schematic2]
uniq 3
[tools]
[detail]
w 3176 1755 100 0 n#1 eaos.AO.VAL 3120 1752 3232 1752 3232 1848 3264 1848 eais.AI.INP
w 3128 1787 100 0 n#2 eaos.AO.FLNK 3120 1784 3136 1784 3136 1816 3264 1816 eais.AI.SLNK
n 3812 596 5030 716 275
Functionality:
Generic schematic for playing around in ALEXIOC
_
[cell use]
use bd200tr 0 0 100 0 bd200tr#1
xform 0 2640 1680
p 3987 187 150 0 -1 seta:Alex
p 3840 496 250 0 -1 sets:Alex Testbench
p 3852 348 200 0 -1 sett1:Alex IOC
p 4360 187 150 0 -1 setdat:2020/01/13
p 4072 250 200 0 -1 setd:$Revision: 1.1 $
p 3834 119 150 0 -1 setf:test.sch
use eais 3398 1739 100 0 AI
xform 0 3392 1816
p 3328 1739 100 0 -1 PV:ALEX:
p 3339 1884 100 0 1 PREC:3
use eaos 2991 1660 100 0 AO
xform 0 2992 1752
p 2921 1660 100 0 -1 PV:ALEX:
p 2940 1874 100 0 0 EGUF:0
p 2943 1843 100 0 0 DRVH:0
p 2940 1869 100 0 1 HOPR:10
p 2942 1837 100 0 1 LOPR:-10
p 2940 1893 100 0 1 PREC:3
[comments]

[schematic2]
uniq 4
[tools]
[detail]
w 2576 1867 100 0 n#1 efanouts.SCANMASTER.LNK1 2512 1880 2712 1880 glassmankt.glassmankt#6.scan
w 2344 1979 100 0 n#2 ebos.EXTIL.VAL 2080 1976 2608 1976 2608 1944 2712 1944 glassmankt.glassmankt#6.intok
w 2227 1896 100 0 n#2 junction 2224 1976 2224 1832 2272 1832 efanouts.SCANMASTER.SDIS
w 2132 2011 100 0 n#3 ebos.EXTIL.FLNK 2080 2008 2184 2008 2184 1800 2272 1800 efanouts.SCANMASTER.SLNK
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
use glassmankt 2712 1640 100 0 glassmankt#6
xform 0 2888 1904
p 2808 1880 100 0 -1 setS:MAXSET 25.0
p 2824 2088 100 0 -1 setd:D ALEX:PS1:
p 2808 1928 100 0 -1 seti:MAXCUR 25.0
p 2808 1856 100 0 -1 sets:MINSET 25.0
p 2808 2000 100 0 -1 setui:UNITI mA
p 2808 2024 100 0 -1 setuv:UNITV V
p 2808 1976 100 0 -1 setv:MAXVOL 85000
p 2811 1781 100 0 -1 set1:PORT PS1
use efanouts 2373 1669 100 0 SCANMASTER
xform 0 2392 1816
p 2247 1669 100 0 -1 PV:ALEX:PS1:
p 2531 1849 100 0 0 def(LNK2):0
p 2366 1830 100 0 1 DISV:0
p -48 144 100 0 0 pproc(SDIS):NPP
p -48 144 100 0 0 palrm(SDIS):NMS
use ebos 1963 1877 100 0 EXTIL
xform 0 1952 1976
p 1837 1877 100 0 -1 PV:ALEX:PS1:
p 1889 2076 100 0 1 OMSL:closed_loop
p 1596 2004 100 0 1 def(DOL):ALEX:EXTIL
p 1888 2054 100 0 1 SCAN:.2 second
[comments]

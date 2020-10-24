[schematic2]
uniq 3
[tools]
[detail]
w 2456 1867 100 0 n#1 eaos.AO.VAL 2448 1864 2464 1864 2464 1928 2496 1928 eais.AI.INP
w 2472 1899 100 0 n#2 eaos.AO.FLNK 2448 1896 2496 1896 eais.AI.SLNK
n 4283 441 5175 531 200
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
use eais 2630 1819 100 0 AI
xform 0 2624 1896
p 2560 1819 100 0 -1 PV:ALEX:
p 2571 1964 100 0 1 PREC:3
use eaos 2319 1772 100 0 AO
xform 0 2320 1864
p 2249 1772 100 0 -1 PV:ALEX:
p 2268 1986 100 0 0 EGUF:0
p 2271 1955 100 0 0 DRVH:0
p 2270 1977 100 0 1 HOPR:10
p 2270 1949 100 0 1 LOPR:-10
p 2269 2004 100 0 1 PREC:3
use ebos 2339 1453 100 0 BO
xform 0 2328 1552
p 2269 1453 100 0 -1 PV:ALEX:
p 1880 1438 100 0 0 ZNAM:0
p 1880 1406 100 0 0 ONAM:1
[comments]

[schematic2]
uniq 2
[tools]
[detail]
w 2418 1826 -100 0 n#1 efanouts.SCANMSTR.LNK1 2408 1824 2496 1824 2496 1704 2576 1704 mdc660004.mdc660004#9.scan
n 4540 2940 5088 3060 275
Functionality:
Testing new hardware
_
[cell use]
use bd200tr 0 0 100 0 bd200tr#1
xform 0 2640 1680
p 3987 187 150 0 -1 seta:Alex
p 3840 496 250 0 -1 sets:Alex Testbench
p 3852 348 200 0 -1 sett1:Alex IOC
p 4360 187 150 0 -1 setdat:2020/01/13
p 4072 250 200 0 -1 setd:$Revision: 1.6 $
p 3834 119 150 0 -1 setf:mdc.sch
use efanouts 2348 1605 100 0 SCANMSTR
xform 0 2288 1760
p 2024 1950 100 0 0 SCAN:.5 second
p 2292 1605 100 0 -1 PV:MDC:
use mdc660004 2584 1648 100 0 mdc660004#9
xform 0 2808 1888
p 2662 2046 100 0 -1 set0:D MDC:
p 2662 2022 100 0 -1 set1:ADDR 0
p 2662 1990 100 0 -1 set4:UNITS MM
p 2662 1938 100 0 -1 set16:MAXTRAVEL 50
p 2663 1742 100 0 -1 set20:BUS RS485
p 2663 1718 100 0 -1 set21:IP 192.168.1.4
p 2662 1966 100 0 -1 set32:POSTOL 0.2
[comments]

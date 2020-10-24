[schematic2]
uniq 3
[tools]
[detail]
w 448 3035 100 0 n#1 eaos.AO.VAL 440 3032 456 3032 456 3096 488 3096 eais.AI.INP
w 464 3067 100 0 n#2 eaos.AO.FLNK 440 3064 488 3064 eais.AI.SLNK
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
use eais 622 2987 100 0 AI
xform 0 616 3064
p 552 2987 100 0 -1 PV:ALEX:
p 563 3132 100 0 1 PREC:3
use eaos 311 2940 100 0 AO
xform 0 312 3032
p 241 2940 100 0 -1 PV:ALEX:
p 260 3154 100 0 0 EGUF:0
p 263 3123 100 0 0 DRVH:0
p 262 3145 100 0 1 HOPR:10
p 262 3117 100 0 1 LOPR:-10
p 261 3172 100 0 1 PREC:3
use ebos 1365 2591 100 0 BO
xform 0 1344 2696
p 1295 2591 100 0 -1 PV:ALEX:
p 1492 2655 100 0 0 def(OUT):
p 896 2614 100 0 1 HIGH:3
p 896 2646 100 0 1 OMSL:closed_loop
p 896 2582 100 0 1 ZNAM:0
p 896 2550 100 0 1 ONAM:1
[comments]

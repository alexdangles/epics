[schematic2]
uniq 2
[tools]
[detail]
w -724 691 100 0 n#1 ebos.EXTIL.VAL -1096 688 -352 688 glassmanFR.glassmanFR#52.intok
n 236 979 639 1049 150
Functionality:
Please add functionality here
_
[cell use]
use bb200tr -1864 -376 100 0 bb200tr#35
xform 0 -584 424
p -8 -184 150 0 -1 setdat:2017/11/30
p -248 -136 200 0 -1 setd:$Revision:$
p -408 -248 150 0 -1 setf:test_fug_ps.sch
use efanouts -1587 -203 100 0 SCANMSTR
xform 0 -1568 -56
p -1574 -238 100 0 1 SCAN:.2 second
p -1657 -203 100 0 -1 PV:TEST:
p -1429 7 100 0 1 def(LNK1):LAB:PS1:SCANFAN
p -1429 -23 100 0 0 def(LNK2):0
use ebos -1352 624 100 0 EXTIL
xform 0 -1224 688
p -1422 624 100 0 -1 PV:TEST:
p -1463 717 100 0 1 def(DOL):1
use glassmanFR -360 384 100 0 glassmanFR#52
xform 0 -176 648
p -240 832 100 0 -1 setd:D LAB:PS1:
p -256 744 100 0 -1 setui:UNITI mA
p -256 768 100 0 -1 setuv:UNITV kV
p -256 720 100 0 -1 setv:MAXVOL 60
[comments]

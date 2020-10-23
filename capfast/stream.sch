[schematic2]
uniq 1
[tools]
[detail]
n 1354 305 1838 353 100
Functionality:
Testing stream devices using generic stream.proto file
_
[cell use]
use bb200tr -136 -144 100 0 bb200tr#41
xform 0 1144 656
p 1448 48 150 0 -1 seta:Alex
p 1720 48 150 0 -1 setdat:2019/03/12
p 1480 96 200 0 -1 setd:$Revision: 1.3 $
p 1320 -16 150 0 -1 setf:stream.sch
use estrouts 806 656 100 0 CMD
xform 0 840 728
p 736 656 100 0 -1 PV:ALEX:
p 985 707 100 0 1 def(OUT):@stream.proto CMD LAN 0
p 779 793 100 0 1 DTYP:stream
p 908 777 100 0 0 VAL:
p 739 768 100 0 0 DESC:
p 534 755 100 0 0 def(DOL):
[comments]

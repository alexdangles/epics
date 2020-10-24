[schematic2]
uniq 1
[tools]
[detail]
n 1690 193 2174 241 100
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
use estrouts 86 1192 100 0 CMD
xform 0 120 1264
p 16 1192 100 0 -1 PV:ALEX:
p 265 1243 100 0 1 def(OUT):@stream.proto CMD LAN 0
p 59 1329 100 0 1 DTYP:stream
p 188 1313 100 0 0 VAL:
p 19 1304 100 0 0 DESC:
p -186 1291 100 0 0 def(DOL):
[comments]

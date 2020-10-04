[schematic2]
uniq 6
[tools]
[detail]
w -200 355 100 0 n#1 ebos.DRVON.VAL -256 352 -144 352 -144 200 -8 200 ecalcs.CALCDRV.INPA
w -132 171 100 0 n#2 ebos.DRVOFF.VAL -256 168 -8 168 ecalcs.CALCDRV.INPB
w 300 11 100 0 n#3 ecalcs.CALCDRV.VAL 280 8 320 8 320 -128 360 -128 ebis.STATDRV.INP
w 308 43 100 0 n#4 ecalcs.CALCDRV.FLNK 280 40 336 40 336 -160 360 -160 ebis.STATDRV.SLNK
w -200 -13 100 0 n#5 ebis.STATINT.VAL -256 -16 -144 -16 -144 136 -8 136 ecalcs.CALCDRV.INPC
w -44 107 100 0 n#3 ecalcs.CALCDRV.INPD -8 104 -80 104 -80 -328 320 -328 320 -128 junction
[cell use]
use ebos -389 432 100 0 DRVON
xform 0 -384 352
p -459 432 100 0 -1 PV:ALEX:
p -414 317 100 0 1 HIGH:3
p 344 178 100 0 0 SCAN:Passive
use ebos -389 249 100 0 DRVOFF
xform 0 -384 168
p -459 249 100 0 -1 PV:ALEX:
p -418 129 100 0 1 HIGH:3
use ebis -382 61 100 0 STATINT
xform 0 -384 0
p -452 61 100 0 -1 PV:ALEX:
p -391 -6 100 0 -1 Type:bi
p -616 27 100 0 0 def(INP):0
use ecalcs 90 258 100 0 CALCDRV
xform 0 136 -8
p 20 258 100 0 -1 PV:ALEX:
p 115 214 100 0 1 CALC:A&&!B&&C||D
p 0 0 100 0 0 pproc(INPA):NPP
p 0 0 100 0 0 palrm(INPA):NMS
p 101 -242 100 0 1 SCAN:.5 second
p 0 0 100 0 0 pproc(INPB):NPP
p 0 0 100 0 0 palrm(INPB):NMS
p 0 0 100 0 0 pproc(INPC):NPP
p 0 0 100 0 0 palrm(INPC):NMS
use ebis 482 -95 100 0 STATDRV
xform 0 488 -160
p 476 -167 100 0 -1 Type:bi
p 412 -95 100 0 -1 PV:ALEX:
p 422 -90 100 0 0 pproc(INP):NPP
p -56 -64 100 0 0 palrm(INP):NMS
p 425 -237 100 0 1 SCAN:Passive
[comments]

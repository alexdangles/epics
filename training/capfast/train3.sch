[schematic2]
uniq 3
[tools]
[detail]
w -94 82 -100 0 n#1 eaos.CUR.FLNK -112 80 -32 80 -32 48 0 48 eais.RDCUR.SLNK
w -94 50 -100 0 n#2 eaos.CUR.VAL -112 48 -56 48 -56 64 -30 64 -30 80 0 80 eais.RDCUR.INP
[cell use]
use eais 129 125 100 0 RDCUR
xform 0 128 48
p 59 125 100 0 -1 PV:ALEX:
p 58 -35 100 0 1 SCAN:1 second
p 58 -63 100 0 1 DTYP:Raw Soft Channel
p 63 -113 100 0 1 EGUF:20
p 62 -138 100 0 1 HOPR:20
use eaos -232 134 100 0 CUR
xform 0 -240 48
p -302 134 100 0 -1 PV:ALEX:
p -329 -61 100 0 1 DTYP:Raw Soft Channel
p -329 -92 100 0 1 EGUF:20
p -328 -117 100 0 1 EGUL:0
p -327 -143 100 0 1 HOPR:18
p -321 -170 100 0 1 LOPR:1
p -319 -197 100 0 1 DRVH:20
p -320 -220 100 0 0 LINR:NO CONVERSION
[comments]

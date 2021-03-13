[schematic2]
uniq 28
[tools]
[detail]
w -24 1123 100 0 n#1 inhier.scan.P -104 1120 56 1120 efanouts.SCANFAN.SLNK
w 2300 1051 100 0 n#2 inhier.intok.P 2168 1048 2432 1048 intlatch.intlatch#562.intok
w 2376 1243 100 0 n#3 intlatch.intlatch#562.onval 2432 1240 2320 1240 2320 1864 2440 1864 tmostat.tmostat#557.drvval
w 3436 1771 100 0 n#3 onoff.onoff#563.drvval 3408 1768 3464 1768 3464 1976 2320 1976 2320 1864 junction
w 2904 1179 100 0 n#4 intlatch.intlatch#562.intokval 2816 1176 2992 1176 2992 1704 3056 1704 onoff.onoff#563.intokval
w 3440 1643 100 0 n#5 onoff.onoff#563.rstint 3408 1640 3472 1640 3472 1368 2352 1368 2352 1176 2432 1176 intlatch.intlatch#562.rstint
w 1796 1179 100 0 n#6 ebis.MODE.FLNK 1608 1176 1984 1176 1984 1112 2432 1112 intlatch.intlatch#562.scan
w 2912 1083 100 0 n#7 intlatch.intlatch#562.flnk 2816 1080 3008 1080 3008 1640 3056 1640 onoff.onoff#563.inlnk
w 1756 827 100 0 n#8 ebis.STATON.VAL 1608 824 1904 824 1904 1800 2440 1800 tmostat.tmostat#557.statval
w 1636 2451 100 0 n#9 iscananal.iscananal#573.drvpos 1576 2448 1696 2448 outhier.drvpos.p
w 1636 2403 100 0 n#10 iscananal.iscananal#573.drvneg 1576 2400 1696 2400 outhier.drvneg.p
w 332 1203 100 0 n#11 efanouts.SCANFAN.LNK1 296 1200 368 1200 368 2224 1224 2224 iscananal.iscananal#573.scan
w 616 891 100 0 n#12 embbids.STATUS.SLNK 824 888 408 888 408 1072 296 1072 efanouts.SCANFAN.LNK5
w 1136 2115 100 0 n#13 inhier.polstat.P 1048 2112 1224 2112 iscananal.iscananal#573.polstat
w 172 3131 100 0 n#14 eaos.VOL.VAL 88 3128 256 3128 256 3032 552 3032 ecalcos.SETVOL.INPA
w 184 3163 100 0 n#15 eaos.VOL.FLNK 88 3160 280 3160 280 2648 552 2648 ecalcos.SETVOL.SLNK
w 1656 2195 100 0 n#16 iscananal.iscananal#573.flnk 1576 2192 1736 2192 1736 1952 1888 1952 ecalcos.SETCUR.SLNK
w 3494 1771 100 0 n#3 junction 3464 1768 3524 1768 3524 1704 3640 1704 ecalcos.CMDBYTE.INPA
w 3512 1579 100 0 n#17 onoff.onoff#563.flnk 3408 1576 3616 1576 3616 1320 3640 1320 ecalcos.CMDBYTE.SLNK
w 3923 1483 100 0 n#18 hwout.hwout#590.outp 3920 1480 3920 1480 ecalcos.CMDBYTE.OUT
w 843 2811 100 0 n#19 hwout.hwout#592.outp 840 2808 840 2808 ecalcos.SETVOL.OUT
w 2179 2115 100 0 n#20 hwout.hwout#594.outp 2176 2112 2176 2112 ecalcos.SETCUR.OUT
w 1256 1195 100 0 n#21 ebis.MODE.INP 1352 1192 1160 1192 1160 1016 1144 1016 embbids.STATUS.B0
w 1220 987 100 0 n#22 embbids.STATUS.B1 1144 984 1296 984 1296 1024 1352 1024 ebis.FAULT.INP
w 1320 875 100 0 n#23 ebis.STATON.INP 1352 872 1288 872 1288 952 1144 952 embbids.STATUS.B2
w 1192 763 100 0 n#24 embbids.STATUS.FLNK 1144 760 1240 760 1240 840 1352 840 ebis.STATON.SLNK
w 1624 859 100 0 n#25 ebis.STATON.FLNK 1608 856 1640 856 1640 904 1312 904 1312 992 1352 992 ebis.FAULT.SLNK
w 1624 1011 100 0 n#26 ebis.FAULT.FLNK 1608 1008 1640 1008 1640 1056 1328 1056 1328 1160 1352 1160 ebis.MODE.SLNK
w 3066 1770 -100 0 n#27 onoff.onoff#563.tmoval 3056 1768 2760 1768 tmostat.tmostat#557.tmoval
s 1376 1920 100 0 :
s 1232 2080 100 0 :
n 2519 3130 3199 3220 200
All records use $(D) as device name
All I/O records use STREAM for DTYPE
_
n 3468 3084 4187 3204 275
Functionality:
Please add functionality here
_
n 612 3154 1256 3212 125
The Glassman FR voltage and current setpoints are scaled
between 0-100% and formated as a 12-bit number
_
n 1868 2466 2512 2524 125
The Glassman FR voltage and current setpoints are scaled
between 0-100% and formated as a 12-bit number
_
[cell use]
use bd200tr -1008 96 -100 0 frame
xform 0 1632 1800
p 2979 306 150 0 -1 seta:G. Waters
p 3064 370 200 0 -1 setd:$Revision: 1.1 $
p 3352 307 150 0 -1 setdat:15-Mar-2013
p 2826 239 150 0 -1 setf:serips_polsw.sch
p 2834 547 200 0 -1 sett0:EPICS Device Schematic
p 2844 468 200 0 -1 sett1:Serial Current Power Supply with Polarity Switch
use inhier -216 1104 100 0 scan
xform 0 -104 1120
use eaos -115 3035 100 0 VOL
xform 0 -40 3128
p 724 3073 100 0 0 DTYP:Soft Channel
p 889 2891 100 0 0 def(OUT):
p -171 3035 100 0 -1 PV:$(D)
p -200 2854 100 0 0 EGU:Volts
p -103 3202 100 0 1 PREC:$(PREC)
p -104 3249 100 0 1 DRVH:$(MAXVOL)
p -103 3222 100 0 1 DRVL:$(MINVOL)
p 96 3248 100 0 1 EGUF:$(MAXVOL)
p 95 3228 100 0 1 EGUL:$(MINVOL)
p 278 3250 100 0 1 HOPR:$(MAXVOL)
p 279 3230 100 0 1 LOPR:$(MINVOL)
use tmostat 2440 1640 100 0 tmostat#557
xform 0 2600 1768
use intlatch 2432 984 100 0 intlatch#562
xform 0 2624 1144
use onoff 3056 1544 100 0 onoff#563
xform 0 3232 1704
p 3248 1560 100 0 -1 seth:HW Soft Channel
use inhier 2056 1032 100 0 intok
xform 0 2168 1048
use outhier 1712 2448 100 0 drvpos
xform 0 1680 2448
use outhier 1712 2400 100 0 drvneg
xform 0 1680 2400
use inhier 936 2096 100 0 polstat
xform 0 1048 2112
use efanouts 125 1013 100 0 SCANFAN
xform 0 176 1136
p 69 1013 100 0 -1 PV:$(D)
p 79 987 100 0 0 DISV:1
use iscananal 1224 1920 100 0 iscananal#573
xform 0 1400 2216
p 1303 2043 100 0 -1 setS:MAXSET $(MAXCUR)
p 1304 2075 100 0 -1 sets:MINSET $(MINCUR)
p 1318 2319 100 0 -1 set0:HW2 Soft Channel
p 1320 2352 100 0 -1 seth:HW Soft Channel
use ecalcos 616 2556 100 0 SETVOL
xform 0 696 2840
p 560 2556 100 0 -1 PV:$(D)
p 633 3024 100 0 0 DTYP:Soft Channel
p 849 2803 100 0 0 def(OUT):
p 632 3000 150 0 1 CALC:FLOOR(A/B*4096)
p 346 2993 100 0 1 def(INPB):$(MAXVOL)
p 347 2964 100 0 0 def(INPC):
p 632 2744 100 0 1 OOPT:On Change
use ecalcos 1930 1859 100 0 SETCUR
xform 0 2032 2144
p 1874 1859 100 0 -1 PV:$(D)
p 1969 2328 100 0 0 DTYP:Soft Channel
p 2185 2107 100 0 0 def(OUT):
p 1968 2304 150 0 1 CALC:FLOOR(A/B*4096)
p 1682 2297 100 0 1 def(INPB):$(MAXCUR)
p 1683 2268 100 0 0 def(INPC):
p 1971 2027 100 0 0 DESC:
p 1718 2328 100 0 1 def(INPA):$(D)SET
p 1968 2048 100 0 1 OOPT:On Change
use ecalcos 3682 1224 100 0 CMDBYTE
xform 0 3784 1512
p 3626 1224 100 0 -1 PV:$(D)
p 3720 1672 150 0 1 CALC:B?4:(A?2:1)
p 3720 1416 100 0 1 OOPT:On Change
use ebos 1582 2792 100 0 CMDOUT
xform 0 1640 2880
p 1526 2792 100 0 -1 PV:$(D)
p 1582 2968 100 0 1 DTYP:stream
p 1786 2841 100 0 1 def(OUT):@$(PROTO) OUT($(D)) $(PORT)
use hwout 3920 1464 100 0 hwout#590
xform 0 4016 1480
p 4016 1471 100 0 -1 val(outp):$(D)CMDOUT.PROC
use hwout 840 2792 100 0 hwout#592
xform 0 936 2808
p 936 2799 100 0 -1 val(outp):$(D)CMDOUT.PROC
use hwout 2176 2096 100 0 hwout#594
xform 0 2272 2112
p 2272 2103 100 0 -1 val(outp):$(D)CMDOUT.PROC
use ebis 1389 764 100 0 STATON
xform 0 1480 840
p 1333 764 100 0 -1 PV:$(D)
p 1240 966 100 0 0 DTYP:Soft Channel
p 1011 870 100 0 0 def(INP):
use embbids 824 728 100 0 STATUS
xform 0 984 872
p 768 728 100 0 -1 PV:$(D)
p 920 835 100 0 1 DTYP:stream
p 444 915 100 0 1 def(INP):@$(PROTO) STATUS($(D)) $(PORT)
use ebis 1389 916 100 0 FAULT
xform 0 1480 992
p 1333 916 100 0 -1 PV:$(D)
p 1240 1118 100 0 0 DTYP:Soft Channel
p 1011 1022 100 0 0 def(INP):
p 1652 917 100 0 1 ONAM:FAULT!
p 1538 916 100 0 1 OSV:MAJOR
p 1657 895 100 0 1 ZNAM:OK
use ebis 1389 1084 100 0 MODE
xform 0 1480 1160
p 1333 1084 100 0 -1 PV:$(D)
p 1240 1286 100 0 0 DTYP:Soft Channel
p 1011 1190 100 0 0 def(INP):
p 1522 1095 100 0 1 ONAM:Current Mode
p 1522 1077 100 0 1 ZNAM:Voltage Mode
[comments]

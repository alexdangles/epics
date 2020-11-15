[schematic2]
uniq 10
[tools]
[detail]
w 4716 1915 100 0 n#1 ecalcos.$(PS):RDCUROK.FLNK 4696 1912 4736 1912 outhier.flink.p
w 4736 1883 100 0 n#2 ecalcos.$(PS):RDCUROK.VAL 4696 1880 4776 1880 outhier.statok.p
w 4096 1691 100 0 n#3 ecalcos.$(PS):CURDISABLE.FLNK 3784 1688 4408 1688 ecalcos.$(PS):RDCUROK.SLNK
w 2684 1555 100 0 n#4 trcalcos.$(PS):STATUS.FLNK 1944 1552 3424 1552 3424 1464 3496 1464 ecalcos.$(PS):CURDISABLE.SLNK
w 4056 1659 100 0 n#5 ecalcos.$(PS):CURDISABLE.VAL 3784 1656 4328 1656 4328 1912 4408 1912 ecalcos.$(PS):RDCUROK.INPF
w 963 1304 100 0 n#6 inhier.enable.P 960 1320 960 1288 1104 1288 ecalcos.$(PS):LOCKENABLE.INPA
w 1404 1099 100 0 n#7 ecalcos.$(PS):LOCKENABLE.VAL 1392 1096 1440 1096 1440 1360 1656 1360 trcalcos.$(PS):STATUS.INPL
w 1456 1131 100 0 n#8 ecalcos.$(PS):LOCKENABLE.FLNK 1392 1128 1544 1128 1544 1328 1656 1328 trcalcos.$(PS):STATUS.SLNK
w 1036 907 100 0 n#9 inhier.scanin.P 992 904 1104 904 ecalcos.$(PS):LOCKENABLE.SLNK
n 1659 1955 2161 2027 100
FUNCTIONALITY:
CHECK THAT STREAM DEVICE OPTICS ELEMENT IS ON,
COMMUNICATING AND NOT IN TIMEOUT STATE.
_
n 2209 1618 2530 1714 100
LED RULES FOR $(D)$(PS):STATUS:
0: PATH BAD -> RED
1: PATH GOOD -> GREEN
2: DISABLED -> BLACK
_
n 2812 1987 3215 2057 150
Functionality:
Please add functionality here
_
[cell use]
use bb200tr 712 632 100 0 bb200tr#2
xform 0 1992 1432
p 2296 824 150 0 -1 seta:M. Rowe
p 2152 1016 150 0 -1 sets:E-Linac Control System
p 2152 984 100 0 -1 sett0:Machine Protect System
p 2152 952 100 0 -1 sett1:Optics Subsystem - Stream Device PS Status
p 2568 824 150 0 -1 setdat:2016/08/15
p 2328 872 200 0 -1 setd:$Revision: 1.1 $
p 2168 760 150 0 -1 setf:emps_canps1.sch
use trcalcos 1740 1219 100 0 $(PS):STATUS
xform 0 1800 1520
p 1684 1219 100 0 -1 PV:$(D)
p 1489 1706 100 0 -1 def(INPA):$(PS):STATON MS
p 1478 1673 100 0 -1 def(INPB):$(PS):STATTMO MS
p 1511 1640 100 0 -1 def(INPC):$(PS):ALIVE MS
p 1503 1609 100 0 -1 def(INPD):$(PS):STATPRES
p 1736 1680 150 0 1 CALC:L?((A&!B&C&D&!E)?1:0):2
p 1735 1659 100 0 1 OCAL:L?(E?4:(!D|!C?3:(B?2:(!A?1:0)))):5
p 1950 1483 100 0 1 def(OUT):$(D)$(PS):STATTEXT PP
p 1736 1424 100 0 1 OOPT:Every Time
p 1739 1639 100 0 1 DOPT:Use OCAL
p 1526 1577 100 0 -1 def(INPE):$(PS):STATLB
p 1444 1544 100 0 0 def(INPG):
p 1403 1547 100 0 0 def(INPF):
use embbis 3442 1216 100 0 $(PS):STATTEXT
xform 0 3536 1280
p 3478 1182 100 0 1 ONVL:1
p 3481 1165 100 0 1 TWVL:2
p 3483 1148 100 0 1 THVL:3
p 3568 1200 100 0 1 ZRST:OK
p 3563 1182 100 0 1 ONST:Off
p 3567 1163 100 0 1 TWST:Timeout
p 3569 1147 100 0 1 THST:CANBUS
p 3483 1202 100 0 1 ZRVL:0
p 3386 1216 100 0 -1 PV:$(D)
p 3485 1131 100 0 1 FRVL:4
p 3487 1114 100 0 1 FVVL:5
p 3571 1129 100 0 1 FRST:Loop Back
p 3571 1111 100 0 1 FVST:Not Monitored
p 3488 1098 100 0 0 SXVL:0
p 3569 1095 100 0 0 SXST:
use inhier 955 928 100 0 scanin
xform 0 992 904
use outhier 4707 1942 100 0 flink
xform 0 4720 1912
use inhier 925 1342 100 0 enable
xform 0 960 1320
use outhier 4743 1897 100 0 statok
xform 0 4760 1880
use ecalcos 4455 1588 100 0 $(PS):RDCUROK
xform 0 4552 1880
p 4399 1588 100 0 -1 PV:$(D)
p 4491 2043 150 0 1 CALC:F?A&(ABS(B-C)<(0.005*ABS(D-E))):A
p 4716 1841 100 0 1 def(OUT):
p 4492 2020 100 0 1 OCAL:0
p 4213 2036 100 0 1 def(INPB):$(PS):CUR
p 4488 1784 100 0 1 OOPT:On Change
p 4187 2001 100 0 1 def(INPC):$(PS):RDCUR
p 4155 1967 100 0 1 def(INPD):$(PS):CUR.DRVH
p 4162 1938 100 0 1 def(INPE):$(PS):CUR.DRVL
p 4096 1905 100 0 0 def(INPF):
p 4139 2064 100 0 1 def(INPA):$(D)$(PS):STATUS
p 4296 1976 100 0 0 def(FLNK):
p 4460 1724 100 0 0 SCAN:Passive
p 4856 2182 100 0 1 DOPT:Use CALC
use ecalcos 3543 1364 100 0 $(PS):CURDISABLE
xform 0 3640 1656
p 3487 1364 100 0 -1 PV:$(D)
p 3576 1816 150 0 1 CALC:B=1
p 3804 1617 100 0 1 def(OUT):$(PS):CUR.DISP PP MS
p 3580 1796 100 0 1 OCAL:0
p 3301 1812 100 0 1 def(INPB):$(TL)
p 3576 1560 100 0 1 OOPT:On Change
p 3275 1777 100 0 0 def(INPC):
p 3243 1743 100 0 0 def(INPD):
p 3250 1714 100 0 0 def(INPE):
p 3235 1680 100 0 0 def(INPF):
p 3193 1842 100 0 0 def(INPA):$(D)$(PS):STATUS
p 3384 1752 100 0 0 def(FLNK):
p 3548 1500 100 0 0 SCAN:Passive
use embbis 3898 1216 100 0 $(PS):LOCKTEXT
xform 0 3992 1280
p 3934 1182 100 0 1 ONVL:1
p 3937 1165 100 0 1 TWVL:2
p 3939 1148 100 0 1 THVL:3
p 4024 1200 100 0 1 ZRST:Unlocked
p 4019 1182 100 0 1 ONST:Locked
p 4023 1163 100 0 1 TWST:Tune Lock Cur Trip
p 4025 1147 100 0 1 THST:
p 3939 1202 100 0 1 ZRVL:0
p 3842 1216 100 0 -1 PV:$(D)
p 3941 1131 100 0 1 FRVL:4
p 3943 1114 100 0 1 FVVL:5
p 4027 1129 100 0 1 FRST:
p 4027 1111 100 0 1 FVST:
p 3944 1098 100 0 0 SXVL:0
p 4025 1095 100 0 0 SXST:
use ecalcos 1151 804 100 0 $(PS):LOCKENABLE
xform 0 1248 1096
p 1095 804 100 0 -1 PV:$(D)
p 1184 1256 150 0 1 CALC:A>0
p 1412 1057 100 0 1 def(OUT):$(D)$(PS):LOCKTEXT PP
p 1188 1236 100 0 1 OCAL:A<2?0:(B?1:2)
p 827 1250 100 0 1 def(INPB):$(D)$(PS):RDCUROK
p 1184 1000 100 0 1 OOPT:Every Time
p 883 1217 100 0 0 def(INPC):
p 851 1183 100 0 0 def(INPD):
p 858 1154 100 0 0 def(INPE):
p 843 1120 100 0 0 def(INPF):
p 801 1282 100 0 0 def(INPA):
p 992 1192 100 0 0 def(FLNK):
p 1156 940 100 0 0 SCAN:Passive
p 1552 1398 100 0 1 DOPT:Use OCAL
[comments]
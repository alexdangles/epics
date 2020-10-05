[schematic2]
uniq 1
[tools]
[detail]
n -1647 1871 -1050 1967 100
BMPROPMAX is the maximum beam property that can be accepted
in the present state of each device. For the diagnostic box it is
actually determined by the LEAST tolerant (i.e MOST sensitive)
inserted device.
_
f 4182 -273 6269 1042 200 3328  NOT YET IMPLEMENTED
s 4754 917 100 0 THESE RECORDS ARE DUMMIES UNTIL BEAMLINE REACHES THEM
s -156 2453 400 0 ELBT/D
s 1812 2101 400 0 EMBT/D
s -516 -147 400 0 EABT/D
s 1716 -179 400 0 EHAT
s 4124 1805 400 0 EHBT / EHD
[cell use]
use ecalcs 239 1291 100 0 BMPROPMAXCALIB
xform 0 328 1576
p 181 1291 100 0 -1 PV:EMPS:
p -190 1781 100 0 1 def(INPA):EGUN:DB1:BMPROPMAX MS
p -181 1748 100 0 1 def(INPB):ELBT:DB0:BMPROPMAX MS
p -183 1719 100 0 1 def(INPC):ELBT:DB2:BMPROPMAX MS
p -109 1423 100 0 1 def(INPL):EMPS:BMPROPCALIB
p -93 1456 100 0 1 def(INPK):EMPS:BMPROPOTR
p 264 1736 150 0 1 CALC:(A>K)&(B>K)&(C>K)?L:0
use ecalcs -537 1859 100 0 BMPROPMAXELBT1
xform 0 -448 2144
p -595 1859 100 0 -1 PV:EMPS:
p -968 2347 100 0 1 def(INPA):EGUN:DB1:BMPROPMAX MS
p -959 2312 100 0 1 def(INPB):ELBT:DB0:BMPROPMAX MS
p -929 2282 100 0 0 def(INPC):0
p -866 1993 100 0 0 def(INPL):0
p -878 2029 100 0 0 def(INPK):0
p -512 2304 150 0 1 CALC:MIN(A,B)
use ecalcs -529 731 100 0 BMPROPMAXELBD1
xform 0 -440 1016
p -587 731 100 0 -1 PV:EMPS:
p -960 1219 100 0 1 def(INPA):ELBD:DB0:BMPROPMAX MS
p -951 1184 100 0 1 def(INPB):ELBD:DB1:BMPROPMAX MS
p -921 1154 100 0 0 def(INPC):0
p -858 865 100 0 0 def(INPL):0
p -870 901 100 0 0 def(INPK):0
p -504 1176 150 0 1 CALC:MIN(A,B)
use ecalcs 247 707 100 0 BMPROPMAXELBD
xform 0 336 992
p 189 707 100 0 -1 PV:EMPS:
p -184 1195 100 0 1 def(INPA):EMPS:BMPROPMAXELBT1 PP MS
p -186 1164 100 0 1 def(INPB):EMPS:BMPROPMAXELBD1 PP MS
p -145 1130 100 0 0 def(INPC):0
p -66 843 100 0 1 def(INPL):EMPS:BMPROPCW1
p -94 877 100 0 0 def(INPK):
p 130 1244 150 0 1 CALC:MIN(MIN(A,B),L)
use ecalcs 2439 1507 100 0 BMPROPMAXEMBD
xform 0 2528 1792
p 2381 1507 100 0 -1 PV:EMPS:
p 2008 1995 100 0 1 def(INPA):EMPS:BMPROPMAXEMBT1 PP MS
p 2005 1964 100 0 1 def(INPB):EMBD:DB2:BMPROPMAX MS
p 2005 1931 100 0 0 def(INPC):
p 2127 1645 100 0 1 def(INPL):EMPS:BMPROPCW1
p 2098 1677 100 0 0 def(INPK):
p 2232 2040 150 0 1 CALC:MIN(MIN(A,B),L)
use ecalcs 1559 1507 100 0 BMPROPMAXEMBT1
xform 0 1648 1792
p 1501 1507 100 0 -1 PV:EMPS:
p 1128 1995 100 0 1 def(INPA):EMPS:BMPROPMAXELBT2 PP MS
p 1137 1960 100 0 1 def(INPB):EMBT:DB0:BMPROPMAX MS
p 1167 1930 100 0 0 def(INPC):0
p 1230 1641 100 0 0 def(INPL):0
p 1218 1677 100 0 0 def(INPK):0
p 1584 1952 150 0 1 CALC:MIN(A,B)
p 1119 1295 100 0 0 def(INPD):0.000000000000000e+00
use ecalcs 1551 947 100 0 BMPROPMAXEMBT2
xform 0 1640 1232
p 1493 947 100 0 -1 PV:EMPS:
p 1113 1436 100 0 1 def(INPA):EMPS:BMPROPMAXEMBT1 PP MS
p 1097 1403 100 0 1 def(INPB):EMBT:DB4:BMPROPMAX MS
p 1109 1368 100 0 1 def(INPC):EMBT:DB5B:BMPROPMAX MS
p 1222 1081 100 0 0 def(INPL):0
p 1210 1117 100 0 0 def(INPK):0
p 1576 1392 150 0 1 CALC:MIN(MIN(MIN(A,B),C),D)
p 1125 1334 100 0 1 def(INPD):EMBT:DB6:BMPROPMAX MS
use ecalcs -561 -773 100 0 BMPROPMAXEABT1
xform 0 -472 -488
p -619 -773 100 0 -1 PV:EMPS:
p -1013 -286 100 0 1 def(INPA):EMPS:BMPROPMAXEMBT2 PP MS
p -1023 -319 100 0 1 def(INPB):EABT:DB1:BMPROPMAX MS
p -1019 -352 100 0 0 def(INPC):
p -890 -639 100 0 0 def(INPL):0
p -902 -603 100 0 0 def(INPK):0
p -536 -328 150 0 1 CALC:MIN(A,B)
use ecalcs 215 -1373 100 0 BMPROPMAXEABD
xform 0 304 -1088
p 157 -1373 100 0 -1 PV:EMPS:
p -236 -885 100 0 1 def(INPA):EMPS:BMPROPMAXEABT1 PP MS
p -228 -918 100 0 1 def(INPB):EABT:DB1:BMPROPMAX MS
p -232 -947 100 0 1 def(INPC):EABD:DB2:BMPROPMAX MS
p -111 -1239 100 0 1 def(INPL):EMPS:BMPROP100W
p -126 -1203 100 0 0 def(INPK):
p 7 -840 150 0 1 CALC:MIN(MIN(MIN(A,B),C),L)
use ecalcs 1535 -869 100 0 BMPROPMAXEHAT
xform 0 1624 -584
p 1477 -869 100 0 -1 PV:EMPS:
p 1134 -381 100 0 1 def(INPA):EMPS:BMPROPMAXEABT2 PP MS
p 1134 -416 100 0 1 def(INPB):EHAT:DB1:BMPROPMAX MS
p 1130 -446 100 0 1 def(INPC):EHAT:DB2:BMPROPMAX MS
p 1206 -735 100 0 0 def(INPL):0
p 1194 -699 100 0 0 def(INPK):0
p 1560 -424 150 0 1 CALC:MIN(MIN(MIN(A,B),C),D)
p 1098 -480 100 0 1 def(INPD):EHAT:DB4:BMPROPMAX MS
p 1322 -438 100 0 0 palrm(INPB):NMS
use ecalcs 3983 1139 100 0 BMPROPMAXEHD
xform 0 4072 1424
p 3925 1139 100 0 -1 PV:EMPS:
p 3531 1626 100 0 1 def(INPA):EMPS:BMPROPMAXEHAT PP MS
p 3521 1593 100 0 1 def(INPB):EHDT:DB6:BMPROPMAX MS
p 3525 1560 100 0 1 def(INPC):EHDT:DB4:BMPROPMAX MS
p 3654 1273 100 0 0 def(INPL):0
p 3642 1309 100 0 0 def(INPK):0
p 4008 1584 150 0 1 CALC:MIN(MIN(MIN(A,B),C),D)
p 3554 1527 100 0 1 def(INPD):EHDT:DB6:BMPROPMAX MS
use ecalcs 2391 -909 100 0 BMPROPMAXEHATFC1
xform 0 2480 -624
p 2333 -909 100 0 -1 PV:EMPS:
p 1980 -424 100 0 1 def(INPA):EMPS:BMPROPMAXEABT2 PP MS
p 1990 -453 100 0 0 def(INPB):
p 1988 -484 100 0 0 def(INPC):
p 2069 -774 100 0 1 def(INPL):EMPS:BMPROP100W
p 2050 -739 100 0 0 def(INPK):
p 2162 -369 150 0 1 CALC:MIN(A,L)
use ecalcs 207 -773 100 0 BMPROPMAXEABTFC2
xform 0 296 -488
p 149 -773 100 0 -1 PV:EMPS:
p -204 -288 100 0 1 def(INPA):EMPS:BMPROPMAXEABT1 PP MS
p -194 -317 100 0 1 def(INPB):EABT:DB1:BMPROPMAX MS
p -196 -348 100 0 1 def(INPC):
p -115 -638 100 0 1 def(INPL):EMPS:BMPROP100W
p -134 -603 100 0 0 def(INPK):
p -22 -233 150 0 1 CALC:MIN(MIN(A,B),L)
p -188 -384 100 0 1 def(INPD):
use ecalcs 2407 -1477 100 0 BMPROPMAXEHATFC4
xform 0 2496 -1192
p 2349 -1477 100 0 -1 PV:EMPS:
p 1956 -989 100 0 1 def(INPA):EMPS:BMPROPMAXEABT2 PP MS
p 1976 -1023 100 0 1 def(INPB):EHAT:DB1:BMPROPMAX MS
p 1988 -1055 100 0 1 def(INPC):EHAT:DB2:BMPROPMAX MS
p 2075 -1335 100 0 1 def(INPL):EMPS:BMPROP100W
p 2066 -1307 100 0 0 def(INPK):
p 2432 -1032 150 0 1 CALC:MIN(MIN(MIN(A,B),C),L)
p 2007 -1086 100 0 0 def(INPD):
p 2136 -1153 100 0 0 primitive:calc
use ecalcs 4599 -173 100 0 BMPROPMAXEHBTFC25
xform 0 4688 112
p 4541 -173 100 0 -1 PV:EMPS:
p 4227 310 100 0 1 def(INPA):EMPS:BMPROPNOBEAM
p 4177 280 100 0 0 def(INPB):
p 4207 250 100 0 0 def(INPC):0
p 4270 -39 100 0 0 def(INPL):0
p 4258 -3 100 0 0 def(INPK):0
p 4624 272 150 0 1 CALC:A
use ecalcs 5167 379 100 0 BMPROPMAXEHBTFC33
xform 0 5256 664
p 5109 379 100 0 -1 PV:EMPS:
p 4795 862 100 0 1 def(INPA):EMPS:BMPROPNOBEAM
p 4745 832 100 0 0 def(INPB):
p 4775 802 100 0 0 def(INPC):0
p 4838 513 100 0 0 def(INPL):0
p 4826 549 100 0 0 def(INPK):0
p 5192 824 150 0 1 CALC:A
use ecalcs 5175 -197 100 0 BMPROPMAXEHBTFC43
xform 0 5264 88
p 5117 -197 100 0 -1 PV:EMPS:
p 4803 286 100 0 1 def(INPA):EMPS:BMPROPNOBEAM
p 4753 256 100 0 0 def(INPB):
p 4783 226 100 0 0 def(INPC):0
p 4846 -63 100 0 0 def(INPL):0
p 4834 -27 100 0 0 def(INPK):0
p 5200 248 150 0 1 CALC:A
use ecalcs 4615 395 100 0 BMPROPMAXEHBTFC8
xform 0 4704 680
p 4557 395 100 0 -1 PV:EMPS:
p 4243 878 100 0 1 def(INPA):EMPS:BMPROPNOBEAM
p 4193 848 100 0 0 def(INPB):
p 4223 818 100 0 0 def(INPC):0
p 4286 529 100 0 0 def(INPL):0
p 4274 565 100 0 0 def(INPK):0
p 4640 840 150 0 1 CALC:A
use ecalcs 2431 931 100 0 BMPROPMAXEMBTFC6
xform 0 2520 1216
p 2373 931 100 0 -1 PV:EMPS:
p 1980 1419 100 0 1 def(INPA):EMPS:BMPROPMAXEMBT1 PP MS
p 2000 1385 100 0 1 def(INPB):EMBT:DB4:BMPROPMAX MS
p 2012 1353 100 0 1 def(INPC):EMBT:DB5B:BMPROPMAX MS
p 2099 1073 100 0 1 def(INPL):EMPS:BMPROP100W
p 2090 1101 100 0 0 def(INPK):
p 2456 1376 150 0 1 CALC:MIN(MIN(MIN(A,B),C),L)
p 2031 1322 100 0 0 def(INPD):
p 2160 1255 100 0 0 primitive:calc
use ecalcs -537 1307 100 0 BMPROPMAXELBT2
xform 0 -448 1592
p -595 1307 100 0 -1 PV:EMPS:
p -968 1795 100 0 1 def(INPA):EMPS:BMPROPMAXELBT1 PP MS
p -959 1760 100 0 1 def(INPB):ELBT:DB2:BMPROPMAX MS
p -929 1730 100 0 0 def(INPC):0
p -866 1441 100 0 0 def(INPL):0
p -878 1477 100 0 0 def(INPK):0
p -512 1752 150 0 1 CALC:MIN(A,B)
use ecalcs -553 -1341 100 0 BMPROPMAXEABT2
xform 0 -464 -1056
p -611 -1341 100 0 -1 PV:EMPS:
p -1005 -854 100 0 1 def(INPA):EMPS:BMPROPMAXEABT1 PP MS
p -1015 -887 100 0 1 def(INPB):EABT:DB2:BMPROPMAX MS
p -1011 -920 100 0 0 def(INPC):
p -882 -1207 100 0 0 def(INPL):0
p -894 -1171 100 0 0 def(INPK):0
p -528 -896 150 0 1 CALC:MIN(A,B)
use ecalcs 5871 131 100 0 BMPROPMAXAETE
xform 0 5960 416
p 5813 131 100 0 -1 PV:EMPS:
p 5499 614 100 0 1 def(INPA):EMPS:BMPROPNOBEAM
p 5449 584 100 0 0 def(INPB):
p 5479 554 100 0 0 def(INPC):0
p 5542 265 100 0 0 def(INPL):0
p 5530 301 100 0 0 def(INPK):0
p 5896 576 150 0 1 CALC:A
[comments]
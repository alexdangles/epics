#!/usr/bin/env python3
# $Revision: 1.14 $ $Date: 2020/09/09 18:47:35 $

from epics import caget, caput, cainfo
b1 = caget('ALEX:BO.VAL')
print(b1)

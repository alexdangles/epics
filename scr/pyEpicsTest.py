#!/usr/bin/env python3

from epics import caget, caput, cainfo, camonitor
caput('ALEX:BO', 1)
b0 = caget('ALEX:BO')
print(b0)

#!./elmps02ioc
# mps testing on ALEXIOC
# startup2.mps
# for epics release R3.14.x
#
# specify IOC Application for BootConfigure tool
#
# kernel: /usr1/local/epics/iocApp/elmps02iocApp/R1_2_EPICS3_14_12_3/bin/linux-x86/elmps02ioc
# metadata: kernel="/usr1/local/epics/iocApp/elmps02iocApp/R1_2_EPICS3_14_12_3/bin/linux-x86/elmps02ioc"
#
epicsEnvSet(IOCSH_PS1, "mps>")
epicsEnvSet(EPICS_TS_NTP_INET,"142.90.98.144")
epicsEnvSet(EPICS_TIMEZONE,"UTC::480:40404:103104")
epicsEnvSet(EPICS_IOC_CA_PUT_LOG_INET,"142.90.98.144")
epicsEnvSet(EPICS_IOC_CA_PUT_LOG_PORT,"7000")
epicsEnvSet(EPICS_IOC_LOG_PORT,"7015")
epicsEnvSet(EPICS_CA_REPEATER_PORT, 9191)
epicsEnvSet(EPICS_CA_SERVER_PORT, 9192)
epicsEnvSet(EPICS_TS_MIN_WEST, 480)

# ====== load and intialize application DBD file(s) =================
# (this must match the name of the executable binary in the shebang line)
#
dbLoadDatabase("elmps02ioc.dbd")
elmps02ioc_registerRecordDeviceDriver(pdbbase)

#
# =========== Load EPICS runtime DB =======================
#
dbLoadRecords("emps_beampathoptics.db")
#dbLoadRecords("emps_beammode.db")
#dbLoadRecords("emps_beamdefs.db")
#dbLoadRecords("emps_bmpropcfg.db")
#dbLoadRecords("emps_beampropmax.db")
#

## ===================================================
iocInit
## ===================================================

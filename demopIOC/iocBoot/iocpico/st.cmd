#!../../bin/linux-x86_64/pico

## You may have to change pico to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet("PMC", "TEST")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/protocols")

## Register all support components
dbLoadDatabase "dbd/pico.dbd"
pico_registerRecordDeviceDriver pdbbase
drvAsynIPPortConfigure("$(PMC)", "10.10.7.202:23")
## Load record instances
dbLoadRecords("db/general.db"," P = pico , AXIS = 4 , PORT = $(PMC) ,PMC = $(PMC) ") 
dbLoadRecords("db/axis.db"," P = pico , AXIS = 4 , PORT = $(PMC) , PMC = $(PMC)")
dbLoadRecords("db/velo.db","  P = pico , AXIS = 4 , PORT = $(PMC) , PMC = $(PMC)")
dbLoadRecords("db/axis.db"," P = pico , AXIS = 1 , PORT = $(PMC) , PMC = $(PMC)")
## dbLoadRecords("db/general.db"," P = pico , AXIS = 1 , PORT = $(PMC) ,PMC = $(PMC) ")
cd "${TOP}/iocBoot/${IOC}"
iocInit
asynSetTraceMask("$(PMC)", -1, 0x9)
asynSetTraceIOMask("$(PMC)", -1, 0x9)
## Start any sequence programs
#seq sncxxx,"user=epics"

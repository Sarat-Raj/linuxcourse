#!../../bin/linux-x86_64/forgottenIOC

## You may have to change forgottenIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/protocols")

## Register all support components
dbLoadDatabase "dbd/forgottenIOC.dbd"
forgottenIOC_registerRecordDeviceDriver pdbbase
drvAsynIPPortConfigure("po","10.10.7.202:23")

## Load record instances
dbLoadRecords("db/forgottenPVS.db","F=pico,AXIS=4,PORT=po")

cd "${TOP}/iocBoot/${IOC}"
#asynSetTraceMask("po",-1,0x9)
#asynSetTraceIOMask("po",-1,0x9)
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"

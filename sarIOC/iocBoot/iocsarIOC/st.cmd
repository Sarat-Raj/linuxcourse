#!../../bin/linux-x86_64/sarIOC

## You may have to change sarIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/sarIOC.dbd"
sarIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/samplePV.db", "sar=whatsup")
dbLoadRecords("db/samplePV.db", "sar=raj")
dbLoadRecords("db/samplePV.db", "sar=hello")
cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"

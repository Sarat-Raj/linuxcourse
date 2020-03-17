#!../../bin/linux-x86_64/calIOC

## You may have to change calIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/calIOC.dbd"
calIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/calPV.db","lc = l1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=epics"

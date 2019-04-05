#!../../bin/linux-x86_64/oriel

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/oriel.dbd"
oriel_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"

## motorUtil (allstop & alldone)
dbLoadRecords("$(MOTOR)/db/motorUtil.db", "P=oriel:")

## 
< EMC18011.cmd

iocInit

## motorUtil (allstop & alldone)
motorUtilInit("oriel:")

# Boot complete

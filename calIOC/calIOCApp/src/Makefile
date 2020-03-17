TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = calIOC
# calIOC.dbd will be created and installed
DBD += calIOC.dbd

# calIOC.dbd will be made up from these files:
calIOC_DBD += base.dbd
calIOC_DBD += calcSupport.dbd
# Include dbd files from all support applications:
#calIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#calIOC_LIBS += xxx
calIOC_LIBS += calc
# calIOC_registerRecordDeviceDriver.cpp derives from calIOC.dbd
calIOC_SRCS += calIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
calIOC_SRCS_DEFAULT += calIOCMain.cpp
calIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#calIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
calIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


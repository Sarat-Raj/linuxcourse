TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = sarIOC
# sarIOC.dbd will be created and installed
DBD += sarIOC.dbd

# sarIOC.dbd will be made up from these files:
sarIOC_DBD += base.dbd

# Include dbd files from all support applications:
#sarIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#sarIOC_LIBS += xxx

# sarIOC_registerRecordDeviceDriver.cpp derives from sarIOC.dbd
sarIOC_SRCS += sarIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
sarIOC_SRCS_DEFAULT += sarIOCMain.cpp
sarIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#sarIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
sarIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


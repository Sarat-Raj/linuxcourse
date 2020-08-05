TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = basicIOC
# basicIOC.dbd will be created and installed
DBD += basicIOC.dbd

# basicIOC.dbd will be made up from these files:
basicIOC_DBD += base.dbd

# Include dbd files from all support applications:
#basicIOC_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#basicIOC_LIBS += xxx

# basicIOC_registerRecordDeviceDriver.cpp derives from basicIOC.dbd
basicIOC_SRCS += basicIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
basicIOC_SRCS_DEFAULT += basicIOCMain.cpp
basicIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#basicIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
basicIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


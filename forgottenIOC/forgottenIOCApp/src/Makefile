TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = forgottenIOC
# forgottenIOC.dbd will be created and installed
DBD += forgottenIOC.dbd

# forgottenIOC.dbd will be made up from these files:
forgottenIOC_DBD += base.dbd
forgottenIOC_DBD += myAsynRegistration.dbd
# Include dbd files from all support applications:
forgottenIOC_DBD += asyn.dbd
forgottenIOC_DBD += stream.dbd

# Add all the support libraries needed by this IOC
forgottenIOC_LIBS += asyn
forgottenIOC_LIBS += stream

# forgottenIOC_registerRecordDeviceDriver.cpp derives from forgottenIOC.dbd
forgottenIOC_SRCS += forgottenIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
forgottenIOC_SRCS_DEFAULT += forgottenIOCMain.cpp
forgottenIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#forgottenIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
forgottenIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


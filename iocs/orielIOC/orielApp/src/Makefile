TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

# The following are used for debugging messages.
#!USR_CXXFLAGS += -DDEBUG

#=============================
# Build the IOC application

PROD_IOC = oriel
# oriel.dbd will be created and installed
DBD += oriel.dbd

# oriel.dbd will be made up from these files:
oriel_DBD += base.dbd

# Include dbd files from all support applications:
#ifdef ASYN
oriel_DBD += asyn.dbd
#endif
oriel_DBD += motorSupport.dbd
oriel_DBD += devOriel.dbd

# Add all the support libraries needed by this IOC
oriel_LIBS += oriel
oriel_LIBS += motor
#ifdef ASYN
oriel_LIBS += asyn
#endif
#ifdef SNCSEQ
oriel_LIBS += seq pv
#endif

# oriel_registerRecordDeviceDriver.cpp derives from oriel.dbd
oriel_SRCS += oriel_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
oriel_SRCS_DEFAULT += orielMain.cpp
oriel_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#oriel_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
oriel_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


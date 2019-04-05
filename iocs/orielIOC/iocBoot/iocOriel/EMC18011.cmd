
drvAsynSerialPortConfigure("serial1", "/dev/ttyS0", 0, 0, 0)
asynSetOption(serial1,0,baud,4800)
asynOctetSetOutputEos("serial1",0,"\r")
asynOctetSetInputEos("serial1",0,"\n")

dbLoadTemplate("EMC18011.substitutions")

# Oriel Encoder Mike - driver setup parameters:
#     (1) maximum number of controllers in system
#     (2) motor task polling rate (min=1Hz, max=60Hz)
EMC18011Setup(1, 60)

# Oriel Encoder Mike driver configuration parameters:
#     (1) controller being configured
#     (2) asyn port name (string)
EMC18011Config(0, "serial1")

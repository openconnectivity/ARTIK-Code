#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/SConscript $CURPWD/"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/pi-boards/artiklight/artiklight.json $CURPWD/$PROJNAME.json"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/artiklight.cpp $CURPWD/src/$PROJNAME.cpp"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/artiklight.cpp.gen $CURPWD/src/$PROJNAME.cpp.gen"
eval ${MY_COMMAND}

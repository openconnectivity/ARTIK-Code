#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/Makefile $CURPWD/"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/artik/artiklight/artiklight.json $CURPWD/$PROJNAME.json"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/artiklight.c $CURPWD/src/$PROJNAME.c"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/artiklight.c.gen $CURPWD/src/$PROJNAME.c.gen"
eval ${MY_COMMAND}

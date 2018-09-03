#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/Makefile $CURPWD/"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/pi-boards/enviro-phat/OCFArtikEnviro.json $CURPWD/$PROJNAME.json"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/OCFArtikEnviro.c $CURPWD/src/$PROJNAME.c"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/OCFArtikEnviro.c.gen $CURPWD/src/$PROJNAME.c.gen"
eval ${MY_COMMAND}

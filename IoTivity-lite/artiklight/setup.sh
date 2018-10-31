#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/Makefile ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/automation-phat-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/ARTIK-Code/pi-boards/artiklight/automation-phat.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/automation-phat.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/automation-phat-gen.c ${CURPWD}/src/${PROJNAME}-gen.c

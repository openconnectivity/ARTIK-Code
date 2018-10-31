#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/automation-phat/Makefile ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/automation-phat/automation-phat-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/ARTIK-Code/artik/automation-phat/automation-phat.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/automation-phat/automation-phat.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/automation-phat/automation-phat-gen.c ${CURPWD}/src/${PROJNAME}-gen.c
cp ${EXAMPLEPATH}/ARTIK-Code/artik/automation-phat/automation-hat.py ${CURPWD}/bin/

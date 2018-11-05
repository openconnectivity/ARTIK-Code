#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/Makefile ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/artiklight-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/ARTIK-Code/artik/artiklight/artiklight.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/artiklight.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artiklight/artiklight-gen.c ${CURPWD}/src/${PROJNAME}-gen.c

#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp -f ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/example/Makefile ${CURPWD}/Makefile
cp -f ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/example/example-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/ARTIK-Code/artik/example/example.json ${CURPWD}/${PROJNAME}.json

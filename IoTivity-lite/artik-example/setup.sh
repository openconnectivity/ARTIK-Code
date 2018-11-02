#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artik-example/Makefile ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artik-example/artik-example-config.json ${CURPWD}/${PROJNAME}-config.json
cp ${EXAMPLEPATH}/ARTIK-Code/artik/artik-example/artik-example.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artik-example/artik-example.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/artik-example/artik-example-gen.c ${CURPWD}/src/${PROJNAME}-gen.c

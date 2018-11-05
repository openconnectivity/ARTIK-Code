#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/SConscript ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/artik/artiklight/artiklight.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/artiklight.cpp ${CURPWD}/src/${PROJNAME}.cpp
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/artiklight/artiklight-gen.cpp ${CURPWD}/src/${PROJNAME}-gen.cpp

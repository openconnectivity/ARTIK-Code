#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/Makefile ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/artik/OCFArtikEnviro/OCFArtikEnviro.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/OCFArtikEnviro.c ${CURPWD}/src/${PROJNAME}.c
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity-lite/OCFArtikEnviro/OCFArtikEnviro-gen.c ${CURPWD}/src/${PROJNAME}-gen.c

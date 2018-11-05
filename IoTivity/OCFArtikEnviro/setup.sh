#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/SConscript ${CURPWD}/
cp ${EXAMPLEPATH}/ARTIK-Code/artik/OCFArtikEnviro/OCFArtikEnviro.json ${CURPWD}/${PROJNAME}.json
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/OCFArtikEnviro.cpp ${CURPWD}/src/${PROJNAME}.cpp
cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/OCFArtikEnviro-gen.cpp ${CURPWD}/src/${PROJNAME}-gen.cpp

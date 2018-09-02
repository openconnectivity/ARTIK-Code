#!/bin/bash
CURPWD=`pwd`
PROJNAME=${PWD##*/}

MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/SConscript $CURPWD/"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/artik/OCFArtikEnviro/OCFArtikEnviro.json $CURPWD/$PROJNAME.json"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/OCFArtikEnviro.cpp $CURPWD/src/$PROJNAME.cpp"
eval ${MY_COMMAND}
MY_COMMAND="cp ${EXAMPLEPATH}/ARTIK-Code/IoTivity/OCFArtikEnviro/OCFArtikEnviro.cpp.gen $CURPWD/src/$PROJNAME.cpp.gen"
eval ${MY_COMMAND}

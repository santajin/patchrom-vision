#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
    patch $2/AndroidManifest.xml < $1/AndroidManifest.xml.diff
	cd ..
    for file in `find $2 -name *.rej`
    do
	echo "MMS patch fail"
        exit 1
	done	
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-hdpi $2/res/values-hdpi
fi

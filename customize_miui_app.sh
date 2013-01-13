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
    patch $2/AndroidManifest.xml < $1/AndroidManifest.xml.diff
	cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Phone patch fail"
        exit 1
	done	
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-hdpi $2/res/values-hdpi
fi

if [ $1 = "Provision" ];then
    $XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
    $XMLMERGYTOOL $1/res/drawable-zh-rCN-hdpi $2/res/drawable-zh-rCN-hdpi
    $XMLMERGYTOOL $1/res/drawable-zh-rTW-hdpi $2/res/drawable-zh-rTW-hdpi
fi

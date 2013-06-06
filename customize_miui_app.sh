#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply


curdir=`pwd`


if [ $1 = "Settings" ];then
    #cp $1/*.part out/
    #cd out
    #$GIT_APPLY Settings.part
    #cd ..
    #for file in `find $2 -name *.rej`
    #do
	#echo "Fatal error: Settings patch fail"
    #    exit 1
    #done

	$XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-hdpi $2/res/values-hdpi
	cp $1/Settings.part out/
	cd out
	patch -p1 < Settings.part
	cd ..
	for file in `find $2 -name *.rej`
	do
	echo "Fatal error: Settings patch fail"
            exit 1
	done
fi

if [ $1 = "Mms" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    cp $1/*.part out/
    cd out
    $GIT_APPLY Mms.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	#echo "Fatal error: Settings patch fail"
        exit 1
    done
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
    #mkdir -p $2/res/drawable-hdpi/
    #mkdir -p $2/res/drawable-largeui-hdpi/
    #cp $MIUISRCDIR/packages/apps/$1/res/drawable-hdpi/*.png $2/res/drawable-hdpi/
    #cp $MIUI_SRC_DIR/packages/apps/$1/res/drawable-largeui-hdpi/*.png $2/res/drawable-largeui-hdpi/
fi

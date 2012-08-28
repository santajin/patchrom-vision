#!/bin/bash
#
#
rm PhoneWindowManager_bak.smali
cp -rf ../android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali PhoneWindowManager_bak.smali 
cp -rf PhoneWindowManager.smali ../android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
rm power_profile_bak.xml
cp -rf  ../framework-res/res/xml/power_profile.xml power_profile_bak.xml
cp -rf power_profile.xml ../framework-res/res/xml/power_profile.xml
rm arrays_bak.xml
cp -rf ../framework-res/res/values/arrays.xml arrays_bak.xml
cp -rf arrays.xml ../framework-res/res/values/arrays.xml


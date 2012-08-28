#
# Makefile for onex #

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip
local-out-zip-file := G12_MIUI.zip

#the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/vision


# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider HTCAlbum HTCCamera

local-modified-jars := HTCExtension framework2

local-miui-modified-apps := Phone ThemeManager Mms MiuiHome Settings MiuiGallery
# All apks from MIUI
local-miui-removed-apps  := LatinIME SettingsProvider Stk Bluetooth MediaProvider


#local-remove-apps := Twitter  
# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation Bluetooth BrcmBluetoothServices \
	CertInstaller DefaultContainerService DFPI DrmProvider FilePicker \
	HTC_IME HTCCamera HtcFMRadio com.htc.FMRadioWidget  HTMLViewer KeyChain LMW  \
	NoiseField PluginManager SDCardWizard SharedStorageBackup BlueSky Stk \
	TrimIt UploadProvider Usage UserDictionaryProvider WifiRouter \
	CustomizationSettingsProvider SettingsProvider HTCAlbum MediaProvider \
	PhaseBeam

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# Target to test if full ota package will be generate
#ROM_BUILD_NUMBER  := $(USER).$(shell date +%Y%m%d.%H%M%S)
#BUILD_NUMBER=`echo $(date +%Y.%m.%d)|awk 'BEGIN {FS="."} {printf("%d.%d.%d",$1%10,$2+0,$3+0)}'`
myota: BUILD_NUMBER = 2.8.25
myota: target_files
	@echo ">>> To build out target file: myota.zip ..."
	$(BUILD_TARGET_FILES) $(INCLUDE_DATA_PARTITION) Miui_DesireZ_$(BUILD_NUMBER).zip
	@echo "<<< build target file completed!"

# To define any local-target
local-zip-misc:
	@echo Update boot image
	cp other1/boot.img $(ZIP_DIR)/boot.img

	@echo Update build.prop
	cp other1/build.prop $(ZIP_DIR)/system/build.prop

	@echo add liblbesec.so
	cp other/liblbesec.so $(ZIP_DIR)/system/lib/liblbesec.so

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/

	@echo add spn-conf.xml
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml

	cp -rf other1/system $(ZIP_DIR)/

	rm -f $(ZIP_DIR)/system/etc/AIC3254_REG_DualMic.*
	rm -f $(ZIP_DIR)/system/etc/AIC3254_REG_DualMic_XB.csv
	rm -f $(ZIP_DIR)/system/etc/AIC3254_REG_DualMic_XC.csv
	rm -f $(ZIP_DIR)/system/etc/firmware/BCM4329B1_002.002.023.0589.0647_saga.hcd
	rm -f $(ZIP_DIR)/system/lib/hw/gps.saga.so
	rm -f $(ZIP_DIR)/system/lib/hw/sensors.saga.so
	rm -f $(ZIP_DIR)/system/lib/modules/bcm4329.ko
	rm -f $(ZIP_DIR)/system/lib/modules/kineto_gan.ko
	rm -f $(ZIP_DIR)/system/usr/keylayout/saga*.*


	@echo delete redundance files
	rm -f $(ZIP_DIR)/system/customize/resource/*.png
	rm -rf $(ZIP_DIR)/system/media/weather
	rm -rf $(ZIP_DIR)/system/media/video
	rm -f $(ZIP_DIR)/system/bin/su

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip

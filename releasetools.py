import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "vision" || getprop("ro.build.product") == "vision");')
        if """ui_print("Creating system links...");""" in edify.script[i]:
			edify.script[i] = """delete_recursive("/sdcard/.data/navigator/Data/Temporary");
delete_recursive("/sdcard/LazyList");
delete_recursive("/sdcard/LOST.DIR");
delete_recursive("/sdcard/.data/mail");
delete_recursive("/sdcard/Android/data/com.android.providers.media");
delete_recursive("/sdcard/Bugreports");
delete_recursive("/sdcard/.android_secure");
delete_recursive("/sdcard/.bookmark_thumb1");
delete_recursive("/sdcard/.data");
ui_print("Creating system links...");"""
    return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)

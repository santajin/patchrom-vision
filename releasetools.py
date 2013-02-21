import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "vision" || getprop("ro.build.product") == "vision");')
        if """set_perm(0, 2000, 0550, "/system/etc/init.goldfish.sh");""" in edify.script[i]:
            edify.script[i] = """set_perm_recursive(0, 2000, 0755, 0755, "/system/etc/init.d");
set_perm(0, 0, 0755, "/system/etc/init.d");
set_perm(0, 2000, 0550, "/system/etc/init.goldfish.sh");"""
    return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)

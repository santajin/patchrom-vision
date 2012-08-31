import common
import edify_generator

def DeleteFormat(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "format" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""#ui_print("do not formate system");
format("ext4", "EMMC", "/dev/block/mmcblk0p25", "0");"""
        elif "mount" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""mount("ext4", "EMMC", "/dev/block/mmcblk0p25", "/system");
#mount("ext4", "EMMC", "/dev/block/mmcblk0p28", "/system/lib");
delete_recursive("/system/lib", "/system/app", "/system/bin", "/system/customize", "/system/etc", "/system/fonts", "/system/framework", "/system/media", "/system/tts", "/system/usr", "/system/xbin","/system/build.prop", "0");
#mount("ext4", "EMMC", "/dev/block/mmcblk0p28", "/system/lib");
run_program("/sbin/busybox", "rm", "/system/lib/*", "-rf");"""

    return

def AddAssertions(info):
    info.script.AppendExtra('set_perm_recursive(0, 2000, 06755, 06755, "/system/xbin");');
    info.script.AppendExtra('#unmount("/system/lib");');
    info.script.AppendExtra('set_perm(0, 2000, 0755, "/system/xbin/sqlite3");');
    info.script.AppendExtra('set_perm(0, 2000, 0755, "/system/xbin/zipalign");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0750, "/system/etc/init.d");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0750, "/system/etc/pre-init.d");');
    info.script.AppendExtra('set_perm(0, 0, 0755, "/system/etc/init.d");');
    info.script.AppendExtra('set_perm(0, 0, 0755, "/system/etc/pre-init.d");');
    info.script.AppendExtra('symlink("fw_bcm4329.bin", "/system/etc/firmware/fw_bcm4330_b2.bin");');
    info.script.AppendExtra('symlink("fw_bcm4329_apsta.bin", "/system/etc/firmware/fw_bcm4330_apsta_b2.bin");');
    info.script.AppendExtra('symlink("fw_bcm4329_p2p.bin", "/system/etc/firmware/fw_bcm4330_p2p_b2.bin");');
    info.script.AppendExtra('set_perm_recursive(0, 0, 0755, 0755, "/system/virtuous/scripts");');
    info.script.AppendExtra('ui_print(" >>> Running ROM configuration scripts ...");');
    info.script.AppendExtra('package_extract_dir("system/virtuous/setup", "/tmp");');
    info.script.AppendExtra('set_perm_recursive(0, 0, 0755, 0755, "/tmp");');
    info.script.AppendExtra('run_program("/tmp/virtuous-setup_rom");');
    info.script.AppendExtra('run_program("/tmp/virtuous-customize_xml");');
    info.script.AppendExtra('delete("/tmp/virtuous-setup_rom");');
    info.script.AppendExtra('delete("/tmp/virtuous-customize_xml");');
    info.script.AppendExtra('ui_print(" >>> Enabling ext4 optimizations ...");');
    info.script.AppendExtra('run_program("/tmp/virtuous-optimize_ext4");');
    info.script.AppendExtra('delete("/tmp/virtuous-optimize_ext4");');
    info.script.AppendExtra('ui_print(" >>> Optimizing SQLite database ...");');
    info.script.AppendExtra('run_program("/tmp/sqlite_optimize");');
    info.script.AppendExtra('delete("/tmp/sqlite_optimize");');
    info.script.AppendExtra('ui_print(" >>> Zipaligning ...");');
    info.script.AppendExtra('run_program("/tmp/zipalign");');
    info.script.AppendExtra('delete("/tmp/zipalign");');
    return

def FullOTA_InstallEnd(info):
    DeleteFormat(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "mount" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""mount("ext4", "EMMC", "/dev/block/mmcblk0p25", "/system");
#mount("ext4", "EMMC", "/dev/block/mmcblk0p28", "/system/lib");"""
    AddAssertions(info)

.class public Lcom/android/OriginalSettings/AndromadusBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndromadusBootReceiver.java"


# static fields
.field private static final S2W_SETTINGS_PROP:Ljava/lang/String; = "sys.s2w.restored"

.field private static final TAG:Ljava/lang/String; = "AndromadusBootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private configureS2W(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 51
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "sweep2wake_setting"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, s2w:Ljava/lang/String;
    const-string v2, "/sys/android_touch/sweep2wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    const-string v2, "AndromadusBootReceiver"

    const-string v3, "S2W settings restored."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 40
    const-string v0, "sys.s2w.restored"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "sys.s2w.restored"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/AndromadusBootReceiver;->configureS2W(Landroid/content/Context;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "sys.s2w.restored"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

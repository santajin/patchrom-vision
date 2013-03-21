.class public Lcom/android/OriginalSettings/cmstats/ReportingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "ReportingServiceManager.java"


# static fields
.field public static final dMill:J = 0x5265c00L

.field public static final tFrame:J = 0x240c8400L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static launchService(Landroid/content/Context;)V
    .locals 15
    .parameter "ctx"

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 66
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 67
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 68
    .local v5, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 69
    const-string v10, "CMStats"

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 70
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v10, "pref_anonymous_checked_in"

    invoke-interface {v7, v10, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 71
    .local v3, lastSynced:J
    const-string v10, "pref_anonymous_first_boot"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    .local v2, firstBoot:Z
    const-string v10, "pref_anonymous_opt_in"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 73
    .local v6, optedIn:Z
    const-string v10, "pref_anonymous_alarm_set"

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, alarmSet:Z
    if-eqz v0, :cond_1

    .line 92
    .end local v0           #alarmSet:Z
    .end local v2           #firstBoot:Z
    .end local v3           #lastSynced:J
    .end local v6           #optedIn:Z
    .end local v7           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0       #alarmSet:Z
    .restart local v2       #firstBoot:Z
    .restart local v3       #lastSynced:J
    .restart local v6       #optedIn:Z
    .restart local v7       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v9, 0x0

    .line 78
    .local v9, shouldSync:Z
    cmp-long v10, v3, v13

    if-nez v10, :cond_5

    .line 79
    const/4 v9, 0x1

    .line 83
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-eqz v2, :cond_6

    .line 84
    :cond_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v8, sIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/android/OriginalSettings/cmstats/ReportingService;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    const-string v10, "firstBoot"

    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 80
    .end local v8           #sIntent:Landroid/content/Intent;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    const-wide/32 v12, 0x240c8400

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    .line 81
    const/4 v9, 0x1

    goto :goto_1

    .line 88
    :cond_6
    if-eqz v6, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/OriginalSettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected static setAlarm(Landroid/content/Context;)V
    .locals 15
    .parameter "ctx"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 45
    const-string v9, "CMStats"

    invoke-virtual {p0, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 46
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "pref_anonymous_alarm_set"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    const-string v9, "pref_anonymous_opt_in"

    invoke-interface {v5, v9, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 48
    .local v4, optedIn:Z
    const-string v9, "pref_anonymous_first_boot"

    invoke-interface {v5, v9, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, firstBoot:Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v9, "pref_anonymous_checked_in"

    invoke-interface {v5, v9, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 53
    .local v2, lastSynced:J
    cmp-long v9, v2, v11

    if-eqz v9, :cond_0

    .line 56
    const-wide/32 v9, 0x240c8400

    add-long/2addr v9, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 57
    .local v7, timeLeft:J
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v6, sIntent:Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/android/OriginalSettings/cmstats/ReportingServiceManager;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-static {p0, v13, v6, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v0, v13, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 61
    const-string v9, "CMStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Next sync attempt in : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    div-long v11, v7, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " days"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "pref_anonymous_alarm_set"

    invoke-interface {v9, v10, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/android/OriginalSettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/cmstats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    goto :goto_0
.end method

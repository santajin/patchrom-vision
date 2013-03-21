.class public Lcom/android/OriginalSettings/SoundSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final KEY_CAMBTN_MUSIC_CTRL:Ljava/lang/String; = "cambtn_music_controls"

.field private static final KEY_CATEGORY_CALLS:Ljava/lang/String; = "category_calls_and_notification"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_INCREASING_RING:Ljava/lang/String; = "increasing_ring"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_QUIET_HOURS:Ljava/lang/String; = "quiet_hours"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SAFE_HEADSET_RESTORE:Ljava/lang/String; = "safe_headset_restore"

.field private static final KEY_SILENT_MODE:Ljava/lang/String; = "silent_mode"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_VOLBTN_MUSIC_CTRL:Ljava/lang/String; = "volbtn_music_controls"

.field private static final KEY_VOLUME_OVERLAY:Ljava/lang/String; = "volume_overlay"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field private static final SILENT_MODE_MUTE:Ljava/lang/String; = "mute"

.field private static final SILENT_MODE_OFF:Ljava/lang/String; = "off"

.field private static final SILENT_MODE_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final TAG:Ljava/lang/String; = "SoundSettings"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCamBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mQuietHours:Landroid/preference/PreferenceScreen;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

.field private mVolumeOverlay:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "increasing_ring"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$1;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$2;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 296
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 298
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 300
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method private returnTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "t"

    .prologue
    .line 431
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    :cond_0
    const-string v4, ""

    .line 443
    :goto_0
    return-object v4

    .line 434
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 435
    .local v2, hr:I
    move v3, v2

    .line 437
    .local v3, mn:I
    div-int/lit8 v2, v2, 0x3c

    .line 438
    rem-int/lit8 v3, v3, 0x3c

    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 440
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 441
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 442
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 443
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 284
    const/4 v0, 0x2

    .line 285
    .local v0, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const/4 v0, 0x0

    .line 290
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 291
    return-void

    .line 287
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 326
    if-nez p2, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 328
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 329
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 330
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x104042f

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 333
    const v0, 0x104042d

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 349
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 337
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 339
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 343
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 345
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 311
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 313
    const-string v1, "quiet_hours_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b069a

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_start"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b069b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_end"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b0684

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 448
    const v0, 0x7f0b0675

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 138
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 140
    .local v2, activePhoneType:I
    const-string v15, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    const v15, 0x7f050045

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 144
    const/4 v15, 0x2

    if-eq v15, v2, :cond_0

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v16, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_0
    const-string v15, "volume_overlay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    .line 150
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "mode_volume_overlay"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 154
    .local v14, volumeOverlay:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    const-string v15, "silent_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090001

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-nez v15, :cond_6

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const-string v15, "ring_volume"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 165
    :goto_0
    const-string v15, "quiet_hours"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    .line 166
    const-string v15, "quiet_hours_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0b069a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "quiet_hours_start"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0b069b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "quiet_hours_end"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    const-string v15, "safe_headset_restore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "safe_headset_volume_restore"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    const-string v15, "vibrate_when_ringing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "vibrate_when_ringing"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    const-string v15, "dtmf_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "dtmf_tone"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 189
    const-string v15, "sound_effects"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "sound_effects_enabled"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    const-string v15, "haptic_feedback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "haptic_feedback_enabled"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    const-string v15, "lock_sounds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "lockscreen_sounds_enabled"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    const-string v15, "volbtn_music_controls"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "volbtn_music_controls"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    const-string v15, "cambtn_music_controls"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mCamBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mCamBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "cambtn_music_controls"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    const-string v15, "ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 211
    const-string v15, "notification_sound"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 213
    const-string v15, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 214
    .local v13, vibrator:Landroid/os/Vibrator;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v15

    if-nez v15, :cond_2

    .line 215
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_2
    const/4 v15, 0x2

    if-ne v15, v2, :cond_3

    .line 220
    const-string v15, "emergency_tone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 222
    .local v4, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v15, "emergency_tone"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    .end local v4           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_3
    const-string v15, "sound_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v16, "musicfx"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 230
    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v5, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 232
    .local v8, p:Landroid/content/pm/PackageManager;
    const/16 v15, 0x200

    invoke-virtual {v8, v5, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 233
    .local v12, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 243
    sget-object v3, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_a
    if-ge v6, v7, :cond_10

    aget-object v10, v3, v6

    .line 244
    .local v10, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 245
    .local v9, pref:Landroid/preference/Preference;
    if-eqz v9, :cond_5

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 243
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 162
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #p:Landroid/content/pm/PackageManager;
    .end local v9           #pref:Landroid/preference/Preference;
    .end local v10           #prefKey:Ljava/lang/String;
    .end local v12           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #vibrator:Landroid/os/Vibrator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 172
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    const v16, 0x7f0b0684

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 177
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 182
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 187
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 191
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 195
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 199
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 203
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 207
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 251
    .restart local v5       #i:Landroid/content/Intent;
    .restart local v8       #p:Landroid/content/pm/PackageManager;
    .restart local v12       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13       #vibrator:Landroid/os/Vibrator;
    :cond_10
    new-instance v15, Lcom/android/OriginalSettings/SoundSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/OriginalSettings/SoundSettings$3;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 263
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 281
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, key:Ljava/lang/String;
    const-string v4, "emergency_tone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 412
    .local v3, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_tone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v3           #value:I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "SoundSettings"

    const-string v5, "could not persist emergency tone setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 417
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 418
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/SoundSettings;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 420
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 421
    .restart local v3       #value:I
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 422
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_volume_overlay"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 358
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    move v0, v1

    .line 404
    :cond_1
    :goto_1
    return v0

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 362
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 365
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 366
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 371
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 369
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 374
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 375
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 378
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 379
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 382
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 387
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safe_headset_volume_restore"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 391
    :cond_d
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 392
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volbtn_music_controls"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 395
    :cond_f
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mCamBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 396
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cambtn_music_controls"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mCamBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 401
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 269
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    .line 270
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->lookupRingtoneNames()V

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    return-void
.end method

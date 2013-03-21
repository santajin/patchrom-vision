.class public Lcom/android/OriginalSettings/DockSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DockSettings.java"


# static fields
.field private static final DIALOG_NOT_DOCKED:I = 0x1

.field private static final KEY_AUDIO_SETTINGS:Ljava/lang/String; = "dock_audio"

.field private static final KEY_DOCK_FORCE_UNDOCK:Ljava/lang/String; = "dock_force_undock"

.field private static final KEY_DOCK_SOUNDS:Ljava/lang/String; = "dock_sounds"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mForceUndock:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/OriginalSettings/DockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/DockSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/android/OriginalSettings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DockSettings$1;-><init>(Lcom/android/OriginalSettings/DockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0284

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    const v1, 0x7f0b0285

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 105
    .local v1, isBluetooth:Z
    :goto_0
    sget-object v5, Lcom/android/OriginalSettings/DockSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDockChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isBT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 108
    const v2, 0x7f0b028a

    .line 109
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 126
    .end local v2           #resId:I
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    .line 127
    if-nez v1, :cond_4

    .line 129
    if-eqz v0, :cond_3

    .line 130
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0283

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 131
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 156
    :goto_2
    if-eqz v0, :cond_1

    .line 159
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    :goto_3
    return-void

    .end local v1           #isBluetooth:Z
    :cond_2
    move v1, v4

    .line 104
    goto :goto_0

    .line 114
    .restart local v1       #isBluetooth:Z
    .restart local v2       #resId:I
    :pswitch_0
    sget-object v5, Lcom/android/OriginalSettings/DockSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDockChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - enableing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const v2, 0x7f0b028b

    .line 116
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 119
    :pswitch_1
    const v2, 0x7f0b028a

    .line 120
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 133
    .end local v2           #resId:I
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0282

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 137
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 139
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 140
    const v2, 0x7f0b0283

    .line 141
    .restart local v2       #resId:I
    packed-switch v0, :pswitch_data_1

    .line 153
    :goto_4
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 143
    :pswitch_2
    const v2, 0x7f0b0281

    .line 144
    goto :goto_4

    .line 148
    :pswitch_3
    const v2, 0x7f0b0280

    .line 149
    goto :goto_4

    .line 151
    :pswitch_4
    const v2, 0x7f0b0282

    goto :goto_4

    .line 160
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_3

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 84
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v3, 0x7f0b0282

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 89
    :cond_0
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 90
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 91
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    const-string v1, "dock_force_undock"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    .line 95
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    const v3, 0x7f0b028a

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 97
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 100
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->initDockSettings()V

    .line 64
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    .line 170
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, dockState:I
    :goto_0
    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DockSettings;->showDialog(I)V

    .line 212
    .end local v0           #dockState:I
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v0, v2

    .line 170
    goto :goto_0

    .line 176
    .restart local v0       #dockState:I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 177
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 181
    .end local v0           #dockState:I
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dock_sounds_enabled"

    iget-object v6, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 184
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 189
    .restart local v0       #dockState:I
    :goto_2
    if-eqz v0, :cond_0

    .line 191
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 192
    .restart local v1       #i:Landroid/content/Intent;
    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_3
    const/high16 v4, 0x4000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v4, "state"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mForceUndock:Landroid/preference/Preference;

    const v4, 0x7f0b028a

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .end local v0           #dockState:I
    .end local v1           #i:Landroid/content/Intent;
    :cond_6
    move v0, v2

    .line 186
    goto :goto_2

    .line 196
    .restart local v0       #dockState:I
    .restart local v1       #i:Landroid/content/Intent;
    :pswitch_0
    const-string v4, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 199
    :pswitch_1
    const-string v4, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.class public Lcom/android/OriginalSettings/AndromadusSettings;
.super Lcom/android/OriginalSettings/SettingsFragment;
.source "AndromadusSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final QUICK_LAUNCH:Ljava/lang/String; = "pref_quick_launch"

.field public static final S2W_FILE:Ljava/lang/String; = "/sys/android_touch/sweep2wake"

.field public static final S2W_PREF:Ljava/lang/String; = "sweep2wake_setting"

.field private static final STATUSBAR_SIXBAR_SIGNAL:Ljava/lang/String; = "pref_statusbar_sixbar_signal"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRACKBALL_UNLOCK_TOGGLE:Ljava/lang/String; = "pref_trackball_unlock_toggle"

.field private static final TRACKBALL_WAKE_TOGGLE:Ljava/lang/String; = "pref_trackball_wake_toggle"


# instance fields
.field private mCr:Landroid/content/ContentResolver;

.field private mPrefSet:Landroid/preference/PreferenceScreen;

.field private mQuickLaunch:Landroid/preference/Preference;

.field private mTrackballUnlockScreen:Landroid/preference/CheckBoxPreference;

.field private mTrackballWake:Landroid/preference/CheckBoxPreference;

.field private mUseSixbaricons:Landroid/preference/CheckBoxPreference;

.field private ms2wFormat:Ljava/lang/String;

.field private ms2wPref:Landroid/preference/ListPreference;

.field private strs2wDesc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/OriginalSettings/AndromadusSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/AndromadusSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f07009c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v2, ""

    .line 49
    .local v2, temp:Ljava/lang/String;
    const v3, 0x7f0b08f7

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/AndromadusSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wFormat:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->strs2wDesc:[Ljava/lang/String;

    .line 51
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/AndromadusSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    .line 54
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mCr:Landroid/content/ContentResolver;

    .line 57
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_trackball_wake_toggle"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    .line 59
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "trackball_wake_screen"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 61
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_trackball_unlock_toggle"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballUnlockScreen:Landroid/preference/CheckBoxPreference;

    .line 66
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballUnlockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "trackball_unlock_screen"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballUnlockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_statusbar_sixbar_signal"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mUseSixbaricons:Landroid/preference/CheckBoxPreference;

    .line 73
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mUseSixbaricons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "statusbar_6bar_signal"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mUseSixbaricons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f09000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mTrackballUnlockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    const-string v6, "sweep2wake_setting"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    .line 86
    const-string v3, "/sys/android_touch/sweep2wake"

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "/sys/android_touch/sweep2wake"

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :goto_3
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    const-string v4, "pref_quick_launch"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mQuickLaunch:Landroid/preference/Preference;

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AndromadusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mPrefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mQuickLaunch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 59
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 66
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 73
    goto :goto_2

    .line 89
    :cond_6
    const/4 v1, 0x1

    .line 91
    .local v1, s2wEnabledValue:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_4
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    const v6, 0x7f07009d

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 97
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 98
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wFormat:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/OriginalSettings/AndromadusSettings;->strs2wDesc:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, nef:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, key:Ljava/lang/String;
    const-string v1, ""

    .line 136
    .local v1, fname:Ljava/lang/String;
    const-string v6, "/sys/android_touch/sweep2wake"

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/sys/android_touch/sweep2wake"

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, temp:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 137
    .end local v5           #temp:Ljava/lang/String;
    :cond_0
    const-string v1, "/sys/android_touch/sweep2wake"

    .line 138
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/OriginalSettings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    const/4 v4, 0x1

    .line 142
    .local v4, s2wEnabledValue:I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 146
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wFormat:Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/OriginalSettings/AndromadusSettings;->strs2wDesc:[Ljava/lang/String;

    aget-object v11, v11, v4

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    .end local v4           #s2wEnabledValue:I
    :cond_1
    const-string v6, "pref_trackball_wake_toggle"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    iget-object v9, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mCr:Landroid/content/ContentResolver;

    const-string v10, "trackball_wake_screen"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    :cond_2
    :goto_2
    return v7

    .line 143
    .restart local v4       #s2wEnabledValue:I
    .restart local p2
    :catch_0
    move-exception v3

    .line 144
    .local v3, nef:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .end local v3           #nef:Ljava/lang/NumberFormatException;
    .end local v4           #s2wEnabledValue:I
    .end local p2
    :cond_3
    move v6, v8

    .line 150
    goto :goto_1

    .line 151
    .restart local p2
    :cond_4
    const-string v6, "pref_trackball_unlock_toggle"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 152
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mCr:Landroid/content/ContentResolver;

    const-string v9, "trackball_unlock_screen"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v7

    :cond_5
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 153
    .restart local p2
    :cond_6
    const-string v6, "pref_statusbar_sixbar_signal"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    iget-object v6, p0, Lcom/android/OriginalSettings/AndromadusSettings;->mCr:Landroid/content/ContentResolver;

    const-string v9, "statusbar_6bar_signal"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    move v8, v7

    :cond_7
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsFragment;->onResume()V

    .line 118
    const-string v3, "/sys/android_touch/sweep2wake"

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/sys/android_touch/sweep2wake"

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, temp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 122
    .local v1, s2wEnabledValue:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/AndromadusSettings;->ms2wFormat:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/OriginalSettings/AndromadusSettings;->strs2wDesc:[Ljava/lang/String;

    aget-object v7, v7, v1

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    .end local v1           #s2wEnabledValue:I
    .end local v2           #temp:Ljava/lang/String;
    :cond_0
    return-void

    .line 123
    .restart local v1       #s2wEnabledValue:I
    .restart local v2       #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, nef:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_HIGH_END_GFX:Ljava/lang/String; = "high_end_gfx"

.field private static final TAG:Ljava/lang/String; = "PerformanceSettings"

.field private static final USE_16BPP_ALPHA_PREF:Ljava/lang/String; = "pref_use_16bpp_alpha"

.field private static final USE_16BPP_ALPHA_PROP:Ljava/lang/String; = "persist.sys.use_16bpp_alpha"

.field private static final USE_DITHERING_DEFAULT:Ljava/lang/String; = "1"

.field private static final USE_DITHERING_PERSIST_PROP:Ljava/lang/String; = "persist.sys.use_dithering"

.field private static final USE_DITHERING_PREF:Ljava/lang/String; = "pref_use_dithering"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private mHighEndGfx:Landroid/preference/CheckBoxPreference;

.field private mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

.field private mUseDitheringPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 66
    const v4, 0x7f050026

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 70
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "persist.sys.use_dithering"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, useDithering:Ljava/lang/String;
    const-string v4, "pref_use_dithering"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    .line 72
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    const-string v4, "pref_use_16bpp_alpha"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string v4, "persist.sys.use_16bpp_alpha"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, use16bppAlpha:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v0

    .line 82
    .local v0, isHighEndGfx:Z
    const-string v4, "high_end_gfx"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mHighEndGfx:Landroid/preference/CheckBoxPreference;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mHighEndGfx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    .line 92
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0b0815

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 93
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0816

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$1;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 104
    .end local v0           #isHighEndGfx:Z
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v2           #use16bppAlpha:Ljava/lang/String;
    .end local v3           #useDithering:Ljava/lang/String;
    :cond_0
    return-void

    .line 86
    .restart local v0       #isHighEndGfx:Z
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v2       #use16bppAlpha:Ljava/lang/String;
    .restart local v3       #useDithering:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mHighEndGfx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "high_end_gfx_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v1, p2

    .line 124
    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, newVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, index:I
    const-string v2, "persist.sys.use_dithering"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    .end local v0           #index:I
    .end local v1           #newVal:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 109
    const-string v2, "persist.sys.use_16bpp_alpha"

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_1
    return v1

    .line 109
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mHighEndGfx:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_end_gfx_enabled"

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mHighEndGfx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 116
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

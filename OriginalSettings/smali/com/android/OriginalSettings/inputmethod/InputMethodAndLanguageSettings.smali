.class public Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"

.field private static final KEY_IME_SWITCHER:Ljava/lang/String; = "status_bar_ime_switcher"

.field private static final KEY_INPUT_METHOD_SELECTOR:Ljava/lang/String; = "input_method_selector"

.field private static final KEY_PHONE_LANGUAGE:Ljava/lang/String; = "phone_language"

.field private static final KEY_POINTER_SETTINGS:Ljava/lang/String; = "pointer_settings_category"

.field private static final KEY_STYLUS_ICON_ENABLED:Ljava/lang/String; = "stylus_icon_enabled"

.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"

.field private static final SHOW_INPUT_METHOD_SWITCHER_SETTINGS:Z = false

.field private static final VOLUME_KEY_CURSOR_CONTROL:Ljava/lang/String; = "volume_key_cursor_control"

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

.field private mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

.field private mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 467
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 470
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 471
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    :goto_0
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 480
    .local v0, pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    return-object v0

    .line 475
    .end local v0           #pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "languageCode"
    .parameter "locales"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 393
    .local v4, localeCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 395
    add-int/lit8 v1, v1, 0x1

    .line 396
    if-le v1, v5, :cond_0

    .line 401
    .end local v4           #localeCode:Ljava/lang/String;
    :goto_1
    return v6

    .line 392
    .restart local v4       #localeCode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v4           #localeCode:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private hasStylus()Z
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 589
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 590
    .local v1, devices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 591
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 592
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    const/4 v3, 0x1

    .line 596
    .end local v0           #device:Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 590
    .restart local v0       #device:Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadInputMethodSelectorVisibility()I
    .locals 3

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_selector_visibility"

    iget v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private saveInputMethodSelectorVisibility(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 406
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 407
    .local v0, intValue:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "input_method_selector_visibility"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodSelectorSummary(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v0           #intValue:I
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showKeyboardLayoutDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 547
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, fragment:Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 550
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .line 443
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 444
    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 448
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 452
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 454
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 457
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    monitor-enter p0

    .line 459
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 576
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 579
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 581
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 586
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    .line 581
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 584
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 491
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 492
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 493
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 494
    .local v2, devices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 495
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 496
    .local v1, device:Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 499
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, inputDeviceDescriptor:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, keyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 505
    .local v6, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 506
    .local v8, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 507
    if-eqz v6, :cond_2

    .line 508
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    :goto_2
    new-instance v10, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 519
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #inputDeviceDescriptor:Ljava/lang/String;
    .restart local v7       #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 502
    goto :goto_1

    .line 510
    .restart local v6       #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .restart local v8       #pref:Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0b0447

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 524
    .end local v1           #device:Landroid/view/InputDevice;
    .end local v2           #devices:[I
    .end local v3           #i:I
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 525
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_5

    .line 526
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 527
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 528
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 530
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 532
    .end local v4           #i:I
    .end local v8           #pref:Landroid/preference/Preference;
    .restart local v3       #i:I
    :cond_5
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 533
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 534
    .local v0, count:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 535
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 536
    .restart local v8       #pref:Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 537
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 540
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 544
    .end local v0           #count:I
    .end local v3           #i:I
    :goto_5
    return-void

    .line 542
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 487
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 488
    return-void
.end method

.method private updateInputMethodSelectorSummary(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, inputMethodSelectorTitles:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mShowInputMethodSelectorPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "userDictionaryPreference"

    .prologue
    const/4 v5, 0x1

    .line 229
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 230
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v3

    .line 231
    .local v3, localeList:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-gt v4, v5, :cond_2

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, intent:Landroid/content/Intent;
    const v4, 0x7f0b044a

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 239
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 240
    const-class v4, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 249
    invoke-virtual {v3}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v2, v4, v5

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, locale:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "locale"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #locale:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0b044b

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 254
    const-class v4, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 565
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 567
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_descriptor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, inputDeviceDescriptor:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 571
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    .line 573
    .end local v0           #inputDeviceDescriptor:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v8, 0x7f05001f

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 108
    const v8, 0x7f0b0005

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v10, "phone_language"

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :goto_1
    new-instance v8, Lcom/android/OriginalSettings/VoiceInputOutputSettings;

    invoke-direct {v8, p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    invoke-virtual {v8}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->onCreate()V

    .line 130
    const-string v8, "hard_keyboard"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 131
    const-string v8, "keyboard_settings_category"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 133
    const-string v8, "game_controller_settings_category"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 137
    const-string v8, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-boolean v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v8, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    :cond_0
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 151
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 153
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 154
    iget-boolean v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v8, :cond_1

    .line 155
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    .local v1, currentIme:Landroid/preference/PreferenceScreen;
    const-string v8, "current_input_method"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b046d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    .end local v1           #currentIme:Landroid/preference/PreferenceScreen;
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v8, :cond_3

    move v0, v9

    .line 163
    .local v0, N:I
    :goto_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_4

    .line 164
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 165
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v3, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    move-result-object v6

    .line 166
    .local v6, pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    :cond_2
    const-string v8, "phone_language"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 162
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 169
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_4
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 170
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 172
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/input/InputManager;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 178
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x1110042

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v10, "status_bar_ime_switcher"

    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :goto_5
    const-string v8, "stylus_icon_enabled"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    .line 190
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v10, Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    const-string v8, "spellcheckers_settings"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;

    .line 194
    .local v7, scp:Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;
    if-eqz v7, :cond_6

    .line 195
    invoke-virtual {v7, p0, v4}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 198
    :cond_6
    const-string v8, "volume_key_cursor_control"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 199
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-eqz v8, :cond_7

    .line 200
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "volume_key_cursor_control"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 203
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    :cond_7
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 207
    new-instance v8, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 210
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->hasStylus()Z

    move-result v8

    if-nez v8, :cond_8

    .line 211
    const-string v8, "pointer_settings_category"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 212
    .local v5, pc:Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_8

    .line 213
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    :cond_8
    return-void

    .line 184
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #scp:Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;
    :cond_9
    const-string v8, "status_bar_ime_switcher"

    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    .line 110
    .end local v0           #N:I
    .end local v2           #i:I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 337
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 342
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 347
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 325
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 332
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 429
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    .line 430
    check-cast v2, Ljava/lang/String;

    .line 431
    .local v2, volumeKeyCursorControl:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, val:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_key_cursor_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, index:I
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    const/4 v3, 0x1

    .line 438
    .end local v0           #index:I
    .end local v1           #val:I
    .end local v2           #volumeKeyCursorControl:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 352
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 387
    :goto_0
    return v4

    .line 355
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "status_bar_ime_switcher"

    iget-object v7, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 359
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_5

    .line 360
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stylus_icon_enabled"

    iget-object v7, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v3

    .line 360
    goto :goto_1

    .line 362
    :cond_5
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_6

    .line 363
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 365
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 368
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_2

    .line 370
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    move-object v0, p2

    .line 371
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 372
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 374
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_8

    .line 375
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 373
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 381
    .end local v1           #i:I
    :cond_9
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 260
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 262
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, p0, v10}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 264
    iget-boolean v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 267
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, language:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 276
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, localeString:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_0
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 294
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "status_bar_ime_switcher"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 299
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "stylus_icon_enabled"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 305
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 306
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v8, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 308
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_7

    move v5, v6

    :goto_4
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 278
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    .restart local v1       #conf:Landroid/content/res/Configuration;
    .restart local v3       #language:Ljava/lang/String;
    :cond_4
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #localeString:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 294
    goto :goto_1

    :cond_6
    move v5, v7

    .line 299
    goto :goto_2

    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #i:I
    :cond_7
    move v5, v7

    .line 308
    goto :goto_4

    .line 313
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_8
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-static {p0, v5, v6, v10}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 318
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 319
    return-void
.end method

.method public onSetupKeyboardLayouts(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 557
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 560
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 561
    return-void
.end method

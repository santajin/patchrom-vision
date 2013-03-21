.class public Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ChooseLockPatternSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPatternSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternSizeFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 44
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->addPreferencesFromResource(I)V

    .line 45
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, key:Ljava/lang/String;
    const/4 v0, 0x3

    .line 53
    .local v0, PATTERN_SIZE:I
    const-string v7, "lock_pattern_size_3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    const/4 v0, 0x3

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 65
    .local v2, isFallback:Z
    iget-object v7, p0, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v7

    if-nez v7, :cond_4

    move v4, v5

    .line 67
    .local v4, showTutorial:Z
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v4, :cond_5

    const-class v7, Lcom/android/OriginalSettings/ChooseLockPatternTutorial;

    :goto_2
    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    const-string v7, "pattern_size"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v7, "key_lock_method"

    const-string v8, "pattern"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v7, "confirm_credentials"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const/high16 v6, 0x200

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockPatternSize$ChooseLockPatternSizeFragment;->finish()V

    .line 80
    return v5

    .line 55
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isFallback:Z
    .end local v4           #showTutorial:Z
    :cond_1
    const-string v7, "lock_pattern_size_4"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    const/4 v0, 0x4

    goto :goto_0

    .line 57
    :cond_2
    const-string v7, "lock_pattern_size_5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 58
    const/4 v0, 0x5

    goto :goto_0

    .line 59
    :cond_3
    const-string v7, "lock_pattern_size_6"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    const/4 v0, 0x6

    goto :goto_0

    .restart local v2       #isFallback:Z
    :cond_4
    move v4, v6

    .line 65
    goto :goto_1

    .line 68
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #showTutorial:Z
    :cond_5
    const-class v7, Lcom/android/OriginalSettings/ChooseLockPattern;

    goto :goto_2
.end method

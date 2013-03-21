.class public Lcom/android/OriginalSettings/profiles/ProfilesSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;
    }
.end annotation


# static fields
.field private static final MENU_ADD_APPGROUP:I = 0x3

.field private static final MENU_ADD_PROFILE:I = 0x2

.field private static final MENU_RESET:I = 0x1

.field private static final PROFILE_SERVICE:Ljava/lang/String; = "profile"

.field private static final TAB_APPGROUPS:Ljava/lang/String; = "appgroups"

.field private static final TAB_PROFILES:Ljava/lang/String; = "profiles"

.field private static final TAG:Ljava/lang/String; = "ProfilesSettings"

.field private static mActivity:Landroid/app/Activity;

.field private static mOptionsMenu:Landroid/view/Menu;

.field static mSavedState:Landroid/os/Bundle;

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field mContainer:Landroid/view/ViewGroup;

.field private mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

.field private mProfileManager:Landroid/app/ProfileManager;

.field mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 351
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private addAppGroup()V
    .locals 8

    .prologue
    const/16 v2, 0x22

    const/16 v3, 0x10

    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 317
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 318
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 319
    .local v1, entry:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b07d2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 323
    const v4, 0x7f0b07d4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v4, v2

    move v5, v3

    .line 324
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 325
    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;-><init>(Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 341
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 342
    const v2, 0x102000b

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10301b3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 345
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #entry:Landroid/widget/EditText;
    .end local v7           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private addProfile()V
    .locals 8

    .prologue
    const/16 v2, 0x22

    const/16 v3, 0x10

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 270
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 271
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 272
    .local v1, entry:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b07ac

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 276
    const v4, 0x7f0b07ab

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v4, v2

    move v5, v3

    .line 277
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 278
    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/profiles/ProfilesSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$1;-><init>(Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 294
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 295
    const v2, 0x102000b

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10301b3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 298
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #entry:Landroid/widget/EditText;
    .end local v7           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b07b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 304
    const v1, 0x7f0b07b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 305
    const v1, 0x7f0b08a5

    new-instance v2, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$2;-><init>(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const v1, 0x7f0b00e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 313
    return-void
.end method

.method static updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 216
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 240
    .local v0, enabled:Z
    .local v1, tabId:Ljava/lang/String;
    :goto_0
    return-void

    .line 220
    .end local v0           #enabled:Z
    .end local v1           #tabId:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "system_profiles_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 223
    .restart local v0       #enabled:Z
    :goto_1
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1       #tabId:Ljava/lang/String;
    const-string v4, "profiles"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 225
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    sget-object v3, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #enabled:Z
    .end local v1           #tabId:Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 220
    goto :goto_1

    .line 229
    .restart local v0       #enabled:Z
    .restart local v1       #tabId:Ljava/lang/String;
    :cond_2
    const-string v4, "appgroups"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 230
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    sget-object v3, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    sget-object v3, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 236
    :cond_3
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    sget-object v4, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 111
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 112
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 113
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 126
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    iget-object v4, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, p0, v4}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    .line 129
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0b07a5

    const v5, 0x7f020051

    const/16 v4, 0x61

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 162
    sput-object p1, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 164
    const/4 v0, 0x1

    const v1, 0x7f0b07b3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020062

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    const/4 v0, 0x2

    invoke-interface {p1, v2, v0, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 176
    const/4 v0, 0x3

    invoke-interface {p1, v2, v0, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-static {}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 183
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    iput-object p2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f04006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    sput-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    .line 84
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mActivity:Landroid/app/Activity;

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->setupTabs()V

    .line 91
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mSavedState:Landroid/os/Bundle;

    const-string v2, "tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->setHasOptionsMenu(Z)V

    .line 98
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 199
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->resetAll()V

    goto :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->addProfile()V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->addAppGroup()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;->pause()V

    .line 154
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mSavedState:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mSavedState:Landroid/os/Bundle;

    .line 157
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mSavedState:Landroid/os/Bundle;

    const-string v1, "tab"

    sget-object v2, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 187
    invoke-static {}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;->resume()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 143
    :cond_1
    return-void
.end method

.method public refreshActiveTab()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    sget-object v1, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 266
    return-void
.end method

.method public setupTabs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 244
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    const v3, 0x1020011

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;-><init>(Landroid/app/Activity;Landroid/widget/TabHost;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    sget-object v1, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "profiles"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b07c1

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/profiles/ProfilesList;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    sget-object v1, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "appgroups"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0b07c4

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/profiles/AppGroupList;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 255
    sget-object v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->updateOptionsMenu()V

    .line 258
    return-void
.end method

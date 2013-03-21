.class public Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;
.super Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;
.source "PowerWidgetEnabler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 0
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;-><init>()V

    .line 28
    sput-object p1, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    .line 30
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mStateMachineEvent:Z

    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mStateMachineEvent:Z

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_view_widget"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    return-void
.end method

.method public setState(Landroid/widget/Switch;)V
    .locals 4
    .parameter "switch_"

    .prologue
    const/4 v1, 0x1

    .line 41
    sget-object v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_view_widget"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, isEnabled:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

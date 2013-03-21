.class public Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;
.super Ljava/lang/Object;
.source "SwitchWidget.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mStateMachineEvent:Z

.field public mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mStateMachineEvent:Z

    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mStateMachineEvent:Z

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 65
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    return-void
.end method

.method public setState(Landroid/widget/Switch;)V
    .locals 0
    .parameter "switch_"

    .prologue
    .line 60
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/SwitchWidget;->setState(Landroid/widget/Switch;)V

    goto :goto_0
.end method

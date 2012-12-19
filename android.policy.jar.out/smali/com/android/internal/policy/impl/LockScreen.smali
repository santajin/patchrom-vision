.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;,
        Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;,
        Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    }
.end annotation


# static fields
.field private static final ACTION_RESULT_NOTRUN:I = 0x1

.field private static final ACTION_RESULT_RUN:I = 0x0

.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockScreen"

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCameraDisabled:Z

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mEnableRingSilenceFallback:Z

.field private final mHasVibrator:Z

.field mHomeUnlockScreen:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOnResumePing:Ljava/lang/Runnable;

.field private mSearchDisabled:Z

.field private mSilentMode:Z

.field mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field mTrackballUnlockScreen:Z

.field private mUnlockKeyDown:Z

.field private mUnlockWidget:Landroid/view/View;

.field private mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 610
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z

    .line 99
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockKeyDown:Z

    .line 109
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 127
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "trackball_unlock_screen"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mTrackballUnlockScreen:Z

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "home_unlock_screen"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mHomeUnlockScreen:Z

    .line 941
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$4;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    .line 611
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 612
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 613
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 615
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    .line 617
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 625
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 627
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 628
    const v0, 0x1090058

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 633
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/LockScreen;->setBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 635
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 638
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 639
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 640
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 642
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 643
    .local v7, vibrator:Landroid/os/Vibrator;
    if-nez v7, :cond_3

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mHasVibrator:Z

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 645
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 646
    const v0, 0x10202d6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    .line 651
    return-void

    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #vibrator:Landroid/os/Vibrator;
    :cond_0
    move v0, v5

    .line 593
    goto/16 :goto_0

    :cond_1
    move v0, v5

    .line 597
    goto/16 :goto_1

    .line 630
    .restart local v6       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const v0, 0x1090059

    invoke-virtual {v6, v0, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_2

    .line 643
    .restart local v7       #vibrator:Landroid/os/Vibrator;
    :cond_3
    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateTargets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    return v0
.end method

.method private createUnlockMethods(Landroid/view/View;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    .locals 10
    .parameter "unlockWidget"

    .prologue
    .line 654
    instance-of v6, p1, Lcom/android/internal/widget/SlidingTab;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 655
    check-cast v3, Lcom/android/internal/widget/SlidingTab;

    .line 656
    .local v3, slidingTabView:Lcom/android/internal/widget/SlidingTab;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 657
    const v6, 0x1040356

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 658
    const v6, 0x10802d5

    const v7, 0x10803dc

    const v8, 0x10803bd

    const v9, 0x10803d0

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 663
    new-instance v2, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/SlidingTab;)V

    .line 664
    .local v2, slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 675
    .end local v2           #slidingTabMethods:Lcom/android/internal/policy/impl/LockScreen$SlidingTabMethods;
    .end local v3           #slidingTabView:Lcom/android/internal/widget/SlidingTab;
    :goto_0
    return-object v2

    .line 666
    :cond_0
    instance-of v6, p1, Lcom/android/internal/widget/WaveView;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 667
    check-cast v4, Lcom/android/internal/widget/WaveView;

    .line 668
    .local v4, waveView:Lcom/android/internal/widget/WaveView;
    new-instance v5, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    invoke-direct {v5, p0, v4}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V

    .line 669
    .local v5, waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/WaveView;->setOnTriggerListener(Lcom/android/internal/widget/WaveView$OnTriggerListener;)V

    move-object v2, v5

    .line 670
    goto :goto_0

    .line 671
    .end local v4           #waveView:Lcom/android/internal/widget/WaveView;
    .end local v5           #waveViewMethods:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
    :cond_1
    instance-of v6, p1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 672
    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 673
    .local v0, glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    .line 674
    .local v1, glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    move-object v2, v1

    .line 675
    goto :goto_0

    .line 677
    .end local v0           #glowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .end local v1           #glowPadViewMethods:Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized unlock widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static getLongPressVibePattern(Landroid/content/Context;)[J
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 884
    :cond_0
    return-object v2

    .line 873
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 875
    .local v0, defaultPattern:[I
    if-eqz v0, :cond_0

    .line 879
    array-length v3, v0

    new-array v2, v3, [J

    .line 880
    .local v2, pattern:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 881
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static handleKeyLongPress(Landroid/content/Context;I)Z
    .locals 7
    .parameter "context"
    .parameter "keyCode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 807
    const/4 v0, 0x0

    .line 809
    .local v0, action:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 821
    :goto_0
    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, uri:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->runAction(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 824
    invoke-static {p0}, Lcom/android/internal/policy/impl/LockScreen;->getLongPressVibePattern(Landroid/content/Context;)[J

    move-result-object v1

    .line 825
    .local v1, pattern:[J
    if-eqz v1, :cond_0

    .line 826
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 827
    .local v3, v:Landroid/os/Vibrator;
    array-length v6, v1

    if-ne v6, v4, :cond_1

    .line 828
    aget-wide v5, v1, v5

    invoke-virtual {v3, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 837
    .end local v1           #pattern:[J
    .end local v2           #uri:Ljava/lang/String;
    .end local v3           #v:Landroid/os/Vibrator;
    :cond_0
    :goto_1
    return v4

    .line 811
    :sswitch_0
    const-string v0, "lockscreen_long_back_action"

    .line 812
    goto :goto_0

    .line 814
    :sswitch_1
    const-string v0, "lockscreen_long_home_action"

    .line 815
    goto :goto_0

    .line 817
    :sswitch_2
    const-string v0, "lockscreen_long_menu_action"

    goto :goto_0

    .line 830
    .restart local v1       #pattern:[J
    .restart local v2       #uri:Ljava/lang/String;
    .restart local v3       #v:Landroid/os/Vibrator;
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v3, v1, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    .end local v1           #pattern:[J
    .end local v2           #uri:Ljava/lang/String;
    .end local v3           #v:Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 837
    goto :goto_1

    .line 809
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestUnlockScreen()V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockScreen$3;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    return-void
.end method

.method private static runAction(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 786
    const-string v1, "FLASHLIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 803
    :goto_0
    return v0

    .line 789
    :cond_0
    const-string v1, "NEXT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    const/16 v1, 0x57

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto :goto_0

    .line 792
    :cond_1
    const-string v1, "PREVIOUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    const/16 v1, 0x58

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto :goto_0

    .line 795
    :cond_2
    const-string v1, "PLAYPAUSE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 796
    const/16 v1, 0x55

    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/LockScreen;->sendMediaButtonEvent(Landroid/content/Context;I)V

    goto :goto_0

    .line 798
    :cond_3
    const-string v1, "SOUND"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    invoke-static {p0}, Lcom/android/internal/policy/impl/LockScreen;->toggleSilentMode(Landroid/content/Context;)V

    goto :goto_0

    .line 803
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static sendMediaButtonEvent(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "code"

    .prologue
    .line 841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 843
    .local v1, eventtime:J
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 844
    .local v11, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 845
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    const/4 v4, 0x0

    invoke-virtual {p0, v11, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 848
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 849
    .local v12, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 850
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 851
    const/4 v4, 0x0

    invoke-virtual {p0, v12, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method static setBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 14
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lockscreen_background"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 704
    .local v5, lockBack:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 705
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 707
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v3

    .line 709
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 713
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 714
    .local v7, parent:Landroid/view/ViewParent;
    if-eqz v7, :cond_0

    .line 716
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-direct {v8, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 717
    .local v8, rlout:Landroid/widget/RelativeLayout;
    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0

    invoke-virtual {v11, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 718
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #parent:Landroid/view/ViewParent;
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 720
    invoke-virtual {v8, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 722
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 723
    .local v4, flayout:Landroid/widget/FrameLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 725
    .local v6, mLockScreenWallpaperImage:Landroid/widget/ImageView;
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 726
    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v4, v6, v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 727
    const-string v11, "com.android.settings"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 728
    .local v9, settingsContext:Landroid/content/Context;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/lockwallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 729
    .local v10, wallpaperFile:Ljava/lang/String;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 730
    .local v1, background:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v2, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 731
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    const/4 v11, 0x0

    invoke-virtual {v8, v4, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 735
    .end local v1           #background:Landroid/graphics/Bitmap;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #flayout:Landroid/widget/FrameLayout;
    .end local v6           #mLockScreenWallpaperImage:Landroid/widget/ImageView;
    .end local v8           #rlout:Landroid/widget/RelativeLayout;
    .end local v9           #settingsContext:Landroid/content/Context;
    .end local v10           #wallpaperFile:Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 586
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1110023

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 587
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 588
    .local v2, isTestHarness:Z
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/local/enable_menu_key"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    .line 589
    .local v1, fileOverride:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "menu_unlock_screen"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_2

    move v3, v6

    .line 590
    .local v3, menuOverride:Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    return v5

    .end local v3           #menuOverride:Z
    :cond_2
    move v3, v5

    .line 589
    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    .line 568
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mHasVibrator:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 575
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 567
    goto :goto_0

    :cond_1
    move v1, v2

    .line 569
    goto :goto_1

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method private static toggleSilentMode(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 855
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 856
    .local v0, am:Landroid/media/AudioManager;
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 857
    .local v2, vib:Landroid/os/Vibrator;
    if-nez v2, :cond_1

    move v1, v3

    .line 858
    .local v1, hasVib:Z
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 859
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 865
    :goto_1
    return-void

    .line 857
    .end local v1           #hasVib:Z
    :cond_1
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    goto :goto_0

    .line 863
    .restart local v1       #hasVib:Z
    :cond_2
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1
.end method

.method private updateTargets()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 682
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    .line 684
    .local v1, disabledByAdmin:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v2

    .line 685
    .local v2, disabledBySimState:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "android.hardware.camera"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 686
    .local v0, cameraPresent:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    instance-of v5, v5, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    check-cast v5, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;

    const v8, 0x1080294

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/LockScreen$GlowPadViewMethods;->isTargetPresent(I)Z

    move-result v4

    .line 691
    .local v4, searchTargetPresent:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 692
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Device Policy"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_6

    move v3, v7

    .line 697
    .local v3, searchActionAvailable:Z
    :goto_2
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_7

    :cond_1
    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z

    .line 698
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z

    .line 699
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 700
    return-void

    .end local v3           #searchActionAvailable:Z
    .end local v4           #searchTargetPresent:Z
    :cond_4
    move v4, v6

    .line 686
    goto :goto_0

    .line 693
    .restart local v4       #searchTargetPresent:Z
    :cond_5
    if-eqz v2, :cond_0

    .line 694
    const-string v5, "LockScreen"

    const-string v8, "Camera disabled by Sim State"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v3, v6

    .line 696
    goto :goto_2

    .restart local v3       #searchActionAvailable:Z
    :cond_7
    move v5, v6

    .line 697
    goto :goto_3
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->cleanUp()V

    .line 963
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 964
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 965
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 966
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 902
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 908
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 909
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 914
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->updateConfiguration()V

    .line 921
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 747
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockKeyDown:Z

    .line 748
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 751
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 754
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method



.method public onPause()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->reset(Z)V

    .line 939
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 954
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 955
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnResumePing:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 956
    return-void
.end method

.method public suspendRecreate()Z
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 889
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 892
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    .line 893
    iget v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 894
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 895
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 893
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

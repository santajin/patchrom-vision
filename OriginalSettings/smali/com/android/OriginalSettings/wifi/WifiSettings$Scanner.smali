.class Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 806
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 815
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 816
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 817
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 834
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 835
    :goto_0
    return-void

    .line 828
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 829
    iput v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 830
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01c4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 820
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 821
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 822
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 809
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 812
    :cond_0
    return-void
.end method

.class final Lcom/android/server/pm/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread;->access$002(Z)Z

    .line 149
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread;->access$202(Z)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$300(Landroid/content/Context;)V

    .line 153
    return-void
.end method
.class Lcom/android/OriginalSettings/users/UserDetailsSettings$AppState;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/users/UserDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppState"
.end annotation


# instance fields
.field dirty:Z

.field enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p1, p0, Lcom/android/OriginalSettings/users/UserDetailsSettings$AppState;->enabled:Z

    .line 77
    return-void
.end method
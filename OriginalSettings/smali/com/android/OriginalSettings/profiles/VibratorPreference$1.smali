.class Lcom/android/OriginalSettings/profiles/VibratorPreference$1;
.super Ljava/lang/Object;
.source "VibratorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/VibratorPreference;->createVibratorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/profiles/VibratorPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/profiles/VibratorPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/VibratorPreference$1;->this$0:Lcom/android/OriginalSettings/profiles/VibratorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/VibratorPreference$1;->this$0:Lcom/android/OriginalSettings/profiles/VibratorPreference;

    #setter for: Lcom/android/OriginalSettings/profiles/VibratorPreference;->currentChoice:I
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/profiles/VibratorPreference;->access$002(Lcom/android/OriginalSettings/profiles/VibratorPreference;I)I

    .line 136
    return-void
.end method
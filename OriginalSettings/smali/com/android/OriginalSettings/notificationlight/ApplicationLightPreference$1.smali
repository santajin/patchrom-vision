.class Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->editPreferenceValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x100

    sub-int/2addr v1, v2

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mColorValue:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$002(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;I)I

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mOnValue:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$102(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;I)I

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mOffValue:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$202(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;I)I

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #calls: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$300(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;)V

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #calls: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$400(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

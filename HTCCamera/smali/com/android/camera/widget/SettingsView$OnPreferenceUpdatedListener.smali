.class public interface abstract Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
.super Ljava/lang/Object;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreferenceUpdatedListener"
.end annotation


# virtual methods
.method public abstract onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V
.end method

.method public abstract onListPreferenceUpdated(Landroid/preference/Preference;I)V
.end method

.method public abstract onPreferenceUpdated(Landroid/preference/Preference;)V
.end method

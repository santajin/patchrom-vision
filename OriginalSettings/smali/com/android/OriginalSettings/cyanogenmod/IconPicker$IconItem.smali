.class Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconItem;
.super Ljava/lang/Object;
.source "IconPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/IconPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconItem"
.end annotation


# instance fields
.field id:I

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "l"
    .parameter "i"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconItem;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconItem;->label:Ljava/lang/String;

    .line 197
    iput p3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconItem;->id:I

    .line 198
    return-void
.end method

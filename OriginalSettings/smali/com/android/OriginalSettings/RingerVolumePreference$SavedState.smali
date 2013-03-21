.class Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 395
    invoke-static {}, Lcom/android/OriginalSettings/RingerVolumePreference;->access$400()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/OriginalSettings/RingerVolumePreference;->access$400()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 398
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 399
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 424
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 414
    :cond_0
    new-array v1, p1, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 405
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/OriginalSettings/RingerVolumePreference;->access$400()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v1, p0, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

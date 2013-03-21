.class public Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;
.super Landroid/preference/Preference;
.source "ApplicationItemPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ApplicationItemPreference"

    sput-object v0, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->setLayoutResource(I)V

    .line 42
    sget-object v1, Lcom/android/OriginalSettings/R$styleable;->IconPreferenceScreen:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 55
    const/high16 v2, 0x4210

    .line 56
    .local v2, valueDips:F
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v1, scale:F
    mul-float v4, v2, v1

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 59
    .local v3, valuePixels:I
    const v4, 0x7f080019

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 61
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 64
    iget-object v4, p0, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ApplicationItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

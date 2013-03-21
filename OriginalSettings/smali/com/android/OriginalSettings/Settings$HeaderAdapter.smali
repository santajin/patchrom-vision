.class Lcom/android/OriginalSettings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x3

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

.field private final mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "authenticatorHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 618
    iput-object p3, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 619
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 623
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 624
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    .line 625
    new-instance v0, Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    .line 626
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 577
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 578
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    .line 579
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080209

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08020a

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080108

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 582
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 584
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 591
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 631
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 632
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 633
    .local v2, headerType:I
    const/4 v7, 0x0

    .line 635
    .local v7, view:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 636
    :cond_0
    new-instance v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/OriginalSettings/Settings$1;)V

    .line 637
    .local v3, holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 666
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 673
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 716
    :goto_2
    return-object v7

    .line 639
    :pswitch_0
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7       #view:Landroid/view/View;
    move-object v8, v7

    .line 641
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 645
    :pswitch_1
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040057

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 647
    const v8, 0x7f080019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 648
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 650
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 652
    const v8, 0x7f0800ff

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 656
    :pswitch_2
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040056

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 659
    const v8, 0x7f080019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 660
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 662
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 668
    .end local v3           #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_1
    move-object v7, p2

    .line 669
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3       #holder:Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 675
    :pswitch_3
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 680
    :pswitch_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080209

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 681
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 691
    :cond_2
    :goto_3
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_5

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 693
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, accType:Ljava/lang/String;
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 696
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 698
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 701
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    .end local v0           #accType:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 707
    .local v6, summary:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 708
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 682
    .end local v6           #summary:Ljava/lang/CharSequence;
    :cond_3
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f08020a

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 683
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_3

    .line 684
    :cond_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080108

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 685
    iget-object v8, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    iget-object v9, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_3

    .line 703
    :cond_5
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 711
    .restart local v6       #summary:Ljava/lang/CharSequence;
    :cond_6
    iget-object v8, v3, Lcom/android/OriginalSettings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 637
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 673
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 728
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;->pause()V

    .line 729
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 721
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->resume()V

    .line 722
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->mProfileEnabler:Lcom/android/OriginalSettings/profiles/ProfileEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/profiles/ProfileEnabler;->resume()V

    .line 723
    return-void
.end method

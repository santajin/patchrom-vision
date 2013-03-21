.class public Lcom/android/OriginalSettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RadioInfo$23;
    }
.end annotation


# static fields
.field static final DISABLE_DATA_STR:Ljava/lang/String; = "Disable data connection"

.field static final ENABLE_DATA_STR:Ljava/lang/String; = "Enable data connection"

.field private static final EVENT_CFI_CHANGED:I = 0x12e

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x64

.field private static final EVENT_QUERY_NEIGHBORING_CIDS_DONE:I = 0x3ea

.field private static final EVENT_QUERY_PREFERRED_TYPE_DONE:I = 0x3e8

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x3ed

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SET_PREFERRED_TYPE_DONE:I = 0x3e9

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x3ee

.field private static final MENU_ITEM_GET_PDP_LIST:I = 0x4

.field private static final MENU_ITEM_SELECT_BAND:I = 0x0

.field private static final MENU_ITEM_TOGGLE_DATA:I = 0x5

.field private static final MENU_ITEM_VIEW_ADN:I = 0x1

.field private static final MENU_ITEM_VIEW_FDN:I = 0x2

.field private static final MENU_ITEM_VIEW_SDN:I = 0x3

.field static final PROPERTY_IMS_REG_REQUIRED:Ljava/lang/String; = "persist.radio.imsregrequired"

.field static final PROPERTY_LTE_RAM_DUMP:Ljava/lang/String; = "persist.radio.ramdump"

.field static final PROPERTY_SMS_OVER_IMS:Ljava/lang/String; = "persist.radio.imsallowmtsms"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 140
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    .line 143
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$1;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 175
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$2;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 808
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$7;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 823
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$8;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 838
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$9;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 854
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$10;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 861
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$11;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 870
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$12;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 890
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$13;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 899
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$14;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 925
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$15;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 950
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$16;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 973
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$17;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 980
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$18;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 993
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$19;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 999
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$20;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1007
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$21;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1013
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$22;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1026
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/OriginalSettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 701
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 703
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 704
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 705
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 706
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 710
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 714
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 708
    .restart local v2       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 712
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 912
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 962
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 937
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 681
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 682
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 683
    .local v2, status:I
    if-nez v2, :cond_0

    .line 684
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 695
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :goto_0
    return-void

    .line 686
    .restart local v1       #p:Ljava/lang/Process;
    .restart local v2       #status:I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 688
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 690
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 691
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 692
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 661
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 662
    .local v1, ipAddress:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 663
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 664
    .local v3, status:I
    if-nez v3, :cond_0

    .line 665
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 674
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_0
    return-void

    .line 667
    .restart local v1       #ipAddress:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 669
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 671
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 718
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 575
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 576
    .local v2, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 577
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, display:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 594
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    return-void

    .line 581
    :pswitch_0
    const v3, 0x7f0b0025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    goto :goto_0

    .line 584
    :pswitch_1
    const v3, 0x7f0b0024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    goto :goto_0

    .line 587
    :pswitch_2
    const v3, 0x7f0b0023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    goto :goto_0

    .line 590
    :pswitch_3
    const v3, 0x7f0b0026

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 623
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 642
    .local v2, r:Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v9

    .line 643
    .local v9, txPackets:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v5

    .line 644
    .local v5, rxPackets:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v7

    .line 645
    .local v7, txBytes:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3

    .line 647
    .local v3, rxBytes:J
    const v11, 0x7f0b0028

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, packets:Ljava/lang/String;
    const v11, 0x7f0b0029

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, bytes:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v11, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    return-void

    .line 424
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 4

    .prologue
    .line 916
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 921
    return-void

    .line 917
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 13
    .parameter "location"

    .prologue
    const/4 v12, -0x1

    .line 455
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 456
    .local v7, r:Landroid/content/res/Resources;
    instance-of v9, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_2

    move-object v4, p1

    .line 457
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 458
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 459
    .local v2, lac:I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 460
    .local v1, cid:I
    iget-object v10, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0b002c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v2, v12, :cond_0

    const-string v9, "unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v11, 0x7f0b002d

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v1, v12, :cond_1

    const-string v9, "unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    .end local v1           #cid:I
    .end local v2           #lac:I
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 460
    .restart local v1       #cid:I
    .restart local v2       #lac:I
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 465
    .end local v1           #cid:I
    .end local v2           #lac:I
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v9, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_8

    move-object v4, p1

    .line 466
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 467
    .local v4, loc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 468
    .local v0, bid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    .line 469
    .local v8, sid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 470
    .local v6, nid:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 471
    .local v3, lat:I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    .line 472
    .local v5, lon:I
    iget-object v10, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v0, v12, :cond_3

    const-string v9, "unknown"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "SID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v8, v12, :cond_4

    const-string v9, "unknown"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "NID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v6, v12, :cond_5

    const-string v9, "unknown"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LAT = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v3, v12, :cond_6

    const-string v9, "unknown"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LONG = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v12, :cond_7

    const-string v9, "unknown"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 487
    .end local v0           #bid:I
    .end local v3           #lat:I
    .end local v4           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5           #lon:I
    .end local v6           #nid:I
    .end local v8           #sid:I
    :cond_8
    iget-object v9, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 4

    .prologue
    .line 966
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 971
    return-void

    .line 967
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b0014

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, cids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 497
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 501
    .local v0, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 505
    .end local v0           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 599
    .local v1, r:Landroid/content/res/Resources;
    const-string v2, "gsm.network.type"

    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, display:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 554
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 555
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 556
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, display:Ljava/lang/String;
    sget-object v3, Lcom/android/OriginalSettings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 570
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    return-void

    .line 560
    :pswitch_0
    const v3, 0x7f0b0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    const v3, 0x7f0b0021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    goto :goto_0

    .line 566
    :pswitch_2
    const v3, 0x7f0b0022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f0b0027

    .line 721
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 723
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 724
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 725
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 727
    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v4, Lcom/android/OriginalSettings/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/RadioInfo$3;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 738
    .local v4, updatePingResults:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/OriginalSettings/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/OriginalSettings/RadioInfo$4;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 745
    .local v3, ipAddr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 747
    new-instance v1, Lcom/android/OriginalSettings/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/OriginalSettings/RadioInfo$5;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 754
    .local v1, hostname:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 756
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/RadioInfo$6;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 763
    .local v2, httpClient:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 764
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void

    .line 417
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0b0027

    .line 608
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 610
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 616
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    .prologue
    .line 523
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 524
    .local v2, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 525
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 526
    .local v1, r:Landroid/content/res/Resources;
    const v4, 0x7f0b0027

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, display:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 541
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 549
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    return-void

    .line 530
    :pswitch_0
    const v4, 0x7f0b001a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    goto :goto_0

    .line 534
    :pswitch_1
    const v4, 0x7f0b001c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    goto :goto_0

    .line 537
    :pswitch_2
    const v4, 0x7f0b001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 432
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 433
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 437
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 442
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 444
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 446
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 448
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b002a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b002b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 4

    .prologue
    .line 941
    const-string v1, "phone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 946
    return-void

    .line 942
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v4, 0x7f04006d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->setContentView(I)V

    .line 249
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 250
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 252
    const v4, 0x7f080125

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 253
    const v4, 0x7f080126

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 254
    const v4, 0x7f080135

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 255
    const v4, 0x7f080127

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 256
    const v4, 0x7f08012f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 257
    const v4, 0x7f080130

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 258
    const v4, 0x7f080131

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 259
    const v4, 0x7f080132

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 260
    const v4, 0x7f08012c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 261
    const v4, 0x7f080133

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 262
    const v4, 0x7f080134

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f08012d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f08012e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f080136

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f080137

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f080138

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f080139

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 270
    const v4, 0x7f08013c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f08013a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f08013b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f080145

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 274
    const v4, 0x7f080147

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f080129

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 277
    const v4, 0x7f08012a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f08012b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f08013d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 281
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 283
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 284
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    const v4, 0x7f08013e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 288
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v4, 0x7f08013f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 291
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v4, 0x7f080140

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 294
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v4, 0x7f080141

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 297
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v4, 0x7f080128

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v4, 0x7f080143

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 302
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v4, 0x7f080144

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 304
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v4, 0x7f080146

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 306
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v4, 0x7f080148

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 309
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 311
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, oemInfoIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 318
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 319
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 320
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 322
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 324
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 327
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 328
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    const v0, 0x7f0b00c1

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 376
    const v0, 0x7f0b0016

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 378
    const/4 v0, 0x2

    const v1, 0x7f0b0017

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 380
    const/4 v0, 0x3

    const v1, 0x7f0b0018

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 382
    const/4 v0, 0x4

    const v1, 0x7f0b0019

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 384
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 386
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 365
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 369
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 392
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 393
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 394
    .local v1, state:I
    const/4 v2, 0x1

    .line 396
    .local v2, visible:Z
    packed-switch v1, :pswitch_data_0

    .line 405
    :pswitch_0
    const/4 v2, 0x0

    .line 408
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    const/4 v3, 0x1

    return v3

    .line 399
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 402
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    .line 335
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    .line 336
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    .line 337
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    .line 338
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    .line 339
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 340
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    .line 342
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    .line 344
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    .line 345
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    .line 347
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateProperties()V

    .line 348
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    .line 350
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 353
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 359
    return-void
.end method

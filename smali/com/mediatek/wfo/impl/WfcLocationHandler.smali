.class public Lcom/mediatek/wfo/impl/WfcLocationHandler;
.super Landroid/os/Handler;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;,
        Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;,
        Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATED_PLMN_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

.field private static final ACTION_LOCATION_CACHE:Ljava/lang/String; = "com.mediatek.intent.action.LOCATION_HANDLE"

.field private static final BASE:I = 0xbb8

.field private static final BROADCAST_FLAG_ENABLE:I = 0x1

.field private static final CACHE_DISABLE:I = 0x0

.field private static final CACHE_ENABLE:I = 0x1

.field private static final CACHE_ENABLE_EXTRA:Ljava/lang/String; = "enable_location_handle"

.field private static final COUNTRY_CODE_HK:Ljava/lang/String; = "HK"

.field private static final ENGLOAD:Z

.field private static final EVENT_ALL_RETRY_GET_LOCATION_REQUST:I = 0xbc0

.field private static final EVENT_DIALING_E911:I = 0xbbe

.field private static final EVENT_GET_LAST_KNOWN_LOCATION:I = 0xbb9

.field public static final EVENT_GET_LOCATION_REQUEST:I = 0xbb8

.field private static final EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE:I = 0xbbb

.field private static final EVENT_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0xbba

.field private static final EVENT_LOCATION_CACHE:I = 0xbc3

.field private static final EVENT_LOCATION_MODE_CHANGED:I = 0xbc1

.field private static final EVENT_LOCATION_PROVIDERS_CHANGED:I = 0xbc5

.field private static final EVENT_REQUEST_NETWORK_LOCATION:I = 0xbc2

.field private static final EVENT_RETRY_GET_LOCATION_REQUEST:I = 0xbbf

.field private static final EVENT_RETRY_NETWORK_LOCATION_REQUEST:I = 0xbc4

.field private static final EVENT_SET_COUNTRY_CODE:I = 0xbbd

.field private static final EVENT_SET_LOCATION_INFO:I = 0xbbc

.field private static final EXTRA_ISO:Ljava/lang/String; = "iso"

.field private static final KEY_LOCATION_CACHE:Ljava/lang/String; = "key_ocation_cache"

.field private static final KEY_LOCATION_CACHE_ACCOUNTID:Ljava/lang/String; = "key_accountid"

.field private static final KEY_LOCATION_CACHE_ACCURACY:Ljava/lang/String; = "key_accuracy"

.field private static final KEY_LOCATION_CACHE_BROADCASTFLAG:Ljava/lang/String; = "key_broadcastflag"

.field private static final KEY_LOCATION_CACHE_CITY:Ljava/lang/String; = "key_city"

.field private static final KEY_LOCATION_CACHE_COUNTRYCODE:Ljava/lang/String; = "key_countrycode"

.field private static final KEY_LOCATION_CACHE_LATITUDE:Ljava/lang/String; = "key_latitude"

.field private static final KEY_LOCATION_CACHE_LONGTITUDE:Ljava/lang/String; = "key_longitude"

.field private static final KEY_LOCATION_CACHE_METHOD:Ljava/lang/String; = "key_method"

.field private static final KEY_LOCATION_CACHE_STATE:Ljava/lang/String; = "key_state"

.field private static final KEY_LOCATION_CACHE_ZIP:Ljava/lang/String; = "key_zip"

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static MAX_GEOCODING_FAILURE_RETRY:I = 0x0

.field private static MAX_NETWORK_LOCATION_RETRY:I = 0x0

.field private static MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I = 0x0

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field public static final MTK_KEY_WFC_GET_LOCATION_ALWAYS:Ljava/lang/String; = "mtk_carrier_wfc_get_location_always"

.field private static NETWORK_LOCATION_UPDATE_TIME:I = 0x0

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I = 0x0

.field private static final REQUEST_LOCATION_RETRY_TIMEOUT:I = 0x1388

.field private static final REQUEST_NETWORK_LOCATION_RETRY_TIMEOUT:I = 0xbb8

.field private static final RESPONSE_SET_ALTITUDE_INFO:I = 0xc1e

.field private static final RESPONSE_SET_LOCATION_ENABLED:I = 0xc1d

.field private static final RESPONSE_SET_LOCATION_INFO:I = 0xc1c

.field private static final TAG:Ljava/lang/String; = "WfcLocationHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z


# instance fields
.field private mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceContext:Landroid/content/Context;

.field private mGeoCoder:Landroid/location/Geocoder;

.field private mGeocodingFailRetry:I

.field private mGnssProxyPackageName:Ljava/lang/String;

.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLocationSetting:Z

.field private mLocationInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequestLock:Ljava/lang/Object;

.field private mLocationRequestRegistered:Z

.field private mLocationSetting:Z

.field private mLocationTimeout:Z

.field private mLocationTimeoutLock:Ljava/lang/Object;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetworkAvailable:Z

.field private mNetworkLocationRetry:I

.field private mNetworkLocationTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingLocationRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCount:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWifiMacAddr:Ljava/lang/String;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I

    .line 96
    const v0, 0xd6d8

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 97
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->ENGLOAD:Z

    .line 99
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_GEOCODING_FAILURE_RETRY:I

    .line 100
    const/16 v0, 0xf

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    .line 123
    const/16 v0, 0x3e8

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    .line 171
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 172
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->USR_BUILD:Z

    .line 173
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WfcHandler;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p3, "wifiPdnHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p4, "simCount"    # I
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 512
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 147
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 155
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 162
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 163
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 165
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 167
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    .line 205
    const-string v0, "186119"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mIgnoreList:Ljava/util/List;

    .line 1286
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 513
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 515
    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 517
    const-string v0, "replace mContext to mDeviceContext"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 519
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 520
    iput-object p3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 521
    const/4 v0, 0x4

    if-gt p4, v0, :cond_1

    move v0, p4

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mSimCount:I

    .line 522
    iput-object p6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 524
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_GEOCODING_FAILURE_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    .line 525
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 527
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    .line 528
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 530
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 531
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 533
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1st time send location setting to modem, mLocationSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationEnabled()V

    .line 538
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 539
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 541
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 542
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 544
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerForBroadcast()V

    .line 545
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerIndication()V

    .line 546
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerDefaultNetwork()V

    .line 547
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/wfo/impl/WfcLocationHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mIgnoreList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->addRetryLocationRequestForECC()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->ENGLOAD:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$808(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$810(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 88
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    return-void
.end method

.method private addPackageInLocationSettingsWhitelist()V
    .locals 7

    .line 1186
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 1188
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1191
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1190
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1193
    .local v2, "whitelist":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1194
    :cond_0
    if-nez v2, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1195
    .local v4, "outStr":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add WFC in location setting whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1198
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1197
    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1202
    .end local v4    # "outStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addRetryLocationRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 556
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 558
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 559
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    .line 560
    .local v4, "retryRet":[Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    .line 561
    .local v3, "delayRet":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    array-length v5, v2

    invoke-static {v2, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 564
    .local v5, "retryAr":Landroid/os/AsyncResult;
    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v7, v3, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 566
    .local v7, "delayAr":Landroid/os/AsyncResult;
    const/16 v8, 0xbbf

    invoke-virtual {p0, v8, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 567
    .local v9, "retryMsg":Landroid/os/Message;
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 569
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_0
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 574
    :goto_0
    const-string v6, "WfcLocationHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added, current PendingLocationRequest size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 574
    invoke-static {v6, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0, v8, v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 577
    .local v6, "delayMsg":Landroid/os/Message;
    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 578
    nop

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "delayRet":[Ljava/lang/String;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "retryAr":Landroid/os/AsyncResult;
    .end local v6    # "delayMsg":Landroid/os/Message;
    .end local v7    # "delayAr":Landroid/os/AsyncResult;
    .end local v9    # "retryMsg":Landroid/os/Message;
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addRetryLocationRequestForECC()V
    .locals 6

    .line 582
    const-string v0, "0"

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "retryRet":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 585
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 586
    .local v1, "retryAr":Landroid/os/AsyncResult;
    const/16 v2, 0xbbf

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 588
    .local v2, "retryMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 590
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 595
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added for ECC, current PendingLocationRequest size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    const-string v4, "WfcLocationHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method private cancelNetworkLocationRequest()V
    .locals 4

    .line 1171
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "WfcLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1175
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1176
    const-string v0, "cancelNetworkLocationRequest: empty locationManager, return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void

    .line 1179
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1180
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1181
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removePackageInLocationSettingsWhitelist()V

    .line 1182
    const-string v0, "cancelNetworkLocationRequest"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return-void
.end method

.method private checkLocationProxyAppPermission()Z
    .locals 5

    .line 1454
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 1456
    const/4 v1, 0x1

    const-string v2, "WfcLocationHandler"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    const-string v0, "The package name is empty, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return v1

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1464
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1465
    .local v0, "proxyAppLocationGranted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyAppLocationGranted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    return v0

    .line 1469
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_2
    const-string v0, "non-FWK permission app not installed, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return v1
.end method

.method private dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 683
    iget-wide v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 684
    .local v0, "latitude":D
    iget-wide v2, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 685
    .local v2, "longitude":D
    iget v4, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 687
    .local v4, "accuracy":F
    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-nez v7, :cond_0

    cmpl-double v5, v2, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 688
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    goto :goto_0

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    .line 691
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v5

    .line 692
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 693
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    const-string v5, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 695
    const/16 v5, 0xbb9

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 696
    const-string v5, "GPS"

    iput-object v5, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 697
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 700
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLocationRequest(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 701
    return-void

    .line 693
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 12
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .param p2, "retry"    # Ljava/lang/Boolean;

    .line 878
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 879
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 880
    const-string v0, "getGeoLocationFromLatLong: empty geoCoder, return an empty location"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 881
    return-object p1

    .line 884
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 885
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 886
    return-object p1

    .line 889
    :cond_1
    iget-wide v7, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 890
    .local v7, "lat":D
    iget-wide v9, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 892
    .local v9, "lng":D
    const/4 v11, 0x0

    .line 894
    .local v11, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    const/4 v6, 0x1

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    .line 899
    :goto_0
    goto :goto_1

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    const-string v2, "mGeoCoder.getFromLocation throw IllegalArgumentException"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 895
    .end local v1    # "e2":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 896
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGeoCoder.getFromLocation throw IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 901
    :goto_1
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 915
    :cond_2
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 916
    iget-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 917
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 919
    :cond_3
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 920
    iget-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 921
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 923
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 924
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 926
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 927
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->saveLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 930
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGeoLocationFromLatLong: location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 932
    return-object p1

    .line 902
    :cond_6
    :goto_2
    const-string v0, "getGeoLocationFromLatLong: get empty address"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 903
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 904
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 905
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 906
    const/4 v0, 0x0

    return-object v0

    .line 908
    :cond_7
    return-object p1

    .line 910
    :cond_8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 911
    return-object p1
.end method

.method private getLastKnownLocation(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Z
    .locals 11
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 1013
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1016
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1017
    return v1

    .line 1021
    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1022
    const-string v0, "getLastKnownLocation: GPS_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1023
    return v1

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1028
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1030
    .local v0, "gpsLocation":Landroid/location/Location;
    const/4 v2, 0x1

    const/16 v3, 0xbbb

    const-wide/32 v4, 0x1b7740

    if-eqz v0, :cond_2

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPS location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    .line 1034
    invoke-virtual {p0, v3, v1, v1, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1036
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1037
    return v2

    .line 1042
    :cond_2
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1043
    const-string v2, "getLastKnownLocation: NETWORK_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1044
    return v1

    .line 1049
    :cond_3
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1050
    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1052
    .local v6, "networkLocation":Landroid/location/Location;
    if-eqz v6, :cond_4

    .line 1054
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-gez v4, :cond_4

    .line 1056
    invoke-virtual {p0, v3, v1, v1, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1058
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1059
    return v2

    .line 1063
    :cond_4
    const-string v2, "getLastKnownLocation: no last known location"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1066
    return v1
.end method

.method private getLastKnownLocationOnly(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 5
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 1070
    const-string v0, "getLastKnownLocationOnly"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1073
    const-string v0, "getLastKnownLocationOnly: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1074
    return-object v1

    .line 1078
    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1079
    const-string v0, "getLastKnownLocationOnly: GPS_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1080
    return-object v1

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1085
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1086
    .local v0, "gpsLocation":Landroid/location/Location;
    if-eqz v0, :cond_2

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 1089
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 1090
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAltitude:D

    .line 1091
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 1092
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1093
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1094
    invoke-virtual {v0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 1095
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    .line 1096
    return-object p1

    .line 1100
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1101
    const-string v2, "getLastKnownLocationOnly: NETWORK_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1102
    return-object v1

    .line 1106
    :cond_3
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1107
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 1108
    .local v2, "networkLocation":Landroid/location/Location;
    if-eqz v2, :cond_4

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network location: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 1111
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 1112
    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAltitude:D

    .line 1113
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 1114
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1115
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1116
    invoke-virtual {v2}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 1117
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    .line 1118
    return-object p1

    .line 1121
    :cond_4
    const-string v3, "getLastKnownLocationOnly: no last known location"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1122
    return-object v1
.end method

.method private getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 5
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 988
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 990
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_accountid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    .line 992
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    if-nez v1, :cond_0

    .line 993
    const-string v1, "key_broadcastflag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 996
    :cond_0
    const-string v1, "key_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 998
    const-string v1, "key_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 1000
    const-string v1, "key_accuracy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 1002
    const-string v1, "key_method"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 1003
    const-string v1, "key_city"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1004
    const-string v1, "key_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1005
    const-string v1, "key_zip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 1006
    const-string v1, "key_countrycode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get geolocation from cache, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-object p1
.end method

.method private getLocationCacheEnable()Z
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 955
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_ocation_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 956
    .local v1, "locationCacheEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get location cache enable status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1268
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1269
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1270
    :cond_0
    const/4 v0, -0x1

    .line 1272
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1273
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1277
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1279
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1280
    const/4 v1, 0x0

    return-object v1

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSimCountryCode()Ljava/lang/String;
    .locals 3

    .line 936
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "simCountryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 939
    return-object v0
.end method

.method private handleAllRetryLocationRequest()V
    .locals 4

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllRetryLocationRequest mPendingLocationRequest.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    const/16 v1, 0xbbf

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 617
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 620
    :cond_1
    const-string v3, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 618
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 622
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    goto :goto_0

    .line 623
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 624
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLocationRequest(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 648
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "WfcLocationHandler"

    if-nez v0, :cond_0

    .line 649
    const-string v0, "handleLocationInfo(): msg.obj is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 652
    :cond_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 653
    .local v13, "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, [Ljava/lang/String;

    .line 655
    .local v14, "result":[Ljava/lang/String;
    if-nez v14, :cond_1

    .line 656
    const-string v0, "handleLocationInfo(): result is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void

    .line 661
    :cond_1
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_0
    aget-object v0, v14, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 662
    .local v4, "accId":I
    aget-object v0, v14, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 663
    .local v5, "broadcastFlag":I
    const/4 v0, 0x2

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 664
    .local v6, "latitude":D
    const/4 v0, 0x3

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 665
    .local v8, "longitude":D
    const/4 v0, 0x4

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 666
    .local v10, "accuracy":F
    aget-object v0, v14, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 669
    .local v3, "simIdx":I
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 672
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 673
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(), ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], accId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", broadcastFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", simIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    .line 704
    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 705
    const-string v1, "network location get null, unexpected result"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 706
    return-void

    .line 709
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 710
    .local v1, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 711
    .local v3, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    .line 712
    .local v5, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 713
    .local v7, "accuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v8

    .line 714
    .local v8, "verticalAccuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    .line 715
    .local v9, "time":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update all LocationInfo with  time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " accuracy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " altitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, " verticalAccuracy: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 722
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v11, "duplicatedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;>;"
    iget-object v12, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 724
    .local v13, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iput-wide v1, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 725
    iput-wide v3, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 726
    iput-wide v5, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAltitude:D

    .line 727
    iput v7, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 730
    iput v7, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 731
    iput v7, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 732
    iput v8, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 733
    iput-wide v9, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    .line 734
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v14, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 737
    .local v15, "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    move-wide/from16 v16, v1

    .end local v1    # "latitude":D
    .local v16, "latitude":D
    iget v1, v15, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    iget v2, v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    if-ne v1, v2, :cond_1

    .line 738
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v15    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :cond_1
    move-wide/from16 v1, v16

    goto :goto_1

    .line 741
    .end local v16    # "latitude":D
    .restart local v1    # "latitude":D
    :cond_2
    move-wide/from16 v16, v1

    .end local v1    # "latitude":D
    .restart local v16    # "latitude":D
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 742
    .local v2, "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iget-object v14, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 743
    .end local v2    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    goto :goto_2

    .line 744
    :cond_3
    iget-object v1, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v13    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    move-wide/from16 v1, v16

    goto :goto_0

    .line 747
    .end local v16    # "latitude":D
    .restart local v1    # "latitude":D
    :cond_4
    move-wide/from16 v16, v1

    .end local v1    # "latitude":D
    .restart local v16    # "latitude":D
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 748
    iget-object v1, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 749
    return-void
.end method

.method private handleRetryLocationRequest(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 600
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PendingLocationRequest size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    const-string v1, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 603
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 607
    :goto_1
    monitor-exit v0

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCtaNotAllow()Z
    .locals 6

    .line 1396
    const/4 v0, 0x0

    .line 1399
    .local v0, "isCtaNotAllow":Z
    const-string v1, "ro.vendor.mtk_cta_set"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1401
    .local v1, "isCtaSet":Z
    :goto_0
    const-string v4, "ro.vendor.mtk_mobile_management"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 1403
    .local v2, "isCtaSecurity":Z
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1404
    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1405
    .local v3, "isNlpEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCtaNotAllow: isCtaSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCtaSecurity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNlpEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1408
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 1409
    const/4 v0, 0x1

    .line 1411
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCtaNotAllow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WfcLocationHandler"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    .line 1357
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1359
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return v0
.end method

.method private isGetLocationAlways()Z
    .locals 6

    .line 1369
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1370
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1371
    const-string v1, "WfcLocationHandler"

    if-nez v0, :cond_0

    .line 1372
    const-string v0, "isGetLocationAlways: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1377
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1379
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1380
    const-string v3, "isGetLocationAlways: SIM not ready, use default carrier config"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1384
    :cond_2
    nop

    .line 1385
    const-string v3, "mtk_carrier_wfc_get_location_always"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1386
    .local v3, "getLocationAlways":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGetLocationAlways: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return v3
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 1445
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    const/4 v0, 0x1

    return v0

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-FWK permission apk not found, treat it as granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return v0
.end method

.method private loadProxyNameFromCarrierConfig()Ljava/lang/String;
    .locals 6

    .line 1416
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1417
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1418
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1419
    const-string v0, "loadProxyNameFromCarrierConfig: Carrier Config service is NOT ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1420
    return-object v1

    .line 1423
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1424
    .local v0, "ddSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1425
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1426
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1427
    const-string v3, "SIM not ready, use default carrier config"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1428
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1431
    :cond_2
    const-string v3, "gps.nfw_proxy_apps"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1432
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps.nfw_proxy_apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1433
    if-eqz v3, :cond_3

    .line 1434
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1436
    .local v1, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    return-object v4

    .line 1438
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    const-string v4, "Cannot get location proxy APP package name"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1439
    return-object v1
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1476
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    return-object p1

    .line 1479
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1480
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1484
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1487
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 466
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc1d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 501
    const-string v0, "UNKNOWN"

    return-object v0

    .line 495
    :pswitch_0
    const-string v0, "EVENT_LOCATION_PROVIDERS_CHANGED"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "EVENT_RETRY_NETWORK_LOCATION_REQUEST"

    return-object v0

    .line 497
    :pswitch_2
    const-string v0, "EVENT_LOCATION_CACHE"

    return-object v0

    .line 487
    :pswitch_3
    const-string v0, "EVENT_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 493
    :pswitch_4
    const-string v0, "EVENT_LOCATION_MODE_CHANGED"

    return-object v0

    .line 491
    :pswitch_5
    const-string v0, "EVENT_ALL_RETRY_GET_LOCATION_REQUST"

    return-object v0

    .line 489
    :pswitch_6
    const-string v0, "EVENT_RETRY_GET_LOCATION_REQUEST"

    return-object v0

    .line 481
    :pswitch_7
    const-string v0, "EVENT_DIALING_E911"

    return-object v0

    .line 475
    :pswitch_8
    const-string v0, "EVENT_SET_COUNTRY_CODE"

    return-object v0

    .line 473
    :pswitch_9
    const-string v0, "EVENT_SET_LOCATION_INFO"

    return-object v0

    .line 479
    :pswitch_a
    const-string v0, "EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE"

    return-object v0

    .line 471
    :pswitch_b
    const-string v0, "EVENT_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 477
    :pswitch_c
    const-string v0, "EVENT_GET_LAST_KNOWN_LOCATION"

    return-object v0

    .line 469
    :pswitch_d
    const-string v0, "EVENT_GET_LOCATION_REQUEST"

    return-object v0

    .line 485
    :cond_0
    const-string v0, "RESPONSE_SET_LOCATION_ENABLED"

    return-object v0

    .line 483
    :cond_1
    const-string v0, "RESPONSE_SET_LOCATION_INFO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pollLocationInfo()V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const-string v0, "No GeoLocation task"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 785
    return-void

    .line 789
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 790
    .local v0, "LocationInfoQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;>;"
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 792
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 811
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 813
    return-void
.end method

.method private proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 752
    const-string v0, "Network"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 755
    const-string v0, "requestLocationFromNetworkLocation failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 759
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 761
    sget v2, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 763
    :cond_0
    iget v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_1

    .line 764
    const-string v2, "requestLocationFromNetworkLocation retry."

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 765
    nop

    .line 766
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    .line 765
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 769
    :cond_1
    const-string v0, "requestLocationFromNetworkLocation retry fail, skip."

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 774
    :cond_2
    :goto_0
    const/16 v0, 0xbb9

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 776
    const-string v2, "Add delayed message: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 780
    :cond_3
    return-void
.end method

.method private registerDefaultNetwork()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 629
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 643
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 1338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1339
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1341
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    const-string v1, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1344
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removePackageInLocationSettingsWhitelist()V
    .locals 10

    .line 1205
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 1207
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1210
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1209
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, "whitelist":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1213
    .local v4, "index":I
    const-string v5, ""

    .line 1214
    .local v5, "outStr":Ljava/lang/String;
    const/4 v6, -0x1

    if-eqz v2, :cond_1

    .line 1215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1216
    const-string v7, ""

    if-eq v4, v6, :cond_0

    .line 1217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1220
    if-eq v4, v6, :cond_1

    .line 1221
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1226
    :cond_1
    :goto_0
    if-eq v4, v6, :cond_2

    .line 1227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove WFC in location setting whitelist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1229
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1228
    invoke-static {v6, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1233
    :cond_2
    return-void
.end method

.method private requestLocationFromNetworkLocation()Z
    .locals 11

    .line 1126
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "WfcLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1127
    const-string v0, "requestLocationFromNetworkLocation failed: empty locationManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return v2

    .line 1132
    :cond_0
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1133
    const-string v0, "requestLocationFromNetworkLocation failed: NETWORK_PROVIDER not ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return v2

    .line 1138
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    const-string v0, "requestLocationFromNetworkLocation failed: CTA not allow"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v2

    .line 1143
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->checkLocationProxyAppPermission()Z

    move-result v0

    .line 1144
    .local v0, "isProxyAppPermissionGranted":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isEccInProgress()Z

    move-result v4

    .line 1145
    .local v4, "isEcc":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isGetLocationAlways()Z

    move-result v5

    .line 1146
    .local v5, "isGetLocAlways":Z
    const/4 v6, 0x1

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v7, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v6

    .line 1147
    .local v7, "mustGetLocation":Z
    :goto_1
    if-eqz v7, :cond_5

    .line 1148
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->addPackageInLocationSettingsWhitelist()V

    .line 1150
    :cond_5
    if-nez v7, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1164
    :cond_6
    const-string v3, "requestLocationFromNetworkLocation failed: is NOT in ECC & non-framework location proxy app is NOT granted"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return v2

    .line 1151
    :cond_7
    :goto_2
    iget-boolean v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    if-nez v8, :cond_8

    .line 1152
    sget v8, Lcom/mediatek/wfo/impl/WfcLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10, v2}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1155
    .local v2, "request":Landroid/location/LocationRequest;
    invoke-virtual {v2, v6}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 1156
    invoke-virtual {v2, v7}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 1157
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    .line 1158
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    .line 1157
    invoke-virtual {v3, v2, v8, v9}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1159
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1160
    const-string v3, "requestLocationFromNetworkLocation: success"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    .end local v2    # "request":Landroid/location/LocationRequest;
    :cond_8
    return v6
.end method

.method private saveLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLocationCache, location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 964
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 966
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    const-string v4, "key_accountid"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 967
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    const-string v4, "key_broadcastflag"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 969
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    double-to-float v3, v3

    const-string v4, "key_latitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 970
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    double-to-float v3, v3

    const-string v4, "key_longitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 971
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    const-string v4, "key_accuracy"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 973
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    const-string v4, "key_method"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    const-string v4, "key_city"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 975
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    const-string v4, "key_state"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    const-string v4, "key_zip"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 977
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    const-string v4, "key_countrycode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 979
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 980
    const-string v3, "Failed to commit saveLocationCache"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 984
    .local v1, "tmplocation":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 985
    return-void
.end method

.method private setAltitude(DFFF)V
    .locals 6
    .param p1, "altitude"    # D
    .param p3, "majorAxisAccuracy"    # F
    .param p4, "minorAxisAccuracy"    # F
    .param p5, "vericalAxisAccuracy"    # F

    .line 818
    const/16 v0, 0xc1e

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 820
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-static {p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAltitude: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v3

    .line 833
    .local v3, "ril":Lcom/mediatek/wfo/ril/MwiRIL;
    if-eqz v3, :cond_0

    .line 834
    sget-object v4, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_ALTITUDE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v4}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v4

    const-string v5, "altitude"

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 837
    :cond_0
    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 11
    .param p1, "iso"    # Ljava/lang/String;

    .line 1326
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1327
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iput-object p1, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1329
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLastKnownLocationOnly(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-result-object v1

    .line 1330
    .local v1, "lastInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    if-eqz v1, :cond_0

    .line 1331
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    goto :goto_0

    .line 1333
    :cond_0
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1335
    :goto_0
    return-void
.end method

.method private setLocationCacheEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 943
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 944
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 946
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_ocation_cache"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set location cache enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    const-string v2, "Failed to commit location cache"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    return-void
.end method

.method private setLocationEnabled()V
    .locals 5

    .line 1249
    const/16 v0, 0xc1d

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1251
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationEnabled(): last location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", new location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1255
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    .line 1256
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 1255
    :goto_0
    const-string v4, "locenable"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1259
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    .line 1260
    return-void
.end method

.method private setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 840
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const-string v0, "Unknown"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 845
    const-string v2, "HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 848
    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 850
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 851
    :cond_4
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 853
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 855
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocationInfo info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlmnCountryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAltitude:D

    iget v5, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    iget v6, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    iget v7, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setAltitude(DFFF)V

    .line 859
    const/16 v0, 0xc1c

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    .line 861
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 862
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 863
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 864
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 865
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    iget-object v8, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    iget-object v9, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    iget-object v10, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    iget-object v11, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 871
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getUeWlanMacAddr()Ljava/lang/String;

    move-result-object v12

    .line 860
    move-object v13, v0

    invoke-virtual/range {v1 .. v13}, Lcom/mediatek/wfo/ril/MwiRIL;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 872
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 873
    return-void
.end method

.method private utGeoLocationRequest()V
    .locals 11

    .line 1236
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide v5, 0x406a800000000000L    # 212.0

    const-wide v7, 0x4062600000000000L    # 147.0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1238
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1239
    return-void
.end method

.method private utNetworkLocationRequest()V
    .locals 11

    .line 1242
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1244
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1245
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 506
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 340
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 341
    iget v0, v12, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 445
    :pswitch_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 446
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v2

    if-nez v2, :cond_b

    .line 447
    iget v2, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_0

    .line 448
    const-string v2, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry."

    invoke-virtual {v11, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 449
    const/16 v2, 0xbc4

    .line 450
    invoke-virtual {v11, v2, v1, v1, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 449
    invoke-virtual {v11, v1, v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 453
    :cond_0
    const-string v1, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry fail, skip."

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 454
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    sget v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    goto/16 :goto_3

    .line 424
    .end local v0    # "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :pswitch_1
    iget v0, v12, Landroid/os/Message;->arg1:I

    .line 425
    .local v0, "cacheEnable":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 427
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 428
    .local v14, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 429
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne v0, v13, :cond_1

    .line 430
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 431
    const/4 v1, 0x1

    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationCacheEnable(Z)V

    .line 432
    new-instance v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/16 v4, 0x8

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 434
    .local v1, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 435
    .end local v1    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    goto/16 :goto_3

    .line 436
    :cond_1
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationCacheEnable(Z)V

    .line 437
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    const-string v1, "Failed to commit location cache"

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 440
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    .line 442
    goto/16 :goto_3

    .line 389
    .end local v0    # "cacheEnable":I
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 391
    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    if-eq v0, v1, :cond_3

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationEnabled()V

    goto/16 :goto_3

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Same location setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 396
    goto/16 :goto_3

    .line 357
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleAllRetryLocationRequest()V

    .line 358
    goto/16 :goto_3

    .line 354
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleRetryLocationRequest(Landroid/os/Message;)V

    .line 355
    goto/16 :goto_3

    .line 401
    :pswitch_5
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 402
    goto/16 :goto_3

    .line 371
    :pswitch_6
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 373
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_4
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 377
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 382
    :cond_5
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_6
    :goto_0
    new-instance v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 385
    :cond_7
    :goto_1
    iput-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    goto :goto_3

    .line 366
    .end local v0    # "iso":Ljava/lang/String;
    :pswitch_7
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 367
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 368
    goto :goto_3

    .line 361
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :pswitch_8
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 362
    .local v0, "location":Landroid/location/Location;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    .line 363
    goto :goto_3

    .line 404
    .end local v0    # "location":Landroid/location/Location;
    :pswitch_9
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v0, :cond_8

    .line 408
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->onLocationTimeout()V

    goto :goto_2

    .line 410
    :cond_8
    const-string v0, "WfcLocationHandler"

    const-string v1, "EVENT_GET_LAST_KNOWN_LOCATION: WfcHandler null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_2
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 413
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLastKnownLocation(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Z

    move-result v1

    .line 415
    .local v1, "getLocationSuccess":Z
    if-eqz v1, :cond_b

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    goto :goto_3

    .line 406
    .end local v0    # "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .end local v1    # "getLocationSuccess":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 343
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    return-void

    .line 346
    :cond_9
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-nez v0, :cond_a

    .line 347
    const-string v0, "WfcLocationHandler"

    const-string v1, "Wi-Fi isn\'t connected and network unavailable."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->addRetryLocationRequest(Landroid/os/Message;)V

    .line 349
    return-void

    .line 351
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 352
    nop

    .line 463
    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 550
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const-string v0, "WfcLocationHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    return-void
.end method

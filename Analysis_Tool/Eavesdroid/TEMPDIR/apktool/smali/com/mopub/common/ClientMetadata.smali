.class public Lcom/mopub/common/ClientMetadata;
.super Ljava/lang/Object;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field private static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field private static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field private static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field private static final IFA_PREFIX:Ljava/lang/String; = "ifa:"

.field private static final SHA_PREFIX:Ljava/lang/String; = "sha:"

.field private static final TYPE_ETHERNET:I = 0x9

.field private static final UNKNOWN_NETWORK:I = -0x1

.field private static volatile sInstance:Lcom/mopub/common/ClientMetadata;


# instance fields
.field private mAdvertisingInfoSet:Z

.field private mAppName:Ljava/lang/String;

.field private final mAppPackageName:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManufacturer:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mDeviceOsVersion:Ljava/lang/String;

.field private final mDeviceProduct:Ljava/lang/String;

.field private mDoNotTrack:Z

.field private final mIsoCountryCode:Ljava/lang/String;

.field private final mNetworkOperator:Ljava/lang/String;

.field private mNetworkOperatorForUrl:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private final mSimIsoCountryCode:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private mSimOperatorName:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z

    .line 49
    iput-boolean v4, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    .line 141
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 142
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 143
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    .line 144
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    .line 145
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    .line 146
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    .line 148
    const-string v4, "4.5.1"

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 153
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 154
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    .line 156
    :try_start_0
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 160
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    .line 165
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 166
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 167
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    .line 168
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 169
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 170
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 171
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 175
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    .line 178
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 179
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 180
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getDeviceIdFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;

    .line 189
    return-void

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/SecurityException;
    iput-object v7, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 184
    iput-object v7, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    goto :goto_1

    .line 157
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static clearForTesting()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 418
    return-void
.end method

.method private static getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 196
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "exception":Ljava/lang/Exception;
    const-string v3, "Failed to retrieve PackageInfo#versionName."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDeviceIdFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 207
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 206
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mopub/common/ClientMetadata;
    .locals 3

    .prologue
    .line 127
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 128
    .local v0, "result":Lcom/mopub/common/ClientMetadata;
    if-nez v0, :cond_0

    .line 130
    const-class v2, Lcom/mopub/common/ClientMetadata;

    monitor-enter v2

    .line 131
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 132
    monitor-exit v2

    .line 135
    :cond_0
    return-object v0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 109
    .local v0, "result":Lcom/mopub/common/ClientMetadata;
    if-nez v0, :cond_1

    .line 110
    const-class v3, Lcom/mopub/common/ClientMetadata;

    monitor-enter v3

    .line 111
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v1, Lcom/mopub/common/ClientMetadata;

    invoke-direct {v1, p0}, Lcom/mopub/common/ClientMetadata;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v0    # "result":Lcom/mopub/common/ClientMetadata;
    .local v1, "result":Lcom/mopub/common/ClientMetadata;
    :try_start_1
    sput-object v1, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 116
    .end local v1    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v0    # "result":Lcom/mopub/common/ClientMetadata;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 118
    :cond_1
    return-object v0

    .line 116
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v1    # "result":Lcom/mopub/common/ClientMetadata;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v0    # "result":Lcom/mopub/common/ClientMetadata;
    goto :goto_0
.end method

.method public static setInstance(Lcom/mopub/common/ClientMetadata;)V
    .locals 2
    .param p0, "clientMetadata"    # Lcom/mopub/common/ClientMetadata;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 411
    :try_start_0
    sput-object p0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 412
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 4

    .prologue
    .line 228
    const/4 v1, -0x1

    .line 229
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 231
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 234
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->access$000(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v2

    return-object v2

    .line 232
    .restart local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDeviceDimensions()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenHeightDip()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDeviceScreenWidthDip()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 215
    .local v1, "orientationInt":I
    const-string v0, "u"

    .line 216
    .local v0, "orientation":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 217
    const-string v0, "p"

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 219
    const-string v0, "l"

    goto :goto_0

    .line 220
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 221
    const-string v0, "s"

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isAdvertisingInfoSet()Z
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDoNotTrackSet()Z
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdvertisingInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "doNotTrack"    # Z

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;

    .line 315
    iput-boolean p2, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

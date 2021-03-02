.class public Ltv/alphonso/service/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/service/LocationService$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 1000.0f

.field private static final LOCATION_INTERVAL:I = 0x493e0

.field private static final TAG:Ljava/lang/String;

.field public static debug:Z


# instance fields
.field private mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field private mContext:Landroid/content/Context;

.field private mLastLocation:Landroid/location/Location;

.field mLocationListeners:[Ltv/alphonso/service/LocationService$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationPollInterval:J

.field private mProvClient:Ltv/alphonso/service/ProvClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Ltv/alphonso/service/LocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/service/ProvClient;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alphonsoClient"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p3, "provClient"    # Ltv/alphonso/service/ProvClient;
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    .line 27
    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 28
    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 30
    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/alphonso/service/LocationService;->mLocationPollInterval:J

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Ltv/alphonso/service/LocationService$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Ltv/alphonso/service/LocationService$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Ltv/alphonso/service/LocationService$LocationListener;-><init>(Ltv/alphonso/service/LocationService;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationListeners:[Ltv/alphonso/service/LocationService$LocationListener;

    .line 195
    iput-object p1, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 199
    iput-object p3, p0, Ltv/alphonso/service/LocationService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 201
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    .line 203
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getLocationPollInterval(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/service/LocationService;->setLocationPollInterval(J)V

    .line 205
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    .line 206
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got location from persistence; Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 212
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Location service permission not granted. Hence location will remain unknown.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0}, Ltv/alphonso/service/LocationService;->initializeLocationManager()V

    .line 223
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 224
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 226
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Could not get last known location."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_1
    invoke-virtual {p0}, Ltv/alphonso/service/LocationService;->registerForLocationUpdates()V

    goto :goto_0

    .line 230
    :cond_2
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_3

    .line 231
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got last known location as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Ltv/alphonso/service/LocationService;->sendLocationUpdate(Landroid/location/Location;)V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltv/alphonso/service/LocationService;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/LocationService;

    .prologue
    .line 19
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$102(Ltv/alphonso/service/LocationService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/service/LocationService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 19
    iput-object p1, p0, Ltv/alphonso/service/LocationService;->mLastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Ltv/alphonso/service/LocationService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/LocationService;

    .prologue
    .line 19
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ltv/alphonso/service/LocationService;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/service/LocationService;

    .prologue
    .line 19
    invoke-direct {p0}, Ltv/alphonso/service/LocationService;->unRegisterFromNetworkLocationUpdates()V

    return-void
.end method

.method private initializeLocationManager()V
    .locals 2

    .prologue
    .line 183
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "initializeLocationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 189
    :cond_1
    return-void
.end method

.method private registerForNetworkLocationUpdates()V
    .locals 8

    .prologue
    .line 275
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "Registering for location updates from Network Provider."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x447a0000    # 1000.0f

    iget-object v5, p0, Ltv/alphonso/service/LocationService;->mLocationListeners:[Ltv/alphonso/service/LocationService$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v6

    .line 289
    .local v6, "ex":Ljava/lang/SecurityException;
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 291
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 293
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network provider does not exist, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterFromNetworkLocationUpdates()V
    .locals 4

    .prologue
    .line 328
    sget-boolean v1, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v1, :cond_0

    .line 329
    sget-object v1, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v2, "Un-Registering for location updates from Network Provider."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    .line 335
    :try_start_0
    iget-object v1, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mLocationListeners:[Ltv/alphonso/service/LocationService$LocationListener;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v2, "fail to remove location listners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/LocationService;->stopPeriodicTimer()V

    .line 352
    invoke-virtual {p0}, Ltv/alphonso/service/LocationService;->unRegisterFromLocationUpdates()V

    .line 355
    iput-object v2, p0, Ltv/alphonso/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 357
    iput-object v2, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 359
    iput-object v2, p0, Ltv/alphonso/service/LocationService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 360
    return-void
.end method

.method public processLocationPeriodicTimerExpiry()V
    .locals 2

    .prologue
    .line 420
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "LocationService poll timer expiry!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/LocationService;->registerForLocationUpdates()V

    .line 424
    return-void
.end method

.method public registerForLocationUpdates()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ltv/alphonso/service/LocationService;->registerForNetworkLocationUpdates()V

    .line 245
    return-void
.end method

.method public sendLocationUpdate(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 365
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "location"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 368
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 375
    sget-boolean v2, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v2, :cond_0

    .line 376
    sget-object v2, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v3, "Sending Location Update to AlphonsoClient."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mProvClient:Ltv/alphonso/service/ProvClient;

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mProvClient:Ltv/alphonso/service/ProvClient;

    invoke-virtual {v2}, Ltv/alphonso/service/ProvClient;->processLocationUpdate()V

    .line 386
    :cond_2
    return-void
.end method

.method public setLocationPollInterval(J)V
    .locals 5
    .param p1, "locationPollInterval"    # J

    .prologue
    .line 428
    sget-boolean v0, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mLocationPollInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/service/LocationService;->mLocationPollInterval:J

    .line 433
    iget-object v0, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/service/LocationService;->mLocationPollInterval:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setLocationPollInterval(Landroid/content/Context;J)V

    .line 434
    return-void
.end method

.method public startPeriodicTimer()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 390
    sget-boolean v2, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v2, :cond_0

    .line 391
    sget-object v2, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v3, "Starting LOCATION_POLL_TIMER."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 394
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-class v3, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "LOCATION_POLL_TIMER"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v2, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v3, 0x2b

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 399
    .local v6, "pi":Landroid/app/PendingIntent;
    iget-wide v2, p0, Ltv/alphonso/service/LocationService;->mLocationPollInterval:J

    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    mul-long v4, v2, v8

    .line 402
    .local v4, "interval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 403
    return-void
.end method

.method public stopPeriodicTimer()V
    .locals 6

    .prologue
    .line 407
    sget-boolean v3, Ltv/alphonso/service/LocationService;->debug:Z

    if-eqz v3, :cond_0

    .line 408
    sget-object v3, Ltv/alphonso/service/LocationService;->TAG:Ljava/lang/String;

    const-string v4, "Stopping LOCATION_POLL_TIMER."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget-object v3, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 411
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "LOCATION_POLL_TIMER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v4, 0x2b

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    iget-object v3, p0, Ltv/alphonso/service/LocationService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 415
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 416
    return-void
.end method

.method public unRegisterFromLocationUpdates()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ltv/alphonso/service/LocationService;->unRegisterFromNetworkLocationUpdates()V

    .line 304
    return-void
.end method

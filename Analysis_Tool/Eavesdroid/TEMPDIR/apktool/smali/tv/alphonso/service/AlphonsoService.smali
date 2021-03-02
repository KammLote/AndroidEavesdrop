.class public Ltv/alphonso/service/AlphonsoService;
.super Landroid/app/Service;
.source "AlphonsoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/service/AlphonsoService$MsgHandler;
    }
.end annotation


# static fields
.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_ID:Ljava/lang/String; = "facebook_uid"

.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_LOGIN:Ljava/lang/String; = "facebook_login"

.field public static final ALPHONSO_SERVICE_USER_TYPE_PARTNER_ID:Ljava/lang/String; = "partner_user_id"

.field public static final ENABLE_DEBUG_SCREEN:I = 0x1

.field public static final EVENT:Ljava/lang/String; = "tv.alphonso.service.AlphonsoService.EVENT"

.field public static final EXTRA_PARAMS:Ljava/lang/String; = "tv.alphonso.service.AlphonsoService.EXTRA_ALPHONSO_PARAMS"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "tv.alphonso.service.AlphonsoService.EXTRA_ALPHONSO_RESULT_RECEIVER"

.field public static final FAIL:B = 0x1t

.field public static final HEADER_PARAMS_APPID:Ljava/lang/String; = "app_id"

.field public static final HEADER_PARAMS_VERSION:Ljava/lang/String; = "version"

.field public static final IDENTIFICATION:I = 0x2

.field public static final INIT_STATUS:I = 0x1

.field public static final IN_PROGRESS:B = 0x2t

.field public static final MAX_PRIME_TIME_ENTRIES:I = 0x5

.field public static final PARAMS_IDENTIFICATIONS_LIST:Ljava/lang/String; = "id_list"

.field public static final PARAMS_ID_APP_MATCH_DURATION:Ljava/lang/String; = "app_match_duration"

.field public static final PARAMS_ID_BRAND:Ljava/lang/String; = "brand"

.field public static final PARAMS_ID_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAMS_ID_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final PARAMS_ID_DATE:Ljava/lang/String; = "date"

.field public static final PARAMS_ID_LIVE_FEED_OFFSET:Ljava/lang/String; = "live_feed_offset"

.field public static final PARAMS_ID_LOCAL_TS:Ljava/lang/String; = "timestamp"

.field public static final PARAMS_ID_MATCH_DELAY:Ljava/lang/String; = "match_delay"

.field public static final PARAMS_ID_MATCH_DURATION:Ljava/lang/String; = "match_duration"

.field public static final PARAMS_ID_MATCH_OFFSET:Ljava/lang/String; = "match_offset"

.field public static final PARAMS_ID_MISC_FLAGS:Ljava/lang/String; = "misc_flags"

.field public static final PARAMS_ID_NETWORK:Ljava/lang/String; = "network"

.field public static final PARAMS_ID_START_TS:Ljava/lang/String; = "start_ts"

.field public static final PARAMS_ID_STATION_ID:Ljava/lang/String; = "station_id"

.field public static final PARAMS_ID_TIME:Ljava/lang/String; = "time"

.field public static final PARAMS_ID_TIMESTAMP:Ljava/lang/String; = "match_time"

.field public static final PARAMS_ID_TIMEZONE:Ljava/lang/String; = "match_tz"

.field public static final PARAMS_ID_TITLE:Ljava/lang/String; = "title"

.field public static final PARAMS_ID_TMS_INFO:Ljava/lang/String; = "tms_info"

.field public static final PARAMS_ID_TV_DATA:Ljava/lang/String; = "tv_data"

.field public static final PARAMS_ID_TV_DATA_AFFILIATE_CALL_SIGN:Ljava/lang/String; = "affiliate_call_sign"

.field public static final PARAMS_ID_TV_DATA_EPISODE_NUM:Ljava/lang/String; = "episode_num"

.field public static final PARAMS_ID_TV_DATA_EPISODE_TITLE:Ljava/lang/String; = "episode_title"

.field public static final PARAMS_ID_TV_DATA_ORIG_AIR_DATE:Ljava/lang/String; = "orig_air_date"

.field public static final PARAMS_ID_TV_DATA_SEASON_NUM:Ljava/lang/String; = "season_num"

.field public static final PARAMS_ID_TV_DATA_TITLE:Ljava/lang/String; = "title"

.field public static final PARAMS_ID_TYPE:Ljava/lang/String; = "type"

.field public static final PARAMS_ID_TYPE_COMMERCIAL:Ljava/lang/String; = "commercial"

.field public static final PARAMS_ID_TYPE_LIVETV:Ljava/lang/String; = "livetv"

.field public static final PARAMS_INTERVAL:Ljava/lang/String; = "interval"

.field public static final PARAMS_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final PARAMS_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final PARAMS_RESULT_DATA:Ljava/lang/String; = "resultData"

.field public static final PROVISIONING_SERVER_DOMAIN:Ljava/lang/String; = "http://prov.alphonso.tv"

.field public static final PROVISIONING_SERVER_PORT:Ljava/lang/String; = "4000"

.field public static final SERVICE_INTENT_FILTER:Ljava/lang/String; = "tv.alphonso.service.AlphonsoService"

.field public static final SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "v.2.0.6"

.field public static final VERSION_CODE:I = 0x6

.field public static final VERSION_NAME:Ljava/lang/String; = "2.0"

.field public static singletonObject:Ltv/alphonso/service/AlphonsoService;


# instance fields
.field public mAdId:Ljava/lang/String;

.field public mAdIdPollDuration:I

.field public mAlpUid:Ljava/lang/String;

.field public mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field private mAndroidId:Ljava/lang/String;

.field public mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

.field public mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

.field public mCallEventListener:Ltv/alphonso/service/CallEventListener;

.field public mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ltv/alphonso/service/ASClient;",
            ">;"
        }
    .end annotation
.end field

.field public mClockSyncher:Ltv/alphonso/service/ClockSyncher;

.field public mContext:Landroid/content/Context;

.field public mCurrentState:Ltv/alphonso/service/ASState;

.field public mDebug:Z

.field private mDeviceId:Ljava/lang/String;

.field public mFSM:Ltv/alphonso/service/ASFSM;

.field public mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

.field public mInitObj:Ltv/alphonso/service/AlphonsoServiceSetup;

.field public mLimitAdTracking:Z

.field public mLocationService:Ltv/alphonso/service/LocationService;

.field final mMessenger:Landroid/os/Messenger;

.field public mNumStarts:I

.field public mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

.field public mProvClient:Ltv/alphonso/service/ProvClient;

.field public mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

.field public mResultReceiver:Landroid/os/ResultReceiver;

.field private mUUID:Ljava/lang/String;

.field public mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ltv/alphonso/service/AlphonsoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 117
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mDeviceId:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mUUID:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAndroidId:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    .line 123
    iput-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    .line 124
    const/16 v0, 0x708

    iput v0, p0, Ltv/alphonso/service/AlphonsoService;->mAdIdPollDuration:I

    .line 126
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 127
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlpUid:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mProvClient:Ltv/alphonso/service/ProvClient;

    .line 129
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mCallEventListener:Ltv/alphonso/service/CallEventListener;

    .line 130
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mLocationService:Ltv/alphonso/service/LocationService;

    .line 131
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioCaptureService:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 132
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 133
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .line 134
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 135
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mClockSyncher:Ltv/alphonso/service/ClockSyncher;

    .line 137
    new-instance v0, Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-direct {v0, p0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;-><init>(Ltv/alphonso/service/AlphonsoService;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    .line 139
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    .line 140
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mInitObj:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    .line 146
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mMessenger:Landroid/os/Messenger;

    .line 148
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    .line 149
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 150
    iput-boolean v3, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    .line 153
    iput-object v2, p0, Ltv/alphonso/service/AlphonsoService;->mQueuedInit:Ltv/alphonso/service/AlphonsoServiceSetup;

    .line 155
    iput v3, p0, Ltv/alphonso/service/AlphonsoService;->mNumStarts:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdId()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltv/alphonso/service/AlphonsoService$1;

    invoke-direct {v1, p0}, Ltv/alphonso/service/AlphonsoService$1;-><init>(Ltv/alphonso/service/AlphonsoService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Ltv/alphonso/service/AlphonsoService;->generateAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setAndroidId(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public getBestPossibleDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    .line 463
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    .line 468
    :goto_0
    return-object v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 466
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getUUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimeTimeArrayEntryIndex(I)I
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 504
    packed-switch p1, :pswitch_data_0

    .line 527
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 508
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 520
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 524
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ltv/alphonso/service/AlphonsoService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltv/alphonso/service/AlphonsoService$2;-><init>(Ltv/alphonso/service/AlphonsoService;Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 401
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setUUID(Ljava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method public initializePrimeTimeArray()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 481
    const/4 v0, 0x5

    new-array v0, v0, [Ltv/alphonso/service/PrimeTime;

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    .line 483
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    new-instance v1, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v1}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v1, v0, v2

    .line 484
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    new-instance v1, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v1}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v1, v0, v3

    .line 485
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    new-instance v1, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v1}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v1, v0, v4

    .line 486
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    new-instance v1, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v1}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v1, v0, v5

    .line 487
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    new-instance v1, Ltv/alphonso/service/PrimeTime;

    invoke-direct {v1}, Ltv/alphonso/service/PrimeTime;-><init>()V

    aput-object v1, v0, v6

    .line 489
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v2

    const/16 v1, 0x2f

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    .line 490
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v2

    const/16 v1, 0x30

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    .line 491
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v3

    const/16 v1, 0x31

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    .line 492
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v3

    const/16 v1, 0x32

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    .line 493
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v4

    const/16 v1, 0x33

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    .line 494
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v4

    const/16 v1, 0x34

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    .line 495
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v5

    const/16 v1, 0x35

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    .line 496
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v5

    const/16 v1, 0x36

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    .line 497
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v6

    const/16 v1, 0x37

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMBeginEvent:I

    .line 498
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mPrimeTimeArray:[Ltv/alphonso/service/PrimeTime;

    aget-object v0, v0, v6

    const/16 v1, 0x38

    iput v1, v0, Ltv/alphonso/service/PrimeTime;->asFSMEndEvent:I

    .line 499
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sput-object p0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    .line 297
    iput-object p0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    .line 298
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    .line 300
    new-instance v0, Ltv/alphonso/service/ASFSM;

    invoke-direct {v0, p0}, Ltv/alphonso/service/ASFSM;-><init>(Ltv/alphonso/service/AlphonsoService;)V

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    .line 301
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    iget-object v0, v0, Ltv/alphonso/service/ASFSM;->mASNUllState:Ltv/alphonso/service/ASNull;

    iput-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    .line 306
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    .line 308
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->initializePrimeTimeArray()V

    .line 310
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 311
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 317
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-nez v1, :cond_0

    .line 321
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v2, "Received DESTROY after cleanup.. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x27

    iput v1, v0, Landroid/os/Message;->what:I

    .line 328
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/ASFSM;->processEvent(Landroid/os/Message;)V

    .line 330
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 337
    if-nez p1, :cond_0

    .line 339
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v2, "NULL intent, ignoring startComamnd!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return v3

    .line 343
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 347
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    const-string v5, "onUnBind(): Initiating CLEANUP on all clients."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 257
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x12

    iput v4, v2, Landroid/os/Message;->what:I

    .line 259
    sget-object v6, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending SERVER_DOWN event on client: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/alphonso/service/ASClient;

    iget-object v4, v4, Ltv/alphonso/service/ASClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v3, "params":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 276
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    .line 277
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 279
    sget-object v6, Ltv/alphonso/service/AlphonsoService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Triggering CLEANUP from client: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v6, "app_id"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 285
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ltv/alphonso/service/ASClient;>;"
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v4

    return v4
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 2
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 428
    const-string p1, ""

    .line 430
    :cond_0
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAdId:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAdvertisingId(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setAdIdPollDuration(I)V
    .locals 2
    .param p1, "adIdPollDuration"    # I

    .prologue
    .line 455
    iput p1, p0, Ltv/alphonso/service/AlphonsoService;->mAdIdPollDuration:I

    .line 456
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget v1, p0, Ltv/alphonso/service/AlphonsoService;->mAdIdPollDuration:I

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAdIdPollDuration(Landroid/content/Context;I)V

    .line 457
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 2
    .param p1, "androidId"    # Ljava/lang/String;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string p1, ""

    .line 420
    :cond_0
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService;->mAndroidId:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mAndroidId:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAndroidId(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    const-string p1, ""

    .line 410
    :cond_0
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService;->mDeviceId:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public setLimitAdTracking(Z)V
    .locals 2
    .param p1, "adIdTracking"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    .line 449
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/service/AlphonsoService;->mLimitAdTracking:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setLimitAdTrackingFlag(Landroid/content/Context;Z)V

    .line 450
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuId"    # Ljava/lang/String;

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    const-string p1, ""

    .line 440
    :cond_0
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService;->mUUID:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService;->mUUID:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public setupDeviceId()V
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Ltv/alphonso/service/AlphonsoService;->getBestPossibleDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/AlphonsoService;->setDeviceId(Ljava/lang/String;)V

    .line 475
    return-void
.end method

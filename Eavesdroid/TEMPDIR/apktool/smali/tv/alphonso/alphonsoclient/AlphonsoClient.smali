.class public Ltv/alphonso/alphonsoclient/AlphonsoClient;
.super Ljava/lang/Object;
.source "AlphonsoClient.java"


# static fields
.field public static final ALPHONSO_CLIENT_SERVICE_STATE_NULL:B = 0x0t

.field public static final ALPHONSO_CLIENT_SERVICE_STATE_READY:B = 0x1t

.field public static final ALPHONSO_CLIENT_SERVICE_STATE_READY_AND_REGISTERED:B = 0x2t

.field public static final ALPHONSO_SERVER_DOMAIN_SET:I = 0x6

.field public static final ALPHONSO_SERVER_PORT_SET:I = 0x7

.field public static final ALPHONSO_UID_UPDATE:I = 0x4

.field public static final ALPHONSO_VERSION:Ljava/lang/String; = "v5"

.field public static final AUDIO_CLIP_INFO:I = 0x5

.field public static final AUDIO_FILE_UPLOAD:I = 0x8

.field public static final BIND_USER:I = 0x2

.field public static final CLOCK_SYNC_POLL_REQEUST:I = 0xe

.field private static final DEFAULT_ALP_ID:Ljava/lang/String; = "100"

.field private static final DEFAULT_FB_ID:Ljava/lang/String; = ""

.field private static final DEFAULT_FB_TOKEN:Ljava/lang/String; = ""

.field public static final DESTROY:I = 0xc

.field public static final DOWNLOAD_NEW_AUDIO_DB_FILE:I = 0xd

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

.field public static final FAIL:I = 0x1

.field public static final HTTP_TIMEOUT_RESULT_CODE:I = 0x3ea

.field public static final LOCATION_UPDATE:I = 0x3

.field public static final PROV_SERVER_CONFIG_REQUEST:I = 0xb

.field public static final PROV_SERVER_PARAMS:I = 0xa

.field public static final REGISTRATION:I = 0x9

.field public static final REQUEST:Ljava/lang/String; = "com.alphonsoclient.android.REQUEST"

.field public static final RESPONSE:Ljava/lang/String; = "com.alphonsoclient.android.RESPONSE"

.field public static final SETUP:I = 0x1

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field public static final alphonsoClientEventStrings:[Ljava/lang/String;

.field public static debug:Z

.field public static singletonObject:Ltv/alphonso/alphonsoclient/AlphonsoClient;


# instance fields
.field public mAdId:Ljava/lang/String;

.field private mAlphonsoProvServerDomain:Ljava/lang/String;

.field private mAlphonsoProvServerPort:Ljava/lang/String;

.field private mAlphonsoServerDomain:Ljava/lang/String;

.field private mAlphonsoServerDomainSsl:Ljava/lang/String;

.field private mAlphonsoServerPort:Ljava/lang/String;

.field private mAlphonsoServerPortSsl:Ljava/lang/String;

.field public mAlphonsoUid:Ljava/lang/String;

.field public mAndroidId:Ljava/lang/String;

.field public mApiKey:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

.field public mCallback:Landroid/os/Handler$Callback;

.field public mContext:Landroid/content/Context;

.field public mDevId:Ljava/lang/String;

.field public mFbAccessToken:Ljava/lang/String;

.field public mFbId:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mLastLocation:Landroid/location/Location;

.field public mLimitAdT:Z

.field public mPartnerAccessToken:Ljava/lang/String;

.field public mPartnerId:Ljava/lang/String;

.field private mProvClientReceiver:Landroid/os/ResultReceiver;

.field private mState:B

.field private mThread:Landroid/os/HandlerThread;

.field private mUserLocationInfo:Ljava/lang/String;

.field private mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const-class v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    .line 56
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INVALID_EVENT"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "SETUP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BIND_USER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOCATION_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ALPHONSO_UID_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUDIO_CLIP_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ALPHONSO_SERVER_DOMAIN_SET"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ALPHONSO_SERVER_PORT_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AUDIO_FILE_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "REGISTRATION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PROV_SERVER_PARAMS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PROV_SERVER_CONFIG_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DESTROY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DOWNLOAD_NEW_AUDIO_DB_FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CLOCK_SYNC_POLL_REQEUST"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->alphonsoClientEventStrings:[Ljava/lang/String;

    .line 90
    sput-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    .line 96
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->singletonObject:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/ViewingInfoService;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "audioFPUploadService"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p5, "viewingInfoService"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    .line 100
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 108
    iput-boolean v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    .line 111
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAppName:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbId:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbAccessToken:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerId:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerAccessToken:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 125
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    .line 126
    iput-byte v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mState:B

    .line 128
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 130
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .line 133
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mThread:Landroid/os/HandlerThread;

    .line 134
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    .line 136
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    .line 412
    new-instance v0, Ltv/alphonso/alphonsoclient/AlphonsoClient$1;

    invoke-direct {v0, p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient$1;-><init>(Ltv/alphonso/alphonsoclient/AlphonsoClient;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mCallback:Landroid/os/Handler$Callback;

    .line 145
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAppName:Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlphonsoClientService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    .line 157
    iput-object p4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 159
    iput-object p5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .line 161
    sput-object p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->singletonObject:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 163
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->honourPersistedPrefrences()V

    .line 164
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processProvServerParams(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processAudioFileUploadRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendProvServerConfigRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$1200(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processDownloadNewAudioDbFile(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processClockSyncPollRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$200(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processSetupMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processBindUserRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$400(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processRegistrationRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$500(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Landroid/os/ResultReceiver;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processLocationUpdateRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$600(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processAlphonsoUidRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processAudioClipInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processSetServerDomainSet(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Ltv/alphonso/alphonsoclient/AlphonsoClient;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processSetServerPortSet(Landroid/os/Bundle;)V

    return-void
.end method

.method private changeStateToReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "domainSsl"    # Ljava/lang/String;
    .param p4, "portSsl"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerDomain(Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerPort(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, p3}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerDomainSsl(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p4}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerPortSsl(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setState(B)V

    .line 688
    return-void
.end method

.method private changeStateToReadyAndRegistered(Ljava/lang/String;)V
    .locals 1
    .param p1, "alpUid"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoUid(Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setState(B)V

    .line 698
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setupAudipFPUploadService()V

    .line 701
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setupViewingInfoService()V

    .line 702
    return-void
.end method

.method private clockSyncRequestWrapper(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "serverAddr"    # Ljava/lang/String;

    .prologue
    .line 1326
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1329
    .local v0, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1330
    .local v2, "uri":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1331
    const-string v3, "/device/clock?&device_request_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1332
    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1334
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1336
    const-string v3, "&api_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1337
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    :cond_0
    sget-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v3, :cond_1

    .line 1341
    sget-object v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlphonsoClient: CLOCK_SYNC_POLL_REQUEST; uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1346
    .local v1, "resultData":Landroid/os/Bundle;
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, v0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeHttpUrlConnectionRestApi(ILjava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 1348
    return-object v1
.end method

.method private extractAndUpdateAlphonsoUid(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1145
    const-string v4, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1146
    .local v3, "json":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1147
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1149
    :cond_0
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v5, "REST API Call Response is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1153
    :cond_2
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REST API Call Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v4, "alp_uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1164
    const-string v4, "alp_uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "alph_uid":Ljava/lang/String;
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1168
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1170
    .end local v0    # "alph_uid":Ljava/lang/String;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1171
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAlphonsoProvServerUrlNoVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlphonsoServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v1, "v5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 305
    :cond_1
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "v5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_1

    .line 195
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v1, "Allocating new HTTP Client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 198
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 201
    :cond_1
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private honourPersistedPrefrences()V
    .locals 6

    .prologue
    .line 653
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    .line 654
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    .line 655
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 656
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getLimitAdTrackingFlag(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    .line 658
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getServerDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "domain":Ljava/lang/String;
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "port":Ljava/lang/String;
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getServerDomainSsl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "domainSsl":Ljava/lang/String;
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getServerPortSsl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "portSsl":Ljava/lang/String;
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getAlphonsoUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "alpUid":Ljava/lang/String;
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getFbId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbId:Ljava/lang/String;

    .line 664
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getFbAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbAccessToken:Ljava/lang/String;

    .line 665
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/PreferencesManager;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v5

    iput-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    .line 667
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 669
    invoke-direct {p0, v1, v3, v2, v4}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    if-eqz v0, :cond_1

    .line 673
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    .line 675
    :cond_1
    return-void
.end method

.method private invokeGenericRESTApi(ILjava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "request"    # I
    .param p2, "uri"    # Ljava/lang/StringBuffer;
    .param p4, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p3, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1103
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    const-string v1, "com.AlphonsoClient.android.EXTRA_PARAMS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1107
    invoke-static {}, Ltv/alphonso/alphonsoclient/RESTService;->getInstance()Ltv/alphonso/alphonsoclient/RESTService;

    move-result-object v1

    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p4}, Ltv/alphonso/alphonsoclient/RESTService;->handleMessage(Lorg/apache/http/client/HttpClient;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1108
    return-void
.end method

.method private invokeHttpUrlConnectionRestApi(ILjava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "requestTpe"    # I
    .param p2, "uri"    # Ljava/lang/StringBuffer;
    .param p4, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1354
    .local p3, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1355
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1356
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.params"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1359
    invoke-static {}, Ltv/alphonso/alphonsoclient/HttpRestService;->getInstance()Ltv/alphonso/alphonsoclient/HttpRestService;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p4}, Ltv/alphonso/alphonsoclient/HttpRestService;->handleRequest(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1360
    return-void
.end method

.method private invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/StringBuffer;
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1095
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeGenericRESTApi(ILjava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 1096
    return-void
.end method

.method private processAlphonsoUidRequest(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1077
    const-string v0, "alp_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method private processAudioClipInfo(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1003
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1004
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v5, "Network unavailable."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :goto_0
    return-void

    .line 1008
    :cond_0
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "audioClipData":Ljava/lang/String;
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1013
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v5, "Alphonso UID is not yet known. Hence not sending Audio Clip Data message to server!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1017
    :cond_1
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1018
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v5, "Alphonso server domain/port not set. Hence not sending Audio Clip Data message to server!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1022
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1024
    .local v1, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_6

    .line 1031
    :goto_1
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    if-eqz v4, :cond_7

    .line 1032
    const-string v4, "location"

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->prepareLocation(Landroid/location/Location;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    :cond_3
    :goto_2
    const-string v4, "device_id"

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v4, "audio_file_upload"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1041
    const-string v4, "filename"

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    const-string v6, "start_time"

    .line 1043
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "acr_type"

    .line 1044
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "result_suffix"

    .line 1045
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1041
    invoke-virtual {p0, v5, v6, v7, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAudioFileUploadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_4
    const-string v4, "content_id"

    const-string v5, "content_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1051
    .local v3, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    const-string v4, "/user/audio_clip_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1053
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&api_key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    :cond_5
    const-string v4, "timestamp"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStampYYMMDD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v4, "time_zone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1068
    .local v2, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v3, v1, v2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 1071
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendGeneralResponse(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 1028
    .end local v2    # "resultData":Landroid/os/Bundle;
    .end local v3    # "uri":Ljava/lang/StringBuffer;
    :cond_6
    const-string v4, "data"

    invoke-virtual {v1, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1035
    :cond_7
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_3

    .line 1036
    sget-object v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v5, "No location available for Audio Clip Info message."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private processAudioFileUploadRequest(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 1179
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1180
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Network unavailable."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1185
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1189
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1191
    .local v5, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 1194
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "filename"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1198
    .local v1, "bytes":I
    new-array v0, v1, [B

    .line 1200
    .local v0, "buffer":[B
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1201
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    .line 1203
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1206
    :cond_2
    const-string v8, "audio_file_contents"

    invoke-virtual {v5, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1213
    if-eqz v4, :cond_5

    .line 1215
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 1227
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":I
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1228
    .local v7, "uri":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrlNoVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1229
    const-string v8, "/debug/audio/capture?filename="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1231
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    const-string v9, "start_time"

    .line 1232
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "acr_type"

    .line 1233
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "result_suffix"

    .line 1234
    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1231
    invoke-virtual {p0, v8, v9, v10, v11}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAudioFileUploadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1236
    invoke-virtual {p0, v12}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1238
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 1239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&api_key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1241
    :cond_3
    sget-boolean v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v8, :cond_4

    .line 1242
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlphonsoClient: AUDIO_FILE_UPLOAD request; uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1248
    .local v6, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v7, v5, v6}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1216
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "resultData":Landroid/os/Bundle;
    .end local v7    # "uri":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 1217
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1218
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 1221
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_5
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Could not open/read audio debug file."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1207
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":I
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 1208
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1213
    if-eqz v3, :cond_6

    .line 1215
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1216
    :catch_2
    move-exception v2

    .line 1217
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1221
    .local v2, "e":Ljava/io/FileNotFoundException;
    :cond_6
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Could not open/read audio debug file."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1210
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1213
    if-eqz v3, :cond_7

    .line 1215
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 1216
    :catch_4
    move-exception v2

    .line 1217
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1221
    :cond_7
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Could not open/read audio debug file."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1213
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_8

    .line 1215
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1222
    :goto_5
    throw v8

    .line 1216
    :catch_5
    move-exception v2

    .line 1217
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1221
    .end local v2    # "e":Ljava/io/IOException;
    :cond_8
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Could not open/read audio debug file."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1213
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 1209
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 1207
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private processBindUserRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 940
    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "type":Ljava/lang/String;
    const-string v1, "facebook_uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setFbId(Ljava/lang/String;)V

    .line 945
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setFbAccessToken(Ljava/lang/String;)V

    .line 965
    :goto_0
    invoke-direct {p0, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendRegistrationRequest(Landroid/os/ResultReceiver;)V

    .line 966
    :cond_0
    :goto_1
    return-void

    .line 947
    :cond_1
    const-string v1, "facebook_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 950
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setFbId(Ljava/lang/String;)V

    .line 951
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setFbAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :cond_2
    const-string v1, "partner_user_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 955
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setPartnerId(Ljava/lang/String;)V

    .line 956
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setPartnerAccessToken(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_3
    if-eqz p2, :cond_0

    .line 961
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method private processClockSyncPollRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 12
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 1254
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v8}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1255
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Network unavailable."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1260
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "Alphonso server domain/port not set. Dropping request!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :cond_2
    const-string v8, "server_addr"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->clockSyncRequestWrapper(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1267
    .local v6, "resultData":Landroid/os/Bundle;
    const-string v8, "server_addr"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->clockSyncRequestWrapper(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1269
    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v0

    .line 1271
    .local v0, "deviceResponseTime":J
    const-string v8, "status_code"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1273
    .local v7, "statusCode":I
    const/16 v8, 0xc8

    if-ne v8, v7, :cond_8

    .line 1275
    const-string v8, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1276
    .local v4, "json":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1277
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1279
    :cond_3
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "REST API Call Response is empty."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1283
    :cond_4
    sget-boolean v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v8, :cond_5

    .line 1284
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REST API Call Response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_5
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v3, "jObj":Lorg/json/JSONObject;
    const-string v8, "device_request_time"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "server_reflect_time"

    .line 1292
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1293
    :cond_6
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v9, "device_request_time and/or server_reflect_time absent in the response."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1307
    .end local v3    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1308
    .local v2, "e":Lorg/json/JSONException;
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "JSONException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1297
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "jObj":Lorg/json/JSONObject;
    :cond_7
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1298
    .local v5, "response":Landroid/os/Bundle;
    const-string v8, "device_request_time"

    const-string v9, "device_request_time"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1299
    const-string v8, "server_reflect_time"

    const-string v9, "server_reflect_time"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1300
    const-string v8, "device_response_time"

    invoke-virtual {v5, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1303
    if-eqz p2, :cond_0

    .line 1304
    const/4 v8, 0x0

    invoke-virtual {p2, v8, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1311
    .end local v3    # "jObj":Lorg/json/JSONObject;
    .end local v5    # "response":Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 1312
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1316
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "json":Ljava/lang/String;
    :cond_8
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REST API Call to server failed with error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    if-eqz p2, :cond_0

    .line 1318
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private processDebugFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 644
    sput-boolean p1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    .line 645
    return-void
.end method

.method private processDownloadNewAudioDbFile(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 807
    new-instance v1, Ltv/alphonso/alphonsoclient/AudioDBDownloader;

    const-string v2, "acr_db_server_name"

    .line 808
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "acr_db_server_port"

    .line 809
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "acr_db_insecure_server"

    .line 810
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "acr_db_filename"

    .line 811
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ltv/alphonso/alphonsoclient/AudioDBDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 814
    .local v1, "downloader":Ltv/alphonso/alphonsoclient/AudioDBDownloader;
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->execute(Landroid/content/Context;)B

    move-result v2

    if-ne v6, v2, :cond_0

    .line 816
    const-string v2, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 826
    :goto_0
    return-void

    .line 820
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 821
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "acr_db_filename"

    const-string v3, "acr_db_filename"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v2, "audio_db_files_dir"

    iget-object v3, v1, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v2, "audio_db_files_abs_path"

    iget-object v3, v1, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesAbsPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v2, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private processLocationUpdateRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 971
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 973
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_1

    .line 974
    sget-object v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v2, "Location Update message without location!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    if-eqz p2, :cond_0

    .line 976
    invoke-virtual {p2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 983
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setLastLocation(Landroid/location/Location;)V

    .line 985
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 986
    sget-object v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v2, "Alphonso Server URL is empty!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    if-eqz p2, :cond_0

    .line 988
    invoke-virtual {p2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 992
    :cond_2
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendLocationUpdateToServer()V

    goto :goto_0

    .line 996
    :cond_3
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setLastLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method private processLocationUpdateResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1411
    const-string v1, "status_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1412
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_2

    .line 1416
    const-string v1, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    .line 1417
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1420
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    const-string v2, "\\\\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    .line 1421
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    const-string v2, "\\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    .line 1424
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    const-string v2, "\\s+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    .line 1426
    sget-boolean v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v1, :cond_0

    .line 1427
    sget-object v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User location info rcvd:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendLocationUpdateToAudioFPUploadService()V

    .line 1436
    :cond_1
    :goto_0
    return-void

    .line 1434
    :cond_2
    sget-object v1, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REST API Call for Location update to server failed with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processProvServerParams(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 497
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_0

    .line 498
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Received Prov Server params message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    const-string v2, "prov_server_domain"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    const-string v2, "prov_server_domain"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoProvServerDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoProvServerDomain(Ljava/lang/String;)V

    .line 509
    .end local v0    # "domain":Ljava/lang/String;
    :cond_1
    const-string v2, "prov_server_port"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    const-string v2, "prov_server_port"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "port":Ljava/lang/String;
    invoke-virtual {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoProvServerPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoProvServerPort(Ljava/lang/String;)V

    .line 517
    .end local v1    # "port":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private processRegistrationRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 613
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendRegistrationRequest(Landroid/os/ResultReceiver;)V

    .line 615
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "result_code"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 619
    const-string v2, "alp_uid"

    const-string v3, "100"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_0
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v2, :cond_1

    .line 625
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_0

    .line 626
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending ALPHONSO_CLIENT_RIGISTRATION_RESPONSE message to AlphonsoService."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 629
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 630
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 632
    sget-object v2, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v2, v2, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 636
    const-string v2, "100"

    invoke-direct {p0, v2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    .line 639
    :goto_1
    return-void

    .line 621
    :cond_2
    const-string v2, "alp_uid"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_3
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-direct {p0, v2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processSetServerDomainSet(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1083
    const-string v0, "domain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerDomain(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method private processSetServerPortSet(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1089
    const-string v0, "port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setAlphonsoServerPort(Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method private processSetupMessage(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 522
    const-string v8, "device_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android_id"

    .line 523
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "ad_id"

    .line 524
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "limit_adt"

    .line 525
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "server_domain"

    .line 526
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "server_port"

    .line 527
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "server_domain_ssl"

    .line 528
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "server_port_ssl"

    .line 529
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 531
    :cond_1
    const-string v3, ""

    .line 532
    .local v3, "domain":Ljava/lang/String;
    const-string v6, ""

    .line 533
    .local v6, "port":Ljava/lang/String;
    const-string v4, ""

    .line 534
    .local v4, "domainSsl":Ljava/lang/String;
    const-string v7, ""

    .line 536
    .local v7, "portSsl":Ljava/lang/String;
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    .line 537
    .local v2, "devId":Ljava/lang/String;
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    .line 538
    .local v1, "androidId":Ljava/lang/String;
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 539
    .local v0, "adId":Ljava/lang/String;
    iget-boolean v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    .line 541
    .local v5, "limitAdT":Z
    const-string v8, "device_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 542
    const-string v8, "device_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    :cond_2
    const-string v8, "android_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 545
    const-string v8, "android_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_3
    const-string v8, "ad_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 548
    const-string v8, "ad_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_4
    const-string v8, "limit_adt"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 551
    const-string v8, "limit_adt"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 553
    :cond_5
    const-string v8, "server_domain"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 554
    const-string v8, "server_domain"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    :cond_6
    const-string v8, "server_port"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 557
    const-string v8, "server_port"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 559
    :cond_7
    const-string v8, "server_domain_ssl"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 560
    const-string v8, "server_domain_ssl"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 562
    :cond_8
    const-string v8, "server_port_ssl"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 563
    const-string v8, "server_port_ssl"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    :cond_9
    sget-boolean v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v8, :cond_a

    .line 566
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mLimitAdt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDevId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAndroidId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAdId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlphonsoServerDomain: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlphonsoServerPort: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlphonsoServerDomainSsl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlphonsoServerPortSsl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-object v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "args: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_a
    iget-boolean v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    if-ne v5, v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    .line 578
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    .line 579
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 580
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 581
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 582
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    .line 583
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 584
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 586
    :cond_b
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    .line 587
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    .line 588
    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 589
    iput-boolean v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    .line 591
    invoke-direct {p0, v3, v6, v4, v7}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendRegistrationRequest(Landroid/os/ResultReceiver;)V

    .line 597
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-nez v8, :cond_e

    .line 598
    const-string v8, "100"

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    .line 604
    .end local v0    # "adId":Ljava/lang/String;
    .end local v1    # "androidId":Ljava/lang/String;
    .end local v2    # "devId":Ljava/lang/String;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "domainSsl":Ljava/lang/String;
    .end local v5    # "limitAdT":Z
    .end local v6    # "port":Ljava/lang/String;
    .end local v7    # "portSsl":Ljava/lang/String;
    :cond_c
    :goto_0
    const-string v8, "debug_logs_flag"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 606
    const-string v8, "debug_logs_flag"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processDebugFlag(Z)V

    .line 608
    :cond_d
    return-void

    .line 600
    .restart local v0    # "adId":Ljava/lang/String;
    .restart local v1    # "androidId":Ljava/lang/String;
    .restart local v2    # "devId":Ljava/lang/String;
    .restart local v3    # "domain":Ljava/lang/String;
    .restart local v4    # "domainSsl":Ljava/lang/String;
    .restart local v5    # "limitAdT":Z
    .restart local v6    # "port":Ljava/lang/String;
    .restart local v7    # "portSsl":Ljava/lang/String;
    :cond_e
    iget-object v8, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-direct {p0, v8}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->changeStateToReadyAndRegistered(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendGeneralResponse(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6
    .param p1, "resultData"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v5, 0x1

    .line 1113
    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1114
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_1

    .line 1116
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->extractAndUpdateAlphonsoUid(Landroid/os/Bundle;)V

    .line 1118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1119
    .local v0, "finalResult":Landroid/os/Bundle;
    const-string v2, "alp_uid"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    if-eqz p2, :cond_0

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1140
    .end local v0    # "finalResult":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    const/16 v2, 0x1f7

    if-eq v2, v1, :cond_2

    const/16 v2, 0x3ea

    if-ne v2, v1, :cond_3

    :cond_2
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_3

    .line 1132
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v2, v5, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1135
    :cond_3
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REST API Call to server failed with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    if-eqz p2, :cond_0

    .line 1137
    const/4 v2, 0x0

    invoke-virtual {p2, v5, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendLocationUpdateToAudioFPUploadService()V
    .locals 4

    .prologue
    .line 1441
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1443
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1445
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "user_location_info"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mUserLocationInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1448
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1450
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_0

    .line 1451
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending LOCATION_UPDATE message to AudioFPUploadService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1453
    return-void
.end method

.method private sendLocationUpdateToServer()V
    .locals 5

    .prologue
    .line 1364
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1365
    sget-object v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v4, "Network unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    .line 1370
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1371
    :cond_1
    sget-object v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v4, "API-KEY unavailable. Not sending location update."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1375
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1377
    .local v0, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    if-eqz v3, :cond_3

    .line 1385
    const-string v3, "location"

    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    invoke-static {v4}, Ltv/alphonso/utils/Utils;->prepareLocation(Landroid/location/Location;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    :cond_3
    const-string v3, "device_id"

    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1392
    .local v2, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    const-string v3, "/user/location"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&api_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1402
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeRESTApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 1405
    invoke-direct {p0, v1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->processLocationUpdateResponse(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private sendProvServerConfigRequest(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 707
    if-eqz p2, :cond_0

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    if-eq v5, p2, :cond_0

    .line 710
    invoke-direct {p0, p2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->updateProvClientReceiver(Landroid/os/ResultReceiver;)V

    .line 713
    :cond_0
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 714
    sget-object v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v6, "Network unavailable."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz p2, :cond_1

    .line 717
    invoke-virtual {p2, v8, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 778
    :cond_1
    :goto_0
    return-void

    .line 723
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v4, "uri":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoProvServerUrlNoVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    const-string v5, "/device/config?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 726
    const-string v5, "device_type=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&device_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&os_version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ltv/alphonso/utils/Utils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&app_version_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&app_version_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&app_name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->getURLEncodedAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_version_major="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ltv/alphonso/utils/Utils;->getSDKVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_version_minor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ltv/alphonso/utils/Utils;->getSDKVersionCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&api_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    if-eqz v5, :cond_3

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&latitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&longitude="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    :cond_3
    iget-object v5, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ltv/alphonso/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&country="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ltv/alphonso/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    :cond_4
    const-string v5, "status_code"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 746
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status_code"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 751
    .local v2, "resultData":Landroid/os/Bundle;
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_6

    .line 752
    sget-object v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provisioning Server request uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_6
    invoke-direct {p0, v8, v4, v9, v2}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->invokeGenericRESTApi(ILjava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 756
    const-string v5, "status_code"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 757
    .local v3, "statusCode":I
    const/16 v5, 0xc8

    if-ne v5, v3, :cond_8

    .line 760
    if-eqz p2, :cond_1

    .line 762
    const-string v5, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "json":Ljava/lang/String;
    sget-boolean v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v5, :cond_7

    .line 764
    sget-object v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Configuartion message from Provisioning Server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v1, "response":Landroid/os/Bundle;
    const-string v5, "prov_serv_config_response"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 773
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "response":Landroid/os/Bundle;
    :cond_8
    sget-object v5, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProvServerConfigRequest failed with error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    if-eqz p2, :cond_1

    .line 775
    invoke-virtual {p2, v8, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private sendRegistrationRequest(Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 925
    new-instance v0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;

    invoke-direct {v0, p0}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;-><init>(Ltv/alphonso/alphonsoclient/AlphonsoClient;)V

    .line 928
    .local v0, "apiObject":Ltv/alphonso/alphonsoclient/UserRegistrationAPI;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 929
    .local v1, "resultData":Landroid/os/Bundle;
    invoke-virtual {v0, p1, v1}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->execute(Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    .line 932
    invoke-direct {p0, v1, p1}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendGeneralResponse(Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 934
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->sendLocationUpdateToServer()V

    .line 935
    return-void
.end method

.method private setAlphonsoProvServerDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    .line 218
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Prov Server Domain set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoProvServerPort(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    .line 234
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Prov Server Port set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    .line 245
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Domain set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setServerDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerDomainSsl(Ljava/lang/String;)V
    .locals 3
    .param p1, "domainSsl"    # Ljava/lang/String;

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    .line 258
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Domain SSL set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setServerDomainSsl(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerPort(Ljava/lang/String;)V
    .locals 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 271
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Port set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setServerPort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoServerPortSsl(Ljava/lang/String;)V
    .locals 3
    .param p1, "portSsl"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 284
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alphonso Server Port SSL set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setServerPortSsl(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAlphonsoUid(Ljava/lang/String;)V
    .locals 2
    .param p1, "alphonso_uid"    # Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    .line 359
    :goto_0
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAlphonsoUid(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    return-void

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    goto :goto_0
.end method

.method private setFbAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "mFbAccessToken"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbAccessToken:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setFbAccessToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private setFbId(Ljava/lang/String;)V
    .locals 1
    .param p1, "mFbId"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbId:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setFbId(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private setLastLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "lastLocation"    # Landroid/location/Location;

    .prologue
    .line 408
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLastLocation:Landroid/location/Location;

    .line 409
    return-void
.end method

.method private setPartnerAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPartnerAccessToken"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerAccessToken:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setPartnerAccessToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private setPartnerId(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPartnerId"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerId:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setPartnerId(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private setupAudipFPUploadService()V
    .locals 4

    .prologue
    .line 832
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 833
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 835
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 837
    :cond_1
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Both ssl and non-ssl ports not set. Cannot setup AudipFPUploadService!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_0
    return-void

    .line 841
    :cond_2
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 843
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 845
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 846
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 847
    const-string v2, "server_domain"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v2, "server_port"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    const-string v2, "alp_uid"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 857
    const-string v2, "api_key"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :cond_3
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    if-eqz v2, :cond_4

    .line 860
    const-string v2, "prov_client_receiver"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 862
    :cond_4
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 863
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 865
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_5

    .line 866
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending AUDIO_FP_UPLOAD_SERVICE_SETUP message to AudioFPUploadService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_5
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 851
    :cond_6
    const-string v2, "server_domain"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v2, "server_port"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupViewingInfoService()V
    .locals 4

    .prologue
    .line 874
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 875
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 877
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 879
    :cond_1
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Both ssl and non-ssl ports not set. Cannot setup ViewingInfoService!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    return-void

    .line 884
    :cond_2
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-virtual {v2}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->destroyViewingInfoServiceThread()V

    .line 887
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-virtual {v2}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->setupViewingInfoServiceThread()V

    .line 889
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 891
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 894
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 895
    const-string v2, "server_domain"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v2, "server_port"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_1
    const-string v2, "alp_uid"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string v2, "device_id"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 907
    const-string v2, "ad_id"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_3
    const-string v2, "limit_adt"

    iget-boolean v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 911
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 912
    const-string v2, "api_key"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_4
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 915
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 917
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_5

    .line 918
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending VIEWING_INFO_SERVICE_SETUP message to ViewingInfoService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_5
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mViewingInfoService:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/ViewingInfoService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 899
    :cond_6
    const-string v2, "server_domain"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v2, "server_port"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateProvClientReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 783
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    .line 785
    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->updateProvClientReceiverToAudioFPUploadService()V

    .line 786
    return-void
.end method

.method private updateProvClientReceiverToAudioFPUploadService()V
    .locals 4

    .prologue
    .line 791
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "prov_client_receiver"

    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mProvClientReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 795
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 796
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 797
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 799
    sget-boolean v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v2, :cond_0

    .line 800
    sget-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v3, "Sending PROV_CLIENT_RECEIVER_UPDATE message to AudioFPUploadService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    iget-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method


# virtual methods
.method public getAlphonsoProvServerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphonsoProvServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoProvServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphonsoServerUrlNoVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomainSsl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPortSsl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 326
    :cond_1
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getAlphonsoUidSuffix(Z)Ljava/lang/String;
    .locals 3
    .param p1, "withQuestionMark"    # Z

    .prologue
    .line 365
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    .line 367
    .local v0, "alphonso_uid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v1, "str":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    .line 369
    if-eqz p1, :cond_1

    .line 370
    const-string v2, "?alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 372
    :cond_1
    const-string v2, "alp_uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getAudioFileUploadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .param p3, "acrType"    # Ljava/lang/String;
    .param p4, "resultSuffix"    # Ljava/lang/String;

    .prologue
    .line 1471
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1472
    .local v0, "filename":Ljava/lang/StringBuffer;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1474
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1475
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1476
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1477
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1479
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1480
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1482
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1483
    const-string v1, ".audio.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1485
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getState()B
    .locals 1

    .prologue
    .line 1457
    iget-byte v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mState:B

    return v0
.end method

.method public processDestroyMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->setState(B)V

    .line 171
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_1

    .line 173
    sget-boolean v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->TAG:Ljava/lang/String;

    const-string v1, "Sending ALPHONSO_CLIENT_CLEANUP_DONE message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 179
    :cond_1
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    .line 181
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 183
    sput-object v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->singletonObject:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 185
    iput-object v2, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 188
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 206
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 207
    return-void
.end method

.method public setState(B)V
    .locals 0
    .param p1, "mState"    # B

    .prologue
    .line 1462
    iput-byte p1, p0, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mState:B

    .line 1463
    return-void
.end method

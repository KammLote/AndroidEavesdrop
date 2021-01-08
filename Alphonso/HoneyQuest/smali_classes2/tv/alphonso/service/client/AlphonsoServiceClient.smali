.class public Ltv/alphonso/service/client/AlphonsoServiceClient;
.super Ljava/lang/Object;
.source "AlphonsoServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/service/client/AlphonsoServiceClient$IncomingHandler;
    }
.end annotation


# static fields
.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_ID:Ljava/lang/String; = "facebook_uid"

.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_LOGIN:Ljava/lang/String; = "facebook_login"

.field public static final ALPHONSO_SERVICE_USER_TYPE_PARTNER_ID:Ljava/lang/String; = "partner_user_id"

.field public static CONNECTION_UP:I = 0x0

.field public static final ENABLE_DEBUG_SCREEN:I = 0x1

.field public static final FAIL:B = 0x1t

.field public static final IDENTIFICATION:I = 0x2

.field public static final IDENTIFICATIONS_LIST:Ljava/lang/String; = "id_list"

.field public static final ID_APP_MATCH_DURATION:Ljava/lang/String; = "app_match_duration"

.field public static final ID_BRAND:Ljava/lang/String; = "brand"

.field public static final ID_CHANNEL:Ljava/lang/String; = "channel"

.field public static final ID_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final ID_DATE:Ljava/lang/String; = "date"

.field public static final ID_LIVE_FEED_OFFSET:Ljava/lang/String; = "live_feed_offset"

.field public static final ID_LOCAL_TS:Ljava/lang/String; = "timestamp"

.field public static final ID_MATCH_DELAY:Ljava/lang/String; = "match_delay"

.field public static final ID_MATCH_DURATION:Ljava/lang/String; = "match_duration"

.field public static final ID_MATCH_OFFSET:Ljava/lang/String; = "match_offset"

.field public static final ID_MISC_FLAGS:Ljava/lang/String; = "misc_flags"

.field public static final ID_NETWORK:Ljava/lang/String; = "network"

.field public static final ID_SCENARIOS_COMPLETE:J

.field public static final ID_START_TS:Ljava/lang/String; = "start_ts"

.field public static final ID_STATION_ID:Ljava/lang/String; = "station_id"

.field public static final ID_TIME:Ljava/lang/String; = "time"

.field public static final ID_TIMESTAMP:Ljava/lang/String; = "match_time"

.field public static final ID_TIMEZONE:Ljava/lang/String; = "match_tz"

.field public static final ID_TITLE:Ljava/lang/String; = "title"

.field public static final ID_TMS_INFO:Ljava/lang/String; = "tms_info"

.field public static final ID_TV_DATA:Ljava/lang/String; = "tv_data"

.field public static final ID_TV_DATA_AFFILIATE_CALL_SIGN:Ljava/lang/String; = "affiliate_call_sign"

.field public static final ID_TV_DATA_EPISODE_NUM:Ljava/lang/String; = "episode_num"

.field public static final ID_TV_DATA_EPISODE_TITLE:Ljava/lang/String; = "episode_title"

.field public static final ID_TV_DATA_ORIG_AIR_DATE:Ljava/lang/String; = "orig_air_date"

.field public static final ID_TV_DATA_SEASON_NUM:Ljava/lang/String; = "season_num"

.field public static final ID_TV_DATA_TITLE:Ljava/lang/String; = "title"

.field public static final ID_TYPE:Ljava/lang/String; = "type"

.field public static final ID_TYPE_COMMERCIAL:Ljava/lang/String; = "commercial"

.field public static final ID_TYPE_LIVETV:Ljava/lang/String; = "livetv"

.field public static final INIT_STATUS:I = 0x1

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static QUEUED_INIT:I = 0x0

.field public static QUEUED_START:I = 0x0

.field public static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final RESULT_DATA:Ljava/lang/String; = "resultData"

.field public static final SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "v.2.0.6"

.field public static singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mAlpUid:Ljava/lang/String;

.field public mAppId:Ljava/lang/String;

.field public mBindResultReceiver:Landroid/os/ResultReceiver;

.field public mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

.field public mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mFSM:Ltv/alphonso/service/client/ASClientFSM;

.field public mFlags:I

.field public mHistoryReceiver:Landroid/os/ResultReceiver;

.field public mIdReceiver:Landroid/os/ResultReceiver;

.field public mInitResultReceiver:Landroid/os/ResultReceiver;

.field public mLastKnownResult:Landroid/os/Bundle;

.field public mMessenger:Landroid/os/Messenger;

.field public mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

.field public mNotificationsReceiver:Landroid/os/ResultReceiver;

.field public mService:Landroid/os/Messenger;

.field public mState:Ltv/alphonso/service/client/ASClientState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Ltv/alphonso/service/client/AlphonsoServiceClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 78
    sget-wide v0, Ltv/alphonso/service/ASClient;->ACS_SCENARIOS_COMPLETE_NOTIFICATION:J

    sput-wide v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->ID_SCENARIOS_COMPLETE:J

    .line 624
    const/4 v0, 0x1

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->CONNECTION_UP:I

    .line 625
    const/4 v0, 0x2

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_INIT:I

    .line 626
    const/4 v0, 0x4

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->QUEUED_START:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "cxt"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    .line 580
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mActivity:Landroid/app/Activity;

    .line 583
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    .line 586
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Ltv/alphonso/service/client/AlphonsoServiceClient$IncomingHandler;

    invoke-direct {v1, p0}, Ltv/alphonso/service/client/AlphonsoServiceClient$IncomingHandler;-><init>(Ltv/alphonso/service/client/AlphonsoServiceClient;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMessenger:Landroid/os/Messenger;

    .line 589
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    .line 590
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    .line 593
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAlpUid:Ljava/lang/String;

    .line 596
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    .line 599
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    .line 602
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mHistoryReceiver:Landroid/os/ResultReceiver;

    .line 605
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 608
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mLastKnownResult:Landroid/os/Bundle;

    .line 611
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    .line 614
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    .line 617
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    .line 620
    new-instance v0, Ltv/alphonso/service/client/ASClientFSM;

    invoke-direct {v0}, Ltv/alphonso/service/client/ASClientFSM;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    .line 623
    iput v3, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 629
    new-instance v0, Ltv/alphonso/service/client/AlphonsoServiceClient$1;

    invoke-direct {v0, p0}, Ltv/alphonso/service/client/AlphonsoServiceClient$1;-><init>(Ltv/alphonso/service/client/AlphonsoServiceClient;)V

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    .line 546
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    .line 547
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mActivity:Landroid/app/Activity;

    .line 548
    iget-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget-object v0, v0, Ltv/alphonso/service/client/ASClientFSM;->mASClientNullState:Ltv/alphonso/service/client/ASClientNull;

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 549
    iput v3, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 550
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    .line 551
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    .line 552
    iput-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    .line 553
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "handle"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 197
    return-void
.end method

.method public static bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p0, "handle"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "bindUser(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "bindUser(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    if-eqz p0, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 156
    :cond_1
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "bindUser(): NULL or empty string as handle."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "bindUser(): NULL or empty string as handle."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_2
    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 163
    :cond_3
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "bindUser(): NULL or empty string as type."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "bindUser(): NULL or empty string as type."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_4
    if-nez p2, :cond_5

    .line 169
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "token is null, setting it as empty string."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string p2, ""

    .line 173
    :cond_5
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindUser() with handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "handle"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p3, :cond_6

    .line 180
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    :cond_6
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public static cleanup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 245
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 247
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "cleanup(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "cleanup(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 252
    sput-object v2, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 253
    return-void
.end method

.method public static clearIdHistory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "clearIdHistory(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "clearIdHistory(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 369
    return-void
.end method

.method public static deRegisterClockSyncInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 420
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterClockSyncInfo(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 425
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_1

    .line 427
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterClockSyncInfo(): No registered ResultsReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_1
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static deRegisterMiscFlagsNotification()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 466
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterMiscFlagsNotification(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    return-void

    .line 471
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_1

    .line 473
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterMiscFlagsNotification(): No registered ResultsReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_1
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static deRegisterNotifications(J)V
    .locals 4
    .param p0, "notifications"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 511
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_0

    .line 513
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "deRegisterNotifications(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return-void

    .line 518
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    if-nez v1, :cond_1

    .line 520
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "deRegisterNotifications(): No registered ResultsReceiver."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 526
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "flags"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 527
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static deRegisterResultsReceiver()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterResultsReceiver(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deRegisterResultsReceiver(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mIdReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_1

    .line 352
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "deRegisterResultsReceiver(): No registered ResultsReceiver."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "deRegisterResultsReceiver(): No registered ResultsReceiver."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 357
    return-void
.end method

.method public static getIdHistory(JLandroid/os/ResultReceiver;)V
    .locals 4
    .param p0, "interval"    # J
    .param p2, "idListReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_0

    .line 274
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "getIdHistory(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getIdHistory(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    if-nez p2, :cond_1

    .line 280
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "getIdHistory(): NULL idListReceiver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getIdHistory(): NULL idListReceiver."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    .line 286
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "getIdHistory(): INVALID interval."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getIdHistory(): INVALID interval."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "interval"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 292
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V
    .locals 8
    .param p0, "app_id"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "micPermissionAlert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 97
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "init(): NULL app_id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "init(): NULL app_id."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    if-nez p1, :cond_1

    .line 103
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "init(): NULL context."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "init(): NULL context."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    if-nez p2, :cond_2

    .line 109
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "init(): NULL receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "init(): NULL receiver."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_2
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-eqz v1, :cond_3

    .line 115
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "init(): AlphonsoSerice already initialized or initialization is in progress."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v3, v3, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v4, v4, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "app_name"

    const-string v6, "string"

    sget-object v7, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v7, v7, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    const-string v1, "micPermissionAlert"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 129
    return-void

    .line 119
    .end local v0    # "params":Landroid/os/Bundle;
    :cond_3
    new-instance v1, Ltv/alphonso/service/client/AlphonsoServiceClient;

    invoke-direct {v1, p1}, Ltv/alphonso/service/client/AlphonsoServiceClient;-><init>(Landroid/app/Activity;)V

    sput-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    goto :goto_0
.end method

.method public static provServerParams(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 376
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "provServerParams(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "provServerParams(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    const-string v0, "prov_server_domain"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "prov_server_port"

    .line 380
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_1
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "provServerParams(): Bundle must contain prov_server_domain and prov_server_port."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "provServerParams(): Bundle must contain prov_server_domain and prov_server_port."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 387
    return-void
.end method

.method public static registerClockSyncInfo(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 397
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerClockSyncInfo(): NULL ResultReceiver. Ignoring API call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 401
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_1

    .line 403
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerClockSyncInfo(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "registerClockSyncInfo(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 409
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static registerMiscFlagsNotification(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 443
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerMiscFlagsNotification(): NULL ResultReceiver. Ignoring API call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_0
    return-void

    .line 447
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_1

    .line 449
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerMiscFlagsNotification(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "registerMiscFlagsNotification(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 455
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static registerNotifications(JLandroid/os/ResultReceiver;)V
    .locals 4
    .param p0, "notifications"    # J
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 487
    if-nez p2, :cond_0

    .line 489
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerNotifications(): NULL ResultReceiver. Ignoring API call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-void

    .line 493
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_1

    .line 495
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerNotifications(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "registerNotifications(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 501
    const-string v1, "flags"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 502
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static registerResultsReceiver(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p0, :cond_0

    .line 322
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerAudioCaptureResultsReceiver(): NULL ResultReceiver. Ignoring API call."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v1, :cond_1

    .line 328
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v2, "registerResultsReceiver(): AlphonsoService not yet initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "registerResultsReceiver(): AlphonsoService not yet initialized."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "receiver"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v1, v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "start(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "start(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method public static stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "stop(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "stop(): AlphonsoService not yet initialized."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 235
    return-void
.end method

.method public static updateID(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "result"    # Landroid/os/Bundle;

    .prologue
    .line 533
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "updateID(): AlphonsoService not yet initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-static {p0}, Ltv/alphonso/service/client/ASClientUtils;->updateID(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string v0, "v.2.0.6"

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mContext:Landroid/content/Context;

    .line 560
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mAppId:Ljava/lang/String;

    .line 561
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mInitResultReceiver:Landroid/os/ResultReceiver;

    .line 562
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mBindResultReceiver:Landroid/os/ResultReceiver;

    .line 563
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mState:Ltv/alphonso/service/client/ASClientState;

    .line 564
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFlags:I

    .line 565
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mClockSyncInfoReceiver:Landroid/os/ResultReceiver;

    .line 566
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mMiscFlagsNotificationReceiver:Landroid/os/ResultReceiver;

    .line 567
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mNotificationsReceiver:Landroid/os/ResultReceiver;

    .line 569
    sput-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    .line 571
    sput-object v1, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    .line 573
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "AlphonsoServiceClient instance destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void
.end method

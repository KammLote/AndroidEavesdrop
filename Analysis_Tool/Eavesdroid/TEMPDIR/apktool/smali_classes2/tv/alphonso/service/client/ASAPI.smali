.class public Ltv/alphonso/service/client/ASAPI;
.super Ljava/lang/Object;
.source "ASAPI.java"


# static fields
.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_ID:Ljava/lang/String; = "facebook_uid"

.field public static final ALPHONSO_SERVICE_USER_TYPE_FB_LOGIN:Ljava/lang/String; = "facebook_login"

.field public static final ALPHONSO_SERVICE_USER_TYPE_PARTNER_ID:Ljava/lang/String; = "partner_user_id"

.field public static final FAIL:B = 0x1t

.field public static final IDENTIFICATION:I = 0x2

.field public static final IDENTIFICATIONS_LIST:Ljava/lang/String; = "id_list"

.field public static final ID_BRAND:Ljava/lang/String; = "brand"

.field public static final ID_CHANNEL:Ljava/lang/String; = "channel"

.field public static final ID_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final ID_DATE:Ljava/lang/String; = "date"

.field public static final ID_LIVE_FEED_OFFSET:Ljava/lang/String; = "live_feed_offset"

.field public static final ID_LOCAL_TS:Ljava/lang/String; = "timestamp"

.field public static final ID_MATCH_DELAY:Ljava/lang/String; = "match_delay"

.field public static final ID_MATCH_DURATION:Ljava/lang/String; = "match_duration"

.field public static final ID_MATCH_OFFSET:Ljava/lang/String; = "match_offset"

.field public static final ID_NETWORK:Ljava/lang/String; = "network"

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

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final RESULT_DATA:Ljava/lang/String; = "resultData"

.field public static final SUCCESS:B = 0x0t

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:Ljava/lang/String; = "v.2.0.6"

.field public static singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Ltv/alphonso/service/client/ASAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/ASAPI;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/service/client/ASAPI;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "handle"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0, p1, p2}, Ltv/alphonso/service/client/AlphonsoServiceClient;->bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
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
    .line 98
    invoke-static {p0, p1, p2, p3}, Ltv/alphonso/service/client/AlphonsoServiceClient;->bindUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 99
    return-void
.end method

.method public static cleanup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->cleanup()V

    .line 177
    return-void
.end method

.method public static clearIdHistory()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->clearIdHistory()V

    .line 221
    return-void
.end method

.method public static getIdHistory(JLandroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "interval"    # J
    .param p2, "idListReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Ltv/alphonso/service/client/AlphonsoServiceClient;->getIdHistory(JLandroid/os/ResultReceiver;)V

    .line 208
    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V
    .locals 0
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "micPermissionAlert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p3}, Ltv/alphonso/service/client/AlphonsoServiceClient;->init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V

    .line 81
    return-void
.end method

.method public static start(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p0, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0}, Ltv/alphonso/service/client/AlphonsoServiceClient;->registerResultsReceiver(Landroid/os/ResultReceiver;)V

    .line 146
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->start()V

    .line 147
    return-void
.end method

.method public static stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->stop()V

    .line 162
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->deRegisterResultsReceiver()V

    .line 163
    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "v.2.0.6"

    return-object v0
.end method

.class public Ltv/alphonso/alphonsoclient/ViewingInfoAPI;
.super Ljava/lang/Object;
.source "ViewingInfoAPI.java"


# static fields
.field private static final RESULT_FIELD:Ljava/lang/String; = "result"

.field private static final RESULT_FIELD_VALUE_MATCHED:Ljava/lang/String; = "matched"

.field private static final STATUS_FIELD:Ljava/lang/String; = "status"

.field private static final STATUS_FIELD_VALUE_COMPLETED:Ljava/lang/String; = "completed"

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_FIELD:Ljava/lang/String; = "token"


# instance fields
.field public mAcrType:Ljava/lang/String;

.field public mAlpUidSuffix:Ljava/lang/String;

.field public mApiKey:Ljava/lang/String;

.field public mDeviceId:Ljava/lang/String;

.field public mLongPoll:Z

.field public mReceiver:Landroid/os/ResultReceiver;

.field public mTimestamp:Ljava/lang/String;

.field public mToken:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field private nwTs:J

.field private respProcessingTs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "alpUidSuffix"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "apiKey"    # Ljava/lang/String;
    .param p7, "receiver"    # Landroid/os/ResultReceiver;
    .param p8, "longPoll"    # Z
    .param p9, "acrType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mReceiver:Landroid/os/ResultReceiver;

    .line 29
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAlpUidSuffix:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mDeviceId:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mToken:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mTimestamp:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mApiKey:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mLongPoll:Z

    .line 35
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mUrl:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAcrType:Ljava/lang/String;

    .line 38
    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->nwTs:J

    .line 40
    iput-wide v2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->respProcessingTs:J

    .line 53
    iput-object p7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mReceiver:Landroid/os/ResultReceiver;

    .line 54
    iput-object p4, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mToken:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mTimestamp:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mDeviceId:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mApiKey:Ljava/lang/String;

    .line 58
    iput-boolean p8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mLongPoll:Z

    .line 59
    iput-object p2, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mUrl:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAlpUidSuffix:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAcrType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private invokeHttpUrlConnectionRestApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V
    .locals 3
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
    .line 301
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v1, "tv.alphonso.alphonsoclient.HttpRestService.params"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 306
    invoke-static {}, Ltv/alphonso/alphonsoclient/HttpRestService;->getInstance()Ltv/alphonso/alphonsoclient/HttpRestService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Ltv/alphonso/alphonsoclient/HttpRestService;->handleRequest(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 307
    return-void
.end method

.method private process200(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 146
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_0

    .line 147
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    const-string v5, "REST API Call to server has 200 Accepted response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const-string v4, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "json":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 153
    :cond_1
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    const-string v5, "JSON response is empty."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 159
    :cond_2
    const/4 v1, 0x0

    .line 162
    .local v1, "jObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .local v2, "jObj":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "lookups"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    const-string v4, "lookups"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->processLookupObject(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v1, v2

    .line 174
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 173
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 169
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jObj":Lorg/json/JSONObject;
    .restart local v1    # "jObj":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private processLookupObject(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "lookups"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_16

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    .local v2, "jArrayObj":Lorg/json/JSONObject;
    const-string v4, "token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "status"

    .line 189
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "status"

    .line 190
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "completed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "result"

    .line 191
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "result"

    .line 192
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "matched"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_2

    .line 196
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After filter lookup["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    const-string v4, "type"

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_3
    const-string v4, "ts_start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    const-string v4, "start_ts"

    const-string v5, "ts_start"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_4

    .line 208
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start_ts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start_ts"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "start_ts"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ltv/alphonso/utils/Utils;->getTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_4
    const-string v4, "info"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    const-string v4, "info"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 216
    .local v3, "jObj":Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 218
    const-string v4, "id"

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    :cond_5
    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 223
    const-string v4, "title"

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_6

    .line 225
    sget-object v4, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_6
    const-string v4, "network"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 230
    const-string v4, "network"

    const-string v5, "network"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_7
    const-string v4, "channel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 235
    const-string v4, "channel"

    const-string v5, "channel"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_8
    const-string v4, "logo_filename"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 240
    const-string v4, "logo_filename"

    const-string v5, "logo_filename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_9
    const-string v4, "brand"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 245
    const-string v4, "brand"

    const-string v5, "brand"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_a
    const-string v4, "content_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 250
    const-string v4, "content_id"

    const-string v5, "content_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    :cond_b
    const-string v4, "match_offset"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 255
    const-string v4, "match_offset"

    const-string v5, "match_offset"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    :cond_c
    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "livetv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 260
    const-string v4, "match_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 261
    const-string v4, "match_time"

    const-string v5, "match_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 263
    :cond_d
    const-string v4, "match_tz"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 264
    const-string v4, "match_tz"

    const-string v5, "match_tz"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    :cond_e
    const-string v4, "station_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 267
    const-string v4, "station_id"

    const-string v5, "station_id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_f
    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 270
    const-string v4, "start_time"

    const-string v5, "start_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_10
    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 273
    const-string v4, "end_time"

    const-string v5, "end_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_11
    const-string v4, "start_time_unix"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 276
    const-string v4, "start_time_unix"

    const-string v5, "start_time_unix"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 278
    :cond_12
    const-string v4, "end_time_unix"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 279
    const-string v4, "end_time_unix"

    const-string v5, "end_time_unix"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    :cond_13
    const-string v4, "tms"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 282
    const-string v4, "tms_info"

    const-string v5, "tms"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_14
    const-string v4, "live_feed_offset"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 285
    const-string v4, "live_feed_offset"

    const-string v5, "live_feed_offset"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 288
    :cond_15
    const-string v4, "acr_type"

    iget-object v5, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAcrType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "token"

    const-string v5, "token"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "timestamp"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 293
    iget-object v4, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 295
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "jArrayObj":Lorg/json/JSONObject;
    .end local v3    # "jObj":Lorg/json/JSONObject;
    :cond_16
    return-void
.end method


# virtual methods
.method public processResponse(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const-string v1, "status_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->process200(Landroid/os/Bundle;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v1, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REST API Call to server failed. HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendRequest()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 68
    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .local v2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "device_id"

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mToken:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 73
    const-string v7, "token"

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mTimestamp:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 76
    const-string v7, "timestamp"

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1
    const-string v7, "long_poll"

    iget-boolean v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mLongPoll:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v6, "uri":Ljava/lang/StringBuffer;
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v7, "/user/lookups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mAlpUidSuffix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mApiKey:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 88
    const-string v7, "&api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v7, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v3, "resultData":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->nwTs:J

    .line 97
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_3

    .line 98
    sget-object v7, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewingInfoAPI uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    invoke-direct {p0, v6, v2, v3}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->invokeHttpUrlConnectionRestApi(Ljava/lang/StringBuffer;Ljava/util/LinkedHashMap;Landroid/os/Bundle;)V

    .line 103
    iget-wide v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->nwTs:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_4

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->nwTs:J

    sub-long v0, v8, v10

    .line 106
    .local v0, "nwDelay":J
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_4

    .line 107
    sget-object v7, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewingInfoAPI nwDelay: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v1}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "nwDelay":J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->respProcessingTs:J

    .line 113
    invoke-virtual {p0, v3}, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->processResponse(Landroid/os/Bundle;)V

    .line 115
    iget-wide v8, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->respProcessingTs:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_5

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->respProcessingTs:J

    sub-long v4, v8, v10

    .line 118
    .local v4, "respProcessingDelay":J
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_5

    .line 119
    sget-object v7, Ltv/alphonso/alphonsoclient/ViewingInfoAPI;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewingInfoAPI respProcessingDelay: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ltv/alphonso/utils/Utils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "resultData":Landroid/os/Bundle;
    .end local v4    # "respProcessingDelay":J
    .end local v6    # "uri":Ljava/lang/StringBuffer;
    :cond_5
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v7

    goto :goto_0
.end method

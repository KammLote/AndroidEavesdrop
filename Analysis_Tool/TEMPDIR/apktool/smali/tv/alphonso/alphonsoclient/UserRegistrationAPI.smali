.class public Ltv/alphonso/alphonsoclient/UserRegistrationAPI;
.super Ljava/lang/Object;
.source "UserRegistrationAPI.java"


# static fields
.field private static ALPHONSO_API_VERSION:Ljava/lang/String;


# instance fields
.field private mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "v5"

    sput-object v0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->ALPHONSO_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltv/alphonso/alphonsoclient/AlphonsoClient;)V
    .locals 1
    .param p1, "client"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 23
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 24
    return-void
.end method

.method private populateUserRegistrationEntry(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jarray"    # Lorg/json/JSONArray;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "authkey"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    return-void
.end method


# virtual methods
.method public execute(Landroid/os/ResultReceiver;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 30
    :try_start_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .local v4, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 34
    .local v3, "jarray":Lorg/json/JSONArray;
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 35
    const-string v6, "android_id"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAndroidId:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v3, v6, v7, v8}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->populateUserRegistrationEntry(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-boolean v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    .line 38
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 39
    const-string v6, "advertising_id"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAdId:Ljava/lang/String;

    const-string v8, ""

    invoke-direct {p0, v3, v6, v7, v8}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->populateUserRegistrationEntry(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 42
    const-string v6, "facebook_uid"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbId:Ljava/lang/String;

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v8, v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mFbAccessToken:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7, v8}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->populateUserRegistrationEntry(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 45
    const-string v6, "partner_user_id"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerId:Ljava/lang/String;

    iget-object v8, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v8, v8, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mPartnerAccessToken:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7, v8}, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->populateUserRegistrationEntry(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, "apiJObj":Lorg/json/JSONObject;
    const-string v6, "credentials"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v6, "do_not_track"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-boolean v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mLimitAdT:Z

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    const-string v6, "app_version_name"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ltv/alphonso/utils/Utils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v6, "app_version_code"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ltv/alphonso/utils/Utils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v6, "api_version_name"

    const-string v7, "2.0"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v6, "api_version_code"

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v6, "device_type"

    const-string v7, "android"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 60
    const-string v6, "device_id"

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mDevId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_4
    const-string v6, "device_maker"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getManufacturer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v6, "device_name"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "os_version"

    invoke-static {}, Ltv/alphonso/utils/Utils;->getPlatformVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v6, "json_object"

    invoke-virtual {v4, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v5, "uri":Ljava/lang/StringBuffer;
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    invoke-virtual {v6}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoServerUrlNoVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    sget-object v6, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->ALPHONSO_API_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v6, "/user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ltv/alphonso/alphonsoclient/AlphonsoClient;->getAlphonsoUidSuffix(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_5
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v6, "tv.alphonso.alphonsoclient.HttpRestService.params"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    invoke-static {}, Ltv/alphonso/alphonsoclient/HttpRestService;->getInstance()Ltv/alphonso/alphonsoclient/HttpRestService;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v1, p2}, Ltv/alphonso/alphonsoclient/HttpRestService;->handleRequest(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 95
    .end local v0    # "apiJObj":Lorg/json/JSONObject;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v4    # "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "uri":Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 79
    .restart local v0    # "apiJObj":Lorg/json/JSONObject;
    .restart local v3    # "jarray":Lorg/json/JSONArray;
    .restart local v4    # "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "uri":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mAlphonsoUid:Ljava/lang/String;

    if-nez v6, :cond_5

    iget-object v6, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v6, v6, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?api_key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltv/alphonso/alphonsoclient/UserRegistrationAPI;->mClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v7, v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mApiKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0    # "apiJObj":Lorg/json/JSONObject;
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v4    # "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "uri":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

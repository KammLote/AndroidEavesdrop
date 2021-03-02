.class public Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
.super Ljava/lang/Object;
.source "UnityAdsCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    }
.end annotation


# instance fields
.field private _campaignJson:Lorg/json/JSONObject;

.field private _campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

.field private final _requiredKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "fromJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "endScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "clickUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trailerDownloadable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trailerStreaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gameId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gameName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tagLine"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_requiredKeys:[Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->READY:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    iput-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 33
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method private checkDataIntegrity()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 235
    iget-object v3, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_requiredKeys:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 236
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 243
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 235
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public allowCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "allowCache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for campaign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public allowStreamingVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "allowStreaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not get streaming video status"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public forceCacheVideo()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "cacheVideo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key not found for campaign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    return-object v0
.end method

.method public getFilterMode()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v3, "filterMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v3, "filterMode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    :cond_0
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "gameId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "storeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_STOREID_KEY but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "iTunesId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Was supposed to use UnityAdsConstants.UNITY_ADS_CAMPAIGN_ITUNESID_KEY but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFileExpectedSize()J
    .locals 8

    .prologue
    .line 155
    const-wide/16 v2, -0x1

    .line 156
    .local v2, "size":J
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    :try_start_0
    iget-object v6, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v7, "trailerSize"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 161
    .local v1, "fileSize":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    move-wide v4, v2

    .line 176
    .end local v1    # "fileSize":Ljava/lang/String;
    .end local v2    # "size":J
    .local v4, "size":J
    :goto_0
    return-wide v4

    .line 163
    .end local v4    # "size":J
    .restart local v1    # "fileSize":Ljava/lang/String;
    .restart local v2    # "size":J
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v4, v2

    .line 165
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileSize":Ljava/lang/String;
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :catch_1
    move-exception v0

    .line 171
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "Not found, returning -1"

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-wide v4, v2

    .line 172
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :cond_0
    move-wide v4, v2

    .line 176
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v3, "trailerDownloadable"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "videoFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnityAds-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    .end local v1    # "videoFile":Ljava/io/File;
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "This should not happen!"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVideoStreamUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerStreaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignJson:Lorg/json/JSONObject;

    const-string v2, "trailerDownloadable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This should not happen!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->checkDataIntegrity()Z

    move-result v0

    return v0
.end method

.method public isViewed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    sget-object v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->_campaignStatus:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

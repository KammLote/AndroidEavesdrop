.class public Lcom/unity3d/ads/android/cache/UnityAdsCache;
.super Ljava/lang/Object;
.source "UnityAdsCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static _cacheDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 6
    .param p0, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v2

    .line 64
    .local v2, "size":J
    invoke-static {v1, v2, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isFileCached(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThread;->getCurrentDownload()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "currentDownload":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getFullFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getFullFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThread;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFullFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "campaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 57
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unity Ads cache: initializing cache with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " campaigns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->stopAllDownloads()V

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v2, "downloadFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "allFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v5, 0x1

    .line 32
    .local v5, "first":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 36
    .local v1, "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->forceCacheVideo()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    .line 37
    :cond_2
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isFileCached(Ljava/lang/String;J)Z

    move-result v7

    if-nez v7, :cond_4

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unity Ads cache: queuing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for download"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v4    # "filename":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v5, 0x0

    .line 50
    goto :goto_0

    .line 43
    .restart local v4    # "filename":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unity Ads cache: not downloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", already in cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    .end local v1    # "campaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_5
    invoke-static {v0}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->initializeCacheDirectory(Ljava/util/HashMap;)V

    .line 54
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 55
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getFullFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThread;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static initializeCacheDirectory(Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    .line 88
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-le v13, v14, :cond_0

    .line 89
    sget-object v13, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    .line 90
    .local v6, "externalCacheFile":Ljava/io/File;
    if-eqz v6, :cond_0

    .line 93
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "absoluteCachePath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v14, "UnityAdsVideoCache"

    invoke-direct {v13, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    .line 95
    sget-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 96
    const-string v13, "Successfully created cache"

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 101
    .end local v2    # "absoluteCachePath":Ljava/lang/String;
    .end local v6    # "externalCacheFile":Ljava/io/File;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unity Ads cache: using "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as cache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 103
    sget-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_2

    .line 104
    const-string v13, "Unity Ads cache: Creating cache dir failed"

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void

    .line 109
    :cond_2
    const-string v13, "UnityAds-pendingrequests.dat"

    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UnityAdsVideoCache"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 114
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unity Ads cache: checking cache directory "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 115
    sget-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 130
    .local v7, "fileList":[Ljava/io/File;
    :goto_0
    array-length v15, v7

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v3, v7, v14

    .line 131
    .local v3, "cacheFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 134
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unity Ads cache: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " not found in ad plan, deleting from cache"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v12

    .line 136
    .local v12, "success":Z
    if-nez v12, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unity Ads cache: Couldn\'t delete file: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 130
    .end local v12    # "success":Z
    :cond_3
    :goto_2
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    .line 117
    .end local v3    # "cacheFile":Ljava/io/File;
    .end local v7    # "fileList":[Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    :cond_4
    const-string v13, "Unity Ads cache: checking app directory for Unity Ads cached files"

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 118
    new-instance v8, Lcom/unity3d/ads/android/cache/UnityAdsCache$1;

    invoke-direct {v8}, Lcom/unity3d/ads/android/cache/UnityAdsCache$1;-><init>()V

    .line 127
    .local v8, "filter":Ljava/io/FilenameFilter;
    sget-object v13, Lcom/unity3d/ads/android/cache/UnityAdsCache;->_cacheDirectory:Ljava/io/File;

    invoke-virtual {v13, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .restart local v7    # "fileList":[Ljava/io/File;
    goto :goto_0

    .line 138
    .end local v8    # "filter":Ljava/io/FilenameFilter;
    .restart local v3    # "cacheFile":Ljava/io/File;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 140
    .local v4, "expectedSize":J
    const-wide/16 v16, -0x1

    cmp-long v13, v4, v16

    if-eqz v13, :cond_3

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 143
    .local v10, "size":J
    cmp-long v13, v10, v4

    if-eqz v13, :cond_6

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unity Ads cache: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " file size mismatch, deleting from cache"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v12

    .line 146
    .restart local v12    # "success":Z
    if-nez v12, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unity Ads cache: Couldn\'t delete file: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v12    # "success":Z
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unity Ads cache: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " found, keeping"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z
    .locals 4
    .param p0, "campaign"    # Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFileExpectedSize()J

    move-result-wide v2

    .line 78
    .local v2, "size":J
    invoke-static {v0, v2, v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isFileCached(Ljava/lang/String;J)Z

    move-result v1

    return v1
.end method

.method private static isFileCached(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "size"    # J

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stopAllDownloads()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThread;->stopAllDownloads()V

    .line 83
    return-void
.end method

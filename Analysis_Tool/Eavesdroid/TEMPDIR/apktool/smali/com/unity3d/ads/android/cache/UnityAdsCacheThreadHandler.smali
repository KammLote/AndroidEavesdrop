.class Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;
.super Landroid/os/Handler;
.source "UnityAdsCacheThreadHandler.java"


# instance fields
.field private _currentDownload:Ljava/lang/String;

.field private _stopped:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unity Ads cache: start downloading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 46
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 50
    .local v14, "startTime":J
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v17, "url":Ljava/net/URL;
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isActiveNetworkConnected()Z

    move-result v20

    if-nez v20, :cond_2

    .line 53
    const-string v20, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v14    # "startTime":J
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 98
    .local v9, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 99
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unity Ads cache: Exception when downloading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "startTime":J
    .restart local v17    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v16, "targetFile":Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v12, "fileOutput":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v5, "bufferedOutput":Ljava/io/BufferedOutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 62
    .local v6, "conn":Ljava/net/URLConnection;
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 63
    const/16 v20, 0x7530

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 64
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 67
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v4, "bufferedInput":Ljava/io/BufferedInputStream;
    const/16 v20, 0x1000

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 70
    .local v8, "data":[B
    const-wide/16 v18, 0x0

    .line 73
    .local v18, "total":J
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    invoke-virtual {v4, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "count":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_3

    .line 74
    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    .line 75
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 78
    .end local v7    # "count":I
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 79
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 80
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 82
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 84
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v10, v20, v14

    .line 87
    .local v10, "duration":J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unity Ads cache: File "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes downloaded in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 89
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-lez v20, :cond_0

    .line 90
    div-long v20, v18, v10

    sput-wide v20, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    goto/16 :goto_0

    .line 93
    .end local v10    # "duration":J
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unity Ads cache: downloading of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " stopped"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v13

    .line 95
    .local v13, "success":Z
    if-nez v13, :cond_0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t delete file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "source":Ljava/lang/String;
    const-string v3, "target"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "target":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setStoppedStatus(Z)V
    .locals 0
    .param p1, "stopped"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    .line 34
    return-void
.end method

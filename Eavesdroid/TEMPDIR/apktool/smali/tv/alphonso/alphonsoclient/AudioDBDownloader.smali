.class public Ltv/alphonso/alphonsoclient/AudioDBDownloader;
.super Ljava/lang/Object;
.source "AudioDBDownloader.java"


# instance fields
.field public mAcrDBFileName:Ljava/lang/String;

.field public mAcrDBInsecureServer:Z

.field public mAcrDBServerName:Ljava/lang/String;

.field public mAcrDBServerPort:Ljava/lang/String;

.field public mAcrDBUrlPath:Ljava/lang/String;

.field public mOnBoardAudioDBFilesAbsPath:Ljava/lang/String;

.field public mOnBoardAudioDBFilesDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "acrDBServerName"    # Ljava/lang/String;
    .param p2, "acrDBServerPort"    # Ljava/lang/String;
    .param p3, "acrDBInsecureServer"    # Z
    .param p4, "acrDBFileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerName:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerPort:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBInsecureServer:Z

    .line 17
    const-string v0, "acr_db"

    iput-object v0, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBUrlPath:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesDir:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerPort:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBInsecureServer:Z

    .line 30
    iput-object p4, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBInsecureServer:Z

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :goto_0
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBUrlPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget-object v1, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    :cond_0
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;)B
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 56
    const-string v11, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 58
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 57
    invoke-virtual {v8, v12, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 59
    .local v10, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 64
    .local v6, "os":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 66
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {p0}, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 67
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 68
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    const/16 v14, 0xc8

    if-eq v11, v14, :cond_3

    .line 95
    if-eqz v6, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 97
    :cond_0
    if-eqz v5, :cond_1

    .line 98
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 103
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    :cond_2
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    move v11, v12

    .line 109
    .end local v9    # "url":Ljava/net/URL;
    :goto_1
    return v11

    .line 76
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 78
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v11, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    const/4 v14, 0x0

    .line 79
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .end local v6    # "os":Ljava/io/BufferedOutputStream;
    .local v7, "os":Ljava/io/BufferedOutputStream;
    const/16 v11, 0x1000

    :try_start_4
    new-array v3, v11, [B

    .line 83
    .local v3, "data":[B
    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_7

    .line 85
    const/4 v11, 0x0

    invoke-virtual {v7, v3, v11, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 91
    .end local v2    # "count":I
    .end local v3    # "data":[B
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 95
    .end local v7    # "os":Ljava/io/BufferedOutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "os":Ljava/io/BufferedOutputStream;
    :goto_3
    if-eqz v6, :cond_4

    .line 96
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 97
    :cond_4
    if-eqz v5, :cond_5

    .line 98
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 103
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    :cond_6
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    move v11, v12

    .line 92
    goto :goto_1

    .line 88
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_7
    :try_start_7
    iget-object v11, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 90
    iget-object v11, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mAcrDBFileName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ltv/alphonso/alphonsoclient/AudioDBDownloader;->mOnBoardAudioDBFilesDir:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 95
    if-eqz v7, :cond_8

    .line 96
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 97
    :cond_8
    if-eqz v5, :cond_9

    .line 98
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 103
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 106
    :cond_a
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v6, v7

    .end local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v6    # "os":Ljava/io/BufferedOutputStream;
    move v11, v13

    .line 109
    goto :goto_1

    .line 94
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v9    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v11

    .line 95
    :goto_6
    if-eqz v6, :cond_b

    .line 96
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 97
    :cond_b
    if-eqz v5, :cond_c

    .line 98
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 102
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 103
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 106
    :catchall_1
    move-exception v11

    :goto_8
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v11

    .end local v6    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v6    # "os":Ljava/io/BufferedOutputStream;
    goto :goto_8

    .line 100
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v12

    goto :goto_7

    .line 94
    .end local v6    # "os":Ljava/io/BufferedOutputStream;
    .restart local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v6    # "os":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 100
    .end local v9    # "url":Ljava/net/URL;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 91
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 100
    .end local v6    # "os":Ljava/io/BufferedOutputStream;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v7    # "os":Ljava/io/BufferedOutputStream;
    .restart local v6    # "os":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v11

    goto/16 :goto_0
.end method

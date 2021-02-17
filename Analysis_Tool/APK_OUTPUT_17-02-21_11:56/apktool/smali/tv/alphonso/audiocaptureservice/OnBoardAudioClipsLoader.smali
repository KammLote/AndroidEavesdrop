.class public Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;
.super Ljava/lang/Object;
.source "OnBoardAudioClipsLoader.java"


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String;

.field private static mDownloadAudioFileReceiver:Landroid/os/ResultReceiver; = null

.field private static final onBoardAudioDBFilesAMDir:Ljava/lang/String; = "audio_dbs"

.field public static onBoardAudioDBFilesAbsPath:Ljava/lang/String;

.field public static onBoardAudioDBFilesDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-class v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    .line 24
    sput-object v1, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    .line 26
    sput-object v1, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 33
    sput-object v1, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->mDownloadAudioFileReceiver:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadAudioFileResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->mDownloadAudioFileReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->mDownloadAudioFileReceiver:Landroid/os/ResultReceiver;

    .line 196
    :cond_0
    sget-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->mDownloadAudioFileReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public static load(Landroid/content/Context;)B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getAcrDbFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/io/File;

    .line 39
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getAcrDbFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 42
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getAcrDbFileDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    .line 43
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getAcrDbFileAbsPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 45
    sget-boolean v10, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v10, :cond_0

    .line 46
    sget-object v10, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACR-DB file dir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    return v9

    .line 51
    :cond_1
    sget-boolean v11, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v11, :cond_2

    .line 52
    sget-object v11, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    const-string v12, "ACR-DB file dir and abs-path does not exist in persistence."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    const-string v11, ""

    invoke-static {p0, v11}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFilename(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    const-string v11, ""

    invoke-static {p0, v11}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFileDir(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string v11, ""

    invoke-static {p0, v11}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFileAbsPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-string v11, ""

    sput-object v11, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    .line 62
    const-string v11, ""

    sput-object v11, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 67
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 70
    .local v7, "onBoardAudioDBFilenames":[Ljava/lang/String;
    :try_start_0
    const-string v11, "audio_dbs"

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 72
    array-length v11, v7

    if-nez v11, :cond_4

    .line 76
    const-string v11, "debug-audio"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 77
    .local v3, "dir":Ljava/io/File;
    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v3    # "dir":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 112
    .local v4, "e":Ljava/io/IOException;
    sget-object v9, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure in loadOnboardAudioClips()."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move v9, v10

    .line 115
    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dir":Ljava/io/File;
    :cond_3
    move v9, v10

    .line 82
    goto :goto_0

    .line 87
    .end local v3    # "dir":Ljava/io/File;
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_1
    array-length v11, v7

    if-ge v5, v11, :cond_6

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio_dbs/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v7, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 91
    .local v6, "is":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    aget-object v11, v7, v5

    const/4 v12, 0x0

    .line 92
    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v8, "os":Ljava/io/BufferedOutputStream;
    const/16 v11, 0x4000

    new-array v1, v11, [B

    .line 95
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 99
    .local v2, "bytes":I
    :goto_2
    const/4 v11, 0x0

    const/16 v12, 0x4000

    invoke-virtual {v6, v1, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 100
    const/4 v11, -0x1

    if-ne v2, v11, :cond_5

    .line 102
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 103
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 104
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 118
    .end local v1    # "buffer":[B
    .end local v2    # "bytes":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    :cond_6
    aget-object v10, v7, v9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    .line 120
    aget-object v10, v7, v9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static processNewAudioDbFile(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 129
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 131
    .local v0, "acsInstance":Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ltv/alphonso/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    sget-object v2, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    const-string v3, "Network Unavailable."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v2, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    invoke-static {}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->getDownloadAudioFileResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 140
    .local v1, "m":Landroid/os/Message;
    const/16 v2, 0xd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 141
    invoke-virtual {v1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 143
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_1

    .line 144
    sget-object v2, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending DOWNLOAD_NEW_AUDIO_DB_FILE message to AlphonsoClient."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

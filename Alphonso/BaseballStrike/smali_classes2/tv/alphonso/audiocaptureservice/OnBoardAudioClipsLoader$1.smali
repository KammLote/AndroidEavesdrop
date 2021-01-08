.class final Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader$1;
.super Landroid/os/ResultReceiver;
.source "OnBoardAudioClipsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->getDownloadAudioFileResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 159
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 162
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 164
    .local v0, "acsInstance":Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    const-string v3, "audio_db_files_abs_path"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    .line 165
    const-string v3, "audio_db_files_dir"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    .line 168
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "device_id"

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "acr_type"

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getAcrMode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v3, "acr_shift"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 174
    const-string v3, "audio_file_upload"

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getAudioFileUploadFlag(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string v3, "record_timeouts"

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getRecordTimeoutsFlag(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    const-string v3, "power_optimization_mode"

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Ltv/alphonso/utils/PreferencesManager;->getPowerOptimizationMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v3, "acr_db_filename"

    const-string v4, "acr_db_filename"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 182
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 184
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_0

    .line 185
    invoke-static {}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sending ACS_SETUP message to AudioCaptureService for new ACR-DB."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v3, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    .end local v0    # "acsInstance":Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "params":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download AudioDBFile REST API call response is with error and code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Ltv/alphonso/audiocaptureservice/AudioCaptureService;
.super Ljava/lang/Object;
.source "AudioCaptureService.java"


# static fields
.field public static final ACR_DISABLED:I = 0x0

.field public static final ACR_DUAL:I = 0x4

.field public static final ACR_LOCAL:I = 0x1

.field public static final ACR_SERVER:I = 0x8

.field public static final ACR_SHIFT_186:B = 0x0t

.field public static final ACR_SHIFT_93:B = 0x1t

.field public static final ACR_SPLIT:I = 0x2

.field public static final ACS_FLAGS_CALL_IN_PROGRESS:J = 0x1L

.field public static final ACS_FLAGS_START_NEXT_SCENARIO_RECEIVED:J = 0x4L

.field public static final ACS_FLAGS_START_RECEIVED:J = 0x2L

.field public static final AUDIO_CAPTURE_SERVICE_RESULT_SUFFIX_CANCEL:Ljava/lang/String; = "Cancelled"

.field public static final AUDIO_CAPTURE_SERVICE_RESULT_SUFFIX_INTERRUPTED:Ljava/lang/String; = "Interrupted"

.field public static final AUDIO_CAPTURE_SERVICE_RESULT_SUFFIX_LAST_TIMEOUT:Ljava/lang/String; = "Final_Time_out"

.field public static final AUDIO_CAPTURE_SERVICE_RESULT_SUFFIX_TIMEOUT:Ljava/lang/String; = "Timed_out"

.field public static final BROADCAST:Ljava/lang/String; = "tv.alphonso.audiocaptureservice.result.BROADCAST"

.field public static final CAPTURE_PREPARE_DURATION:J = 0x190L

.field public static final CAPTURE_PREPARE_DURATION_NON_ZERO_MAX:J = 0x3e8L

.field public static final CAPTURE_PREPARE_DURATION_NON_ZERO_MIN:J = 0x64L

.field public static final CAPTURE_SCENARIO_SLEEP_INTERVAL_LIEV_TV:I = 0xc

.field public static final CAPTURE_SCENARIO_SLEEP_INTERVAL_MAX:I = 0x4b0

.field public static final CAPTURE_SCENARIO_SLEEP_INTERVAL_MIN:I = 0x0

.field public static final CAPTURE_SLEEP_TIMER_EXACT_THRESHOLD:J = 0xfa0L

.field public static final CAPTURE_SLEEP_TIMER_LOWER_THRESHOLD:J = 0x1L

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "tv.alphonso.audiocaptureservice.EXTRA_RESULT_RECEIVER"

.field public static final FAIL:B = 0x1t

.field public static final LOCATION_AGE_THRESHOLD:J = 0x493e0L

.field public static final POWER_OPTIMIZATION_EXPONENT_DEFAULT:D = -11.0

.field public static final POWER_OPTIMIZATION_EXPONENT_FIRST_VALUE:D = -10.0

.field public static final POWER_OPTIMIZATION_EXPONENT_INCREMENT:D = 0.5

.field public static final POWER_OPTIMIZATION_EXPONENT_INCREMENT_MAX:D = 10.0

.field public static final SUCCESS:B

.field public static final TAG:Ljava/lang/String;

.field public static debug:Z

.field public static singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;


# instance fields
.field public commonStats:[Ljava/lang/String;

.field public localAcrStats:[Ljava/lang/String;

.field public mAcrMode:I

.field public mAcrShift:B

.field public mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field public mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

.field public mAudioFileUpload:Z

.field public mAudioFileUploadTimedout:Z

.field mAverageLocalAcrCaptureDuration:J

.field mAverageServerAcrCaptureDuration:J

.field mAverageSplitAcrCaptureDuration:J

.field public mCallback:Landroid/os/Handler$Callback;

.field public mCaptureCount:I

.field public mCaptureDuration:J

.field public mCaptureId:I

.field public mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

.field public mCapturePrepareTime:J

.field public mCaptureScenarioCount:I

.field public mCaptureScenarioSleepInterval:J

.field public mCaptureScenarioSleepIntervalLivetv:J

.field public mCaptureScenarioSleepIntervalMax:J

.field public mCaptureScenarioSleepIntervalMin:J

.field public mCaptureScenariosTodo:I

.field public mCaptureSleepTime:J

.field public mClockSkew:J

.field public mContext:Landroid/content/Context;

.field public mCurrentCapturesTodo:I

.field public mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

.field public mDeviceId:Ljava/lang/String;

.field public mExactSleepTimer:Ljava/util/Timer;

.field public mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

.field mFailures:I

.field public mFlags:J

.field public mHandler:Landroid/os/Handler;

.field public mHistoryFlag:Z

.field mLocalAcrSuccesses:I

.field mMaxLocalAcrCaptureDuration:J

.field mMaxServerAcrCaptureDuration:J

.field mMaxSplitAcrCaptureDuration:J

.field mMinLocalAcrCaptureDuration:J

.field mMinServerAcrCaptureDuration:J

.field mMinSplitAcrCaptureDuration:J

.field public mOnBoardAudioDBFileDir:Ljava/lang/String;

.field public mOnBoardAudioDBFilePath:Ljava/lang/String;

.field public mPowerOptimizationExp:D

.field public mPowerOptimizationExpInc:D

.field public mPowerOptimzationMode:Z

.field public mPrepareTimer:Ljava/util/Timer;

.field public mPrimeTime:Z

.field public mRecordTimeouts:Z

.field public mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

.field mServerAcrSuccesses:I

.field mSplitAcrSuccesses:I

.field public mStartParams:Landroid/os/Bundle;

.field public mThread:Landroid/os/HandlerThread;

.field public mTimer:Ljava/util/Timer;

.field mTotalMatchTime:J

.field public mWl:Landroid/os/PowerManager$WakeLock;

.field public serverAcrStats:[Ljava/lang/String;

.field public splitAcrStats:[Ljava/lang/String;

.field public statsGroups:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    .line 63
    const-class v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioFPUploadService"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
    .param p3, "alphonsoClient"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .prologue
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 56
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    .line 79
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mThread:Landroid/os/HandlerThread;

    .line 80
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    .line 82
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mDeviceId:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    .line 86
    iput-byte v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrShift:B

    .line 87
    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    .line 88
    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 89
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    .line 90
    iput v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    .line 91
    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureId:I

    .line 92
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    .line 93
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    .line 94
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mClockSkew:J

    .line 96
    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    .line 97
    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 98
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    .line 99
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    .line 100
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    .line 101
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    .line 103
    iput-boolean v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    .line 104
    const-wide/high16 v0, -0x3fda000000000000L    # -11.0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    .line 105
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    .line 106
    iput-boolean v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    .line 109
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    .line 112
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mExactSleepTimer:Ljava/util/Timer;

    .line 115
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    .line 118
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 121
    new-instance v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/CaptureEntity;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .line 124
    iput-boolean v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    .line 127
    iput-boolean v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    .line 130
    iput-boolean v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    .line 133
    iput-boolean v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHistoryFlag:Z

    .line 136
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 138
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    .line 140
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 142
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    .line 143
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Device-side ACR"

    aput-object v1, v0, v3

    const-string v1, "Server-side ACR"

    aput-object v1, v0, v4

    const-string v1, "Split ACR"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "Common"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->statsGroups:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Total Matches"

    aput-object v1, v0, v3

    const-string v1, "Min Match Time"

    aput-object v1, v0, v4

    const-string v1, "Max Match Time"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "Avg Match Time"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->localAcrStats:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Total Matches"

    aput-object v1, v0, v3

    const-string v1, "Min Match Time"

    aput-object v1, v0, v4

    const-string v1, "Max Match Time"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "Avg Match Time"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->serverAcrStats:[Ljava/lang/String;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Total Matches"

    aput-object v1, v0, v3

    const-string v1, "Min Match Time"

    aput-object v1, v0, v4

    const-string v1, "Max Match Time"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "Avg Match Time"

    aput-object v2, v0, v1

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->splitAcrStats:[Ljava/lang/String;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Total Timeouts"

    aput-object v1, v0, v3

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->commonStats:[Ljava/lang/String;

    .line 203
    new-instance v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService$1;

    invoke-direct {v0, p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService$1;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCallback:Landroid/os/Handler$Callback;

    .line 173
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSFSM;

    invoke-direct {v0, p0}, Ltv/alphonso/audiocaptureservice/ACSFSM;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    .line 175
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    .line 177
    iput-object p3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 179
    iput-object p2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AudioCaptureService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mThread:Landroid/os/HandlerThread;

    .line 187
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->load(Landroid/content/Context;)B

    .line 192
    sget-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesAbsPath:Ljava/lang/String;

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    .line 193
    sget-object v0, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->onBoardAudioDBFilesDir:Ljava/lang/String;

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourPersistedPrefrences()V

    .line 197
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSNullState:Ltv/alphonso/audiocaptureservice/ACSNull;

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 199
    sput-object p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 200
    return-void
.end method


# virtual methods
.method public checkAudioFileUploadFlagChange(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 236
    const-string v0, "audio_file_upload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    const-string v1, "audio_file_upload"

    .line 237
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAudioFileUploadTimedoutFlagChange(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 246
    const-string v0, "audio_file_upload_timedout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    const-string v1, "audio_file_upload_timedout"

    .line 247
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkHistoryFlagChange(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 256
    const-string v0, "history_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHistoryFlag:Z

    const-string v1, "history_flag"

    .line 257
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNUpdatePowerOptimizationInhibitorIncrement(D)V
    .locals 7
    .param p1, "increment"    # D

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 777
    cmpl-double v0, p1, v4

    if-lez v0, :cond_0

    .line 778
    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    .line 783
    :goto_0
    return-void

    .line 779
    :cond_0
    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    .line 780
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    goto :goto_0

    .line 782
    :cond_1
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    goto :goto_0
.end method

.method public checkNUpdatePrimeTime()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public checkRecordTimeoutsFlagChange(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 226
    const-string v0, "record_timeouts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    const-string v1, "record_timeouts"

    .line 227
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computePowerOptimizationSleepTimerValue()J
    .locals 6

    .prologue
    .line 768
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    .line 769
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->getPowerOptimizationInhibitor()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v0, v1, v2

    .line 771
    .local v0, "inhibitorValue":F
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public continueRecording()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->continueRecording()V

    .line 312
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    :cond_0
    return-void
.end method

.method public disableAcr(I)V
    .locals 1
    .param p1, "acrMode"    # I

    .prologue
    .line 473
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, p1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->deleteClient(I)V

    goto :goto_0
.end method

.method public enableAcr(I)V
    .locals 6
    .param p1, "acrMode"    # I

    .prologue
    .line 424
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-nez v1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    .line 431
    .local v0, "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    packed-switch p1, :pswitch_data_0

    .line 450
    :pswitch_0
    sget-object v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid acrType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Cannot instantiate AudioCaptureClient."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :pswitch_1
    new-instance v0, Ltv/alphonso/audiocaptureservice/LocalACR;

    .end local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/LocalACR;-><init>()V

    .line 454
    .restart local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    :goto_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    move-object v1, v0

    .line 455
    check-cast v1, Ltv/alphonso/audiocaptureservice/LocalACR;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltv/alphonso/audiocaptureservice/LocalACR;->setOnBoardAudioDBFilePath(Ljava/lang/String;)V

    move-object v1, v0

    .line 456
    check-cast v1, Ltv/alphonso/audiocaptureservice/LocalACR;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltv/alphonso/audiocaptureservice/LocalACR;->setOnBoardAudioDBFileDir(Ljava/lang/String;)V

    move-object v1, v0

    .line 457
    check-cast v1, Ltv/alphonso/audiocaptureservice/LocalACR;

    iget-byte v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrShift:B

    invoke-virtual {v1, v2}, Ltv/alphonso/audiocaptureservice/LocalACR;->setAcrShift(B)V

    .line 459
    :cond_1
    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->setRecordTimeouts(Z)V

    .line 461
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mDeviceId:Ljava/lang/String;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->init(Ljava/lang/String;Landroid/content/Context;Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 463
    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->setAudioFileUpload(Z)V

    .line 464
    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->setAudioFileUploadTimedout(Z)V

    .line 465
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mClockSkew:J

    iput-wide v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureClient;->mClockSkew:J

    .line 467
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v1, p1, v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->addClient(ILtv/alphonso/audiocaptureservice/AudioCaptureClient;)V

    goto :goto_0

    .line 438
    :pswitch_2
    new-instance v0, Ltv/alphonso/audiocaptureservice/ServerACR;

    .end local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ServerACR;-><init>()V

    .line 439
    .restart local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    goto :goto_1

    .line 442
    :pswitch_3
    new-instance v0, Ltv/alphonso/audiocaptureservice/SplitACR;

    .end local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/SplitACR;-><init>()V

    .line 443
    .restart local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    goto :goto_1

    .line 446
    :pswitch_4
    new-instance v0, Ltv/alphonso/audiocaptureservice/DualACR;

    .end local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/DualACR;-><init>()V

    .line 447
    .restart local v0    # "captureClient":Ltv/alphonso/audiocaptureservice/AudioCaptureClient;
    goto :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAcrMode()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    return v0
.end method

.method public getPowerOptimizationInhibitor()F
    .locals 4

    .prologue
    .line 761
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public honourPersistedPrefrences()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getRecordTimeoutsFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setRecordTimeouts(Z)V

    .line 544
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAudioFileUploadFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUpload(Z)V

    .line 545
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAudioFileUploadTimedoutFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUploadTimedout(Z)V

    .line 546
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAcrShift(Landroid/content/Context;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrShift(B)V

    .line 547
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getAcrMode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrMode(I)V

    .line 548
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getPowerOptimizationMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setPowerOptimizationMode(Z)V

    .line 550
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getHistoryFlag(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setHistoryFlag(Z)V

    .line 552
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->honourVolatilePersistedPrefrences()V

    .line 553
    return-void
.end method

.method public honourVolatilePersistedPrefrences()V
    .locals 2

    .prologue
    .line 558
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureDurationMS(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureDuration(J)V

    .line 562
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureCount(I)V

    .line 563
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioCount(I)V

    .line 564
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepInterval(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMin(J)V

    .line 565
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepIntervalLivetv(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervaLivetv(J)V

    .line 566
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepIntervalMax(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMax(J)V

    .line 567
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepIntervalInhibiterIncrement(Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setPowerOptimizationInhibitorIncrement(D)V

    .line 568
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureSleepTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureSleepTime(J)V

    .line 569
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCapturePrepareTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCapturePrepareTime(J)V

    .line 571
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getPreBufferSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setPreBufferSize(I)V

    goto :goto_0
.end method

.method public incrementPowerOptimizationInhibitor()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 742
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 743
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "Incrementing PowerOptimizationInhibitor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PowerOptimizationInhibitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mPowerOptimizationExpInc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    const-wide/high16 v2, -0x3fda000000000000L    # -11.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 750
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    .line 754
    :cond_1
    :goto_0
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    .line 755
    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    .line 756
    :cond_2
    return-void

    .line 751
    :cond_3
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    .line 752
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    goto :goto_0
.end method

.method public isAudioFileUpload()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    return v0
.end method

.method public isAudioFileUploadTimedout()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    return v0
.end method

.method public prepareRecorder()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->prepareRecorder()V

    .line 274
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    return-void
.end method

.method public processAcrMode(I)V
    .locals 5
    .param p1, "acrMode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 400
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->enableAcr(I)V

    .line 405
    :goto_0
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v4, :cond_1

    .line 406
    invoke-virtual {p0, v4}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->enableAcr(I)V

    .line 410
    :goto_1
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_2

    .line 411
    invoke-virtual {p0, v2}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->enableAcr(I)V

    .line 415
    :goto_2
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v3, :cond_3

    .line 416
    invoke-virtual {p0, v3}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->enableAcr(I)V

    .line 419
    :goto_3
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0, v4}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    goto :goto_1

    .line 413
    :cond_2
    invoke-virtual {p0, v2}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    goto :goto_2

    .line 418
    :cond_3
    invoke-virtual {p0, v3}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    goto :goto_3
.end method

.method public processCaptureStart()V
    .locals 8

    .prologue
    .line 327
    iget v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v3, :cond_0

    .line 329
    iget v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 333
    :cond_0
    iget v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureId:I

    .line 334
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureId:I

    invoke-virtual {v3, v4}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setup(I)V

    .line 336
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v3}, Ltv/alphonso/audiocaptureservice/RecorderThread;->getCurrentPreBufferSizeInMS()I

    move-result v2

    .line 339
    .local v2, "preBufferedAudioInMS":I
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-wide v4, v3, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v3, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    .line 342
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->startRecording()V

    .line 346
    int-to-long v4, v2

    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 348
    sget-boolean v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v3, :cond_1

    .line 349
    sget-object v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pre-bufferd audio worth more than an acr session. Declaring timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_1
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 354
    iget v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 377
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 363
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    int-to-long v6, v2

    sub-long v0, v4, v6

    .line 365
    .local v0, "actualTimerDuration":J
    sget-object v3, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting capture timer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    .line 369
    iget-object v3, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    new-instance v4, Ltv/alphonso/audiocaptureservice/AudioCaptureService$2;

    invoke-direct {v4, p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService$2;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public processDebugFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 266
    sput-boolean p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    .line 267
    return-void
.end method

.method public processHistoryFlagUpdate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkHistoryFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "history_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setHistoryFlag(Z)V

    .line 321
    :cond_0
    return-void
.end method

.method public resetPowerOptimizationInhibitor()V
    .locals 2

    .prologue
    .line 733
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 734
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "Re-setting PowerOptimizationInhibitor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    const-wide/high16 v0, -0x3fda000000000000L    # -11.0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    .line 737
    return-void
.end method

.method public setAcrDBFilename(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFilename(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFileDir:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFileDir(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mOnBoardAudioDBFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAcrDbFileAbsPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public setAcrMode(I)V
    .locals 2
    .param p1, "mAcrMode"    # I

    .prologue
    .line 490
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    .line 492
    iput p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    .line 494
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAcrMode(Landroid/content/Context;I)V

    .line 496
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-eqz v0, :cond_0

    .line 497
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->enableAcr(I)V

    .line 498
    :cond_0
    return-void
.end method

.method public setAcrShift(B)V
    .locals 2
    .param p1, "mAcrShift"    # B

    .prologue
    .line 594
    iput-byte p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrShift:B

    .line 596
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-byte v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrShift:B

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAcrShift(Landroid/content/Context;I)V

    .line 597
    return-void
.end method

.method public setAudioFileUpload(Z)V
    .locals 2
    .param p1, "mAudioFileUpload"    # Z

    .prologue
    .line 507
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    .line 509
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAudioFileUploadFlag(Landroid/content/Context;Z)V

    .line 510
    return-void
.end method

.method public setAudioFileUploadTimedout(Z)V
    .locals 2
    .param p1, "mAudioFileUploadTimedout"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    .line 521
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUploadTimedout:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setAudioFileUploadTimedoutFlag(Landroid/content/Context;Z)V

    .line 522
    return-void
.end method

.method public setCaptureCount(I)V
    .locals 3
    .param p1, "mCaptureCount"    # I

    .prologue
    .line 613
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 614
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    iput p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    .line 618
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setCaptureCount(Landroid/content/Context;I)V

    .line 619
    return-void
.end method

.method public setCaptureDuration(J)V
    .locals 5
    .param p1, "mCaptureDuration"    # J

    .prologue
    .line 602
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    .line 607
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setCaptureDurationMS(Landroid/content/Context;J)V

    .line 608
    return-void
.end method

.method public setCapturePrepareTime(J)V
    .locals 9
    .param p1, "capturePrepareTime"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x64

    .line 527
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rcvd capturePrepareTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    .line 531
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 532
    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    .line 533
    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    .line 535
    iput-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    goto :goto_0
.end method

.method public setCaptureScenarioCount(I)V
    .locals 3
    .param p1, "mCaptureScenarioCount"    # I

    .prologue
    .line 624
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureScenarioCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iput p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    .line 629
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioCount(Landroid/content/Context;I)V

    .line 630
    return-void
.end method

.method public setCaptureScenarioSleepIntervaLivetv(J)V
    .locals 5
    .param p1, "mCaptureScenarioSleepIntervalLivetv"    # J

    .prologue
    .line 655
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 657
    :cond_0
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    .line 661
    :goto_0
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_1

    .line 662
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting mCaptureScenarioSleepIntervalLivetv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioSleepIntervalLivetv(Landroid/content/Context;J)V

    .line 668
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    .line 669
    return-void

    .line 659
    :cond_2
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    goto :goto_0
.end method

.method public setCaptureScenarioSleepInterval(J)V
    .locals 1
    .param p1, "mCaptureScenarioSleepInterval"    # J

    .prologue
    .line 692
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    .line 694
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->resetPowerOptimizationInhibitor()V

    .line 695
    return-void
.end method

.method public setCaptureScenarioSleepIntervalMax(J)V
    .locals 5
    .param p1, "mCaptureScenarioSleepIntervalMax"    # J

    .prologue
    const-wide/16 v2, 0x4b0

    .line 674
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 675
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    .line 679
    :goto_0
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 680
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureScenarioSleepIntervalMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioSleepIntervalMax(Landroid/content/Context;J)V

    .line 686
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    .line 687
    return-void

    .line 677
    :cond_1
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    goto :goto_0
.end method

.method public setCaptureScenarioSleepIntervalMin(J)V
    .locals 5
    .param p1, "mCaptureScenarioSleepIntervalMin"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 635
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 636
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    .line 642
    :goto_0
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureScenarioSleepInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioSleepInterval(Landroid/content/Context;J)V

    .line 649
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepInterval(J)V

    .line 650
    return-void

    .line 637
    :cond_1
    const-wide/16 v0, 0x4b0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 638
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    goto :goto_0

    .line 640
    :cond_2
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    goto :goto_0
.end method

.method public setCaptureSleepTime(J)V
    .locals 5
    .param p1, "mCaptureSleepTime"    # J

    .prologue
    .line 700
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting captureSleepTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    .line 705
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/utils/PreferencesManager;->setCaptureSleepTime(Landroid/content/Context;J)V

    .line 706
    return-void
.end method

.method public setHistoryFlag(Z)V
    .locals 3
    .param p1, "historyFlag"    # Z

    .prologue
    .line 711
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 712
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting historyFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_0
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHistoryFlag:Z

    .line 716
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHistoryFlag:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setHistoryFlag(Landroid/content/Context;Z)V

    .line 717
    return-void
.end method

.method public setPowerOptimizationInhibitorIncrement(D)V
    .locals 5
    .param p1, "increment"    # D

    .prologue
    .line 788
    invoke-virtual {p0, p1, p2}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkNUpdatePowerOptimizationInhibitorIncrement(D)V

    .line 790
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerOptimizationExpInc set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    double-to-float v1, p1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioSleepIntervalInhibiterIncrement(Landroid/content/Context;F)V

    .line 795
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->resetPowerOptimizationInhibitor()V

    .line 796
    return-void
.end method

.method public setPowerOptimizationMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 722
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting powerOptimizationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    .line 727
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setPowerOptimizationMode(Landroid/content/Context;Z)V

    .line 728
    return-void
.end method

.method public setRecordTimeouts(Z)V
    .locals 2
    .param p1, "mRecordTimeouts"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    .line 589
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setRecordTimeoutsFlag(Landroid/content/Context;Z)V

    .line 590
    return-void
.end method

.method public startNextIteration()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 395
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->startRecording(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V

    .line 294
    return-void
.end method

.method public stopCaptureTimer()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 385
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mTimer:Ljava/util/Timer;

    .line 388
    :cond_0
    return-void
.end method

.method public stopRecording(Ljava/lang/String;)V
    .locals 1
    .param p1, "resultSuffix"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, p1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->stopRecording(Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public unPrepareRecorder()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "Unpreparing recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->unPrepareRecorder()V

    .line 288
    return-void
.end method

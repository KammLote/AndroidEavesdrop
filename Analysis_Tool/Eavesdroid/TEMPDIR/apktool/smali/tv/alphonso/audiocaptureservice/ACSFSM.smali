.class public Ltv/alphonso/audiocaptureservice/ACSFSM;
.super Ljava/lang/Object;
.source "ACSFSM.java"


# static fields
.field public static final ACS_CALL_STARTED:I = 0x13

.field public static final ACS_CALL_STOPPED:I = 0x14

.field public static final ACS_CAPTURE_TIMER_EXPIRY:I = 0x7

.field public static final ACS_CLEANUP:I = 0x2

.field public static final ACS_CLOCK_SKEW:I = 0x15

.field public static final ACS_CONTINUE_RECORDING:I = 0x6

.field public static final ACS_DESTROY:I = 0x3

.field public static final ACS_DISABLE_AUDIO_UPLOAD:I = 0xe

.field public static final ACS_DISABLE_AUDIO_UPLOAD_TIMEDOUT:I = 0x12

.field public static final ACS_DISABLE_RECORD_TIMEOUTS:I = 0x10

.field public static final ACS_ENABLE_AUDIO_UPLOAD:I = 0xd

.field public static final ACS_ENABLE_AUDIO_UPLOAD_TIMEDOUT:I = 0x11

.field public static final ACS_ENABLE_RECORD_TIMEOUTS:I = 0xf

.field public static final ACS_GET_STATS:I = 0x8

.field public static final ACS_NEW_AUDIO_DB_FILE:I = 0xc

.field public static final ACS_PREPARE_TIMER_EXPIRY:I = 0xa

.field public static final ACS_PRIME_TIME_BEGIN:I = 0x19

.field public static final ACS_PRIME_TIME_END:I = 0x1a

.field public static final ACS_RESULT:I = 0x17

.field public static final ACS_SETUP:I = 0x1

.field public static final ACS_SLEEP_TIMER_EXPIRY:I = 0x9

.field public static final ACS_START:I = 0x4

.field public static final ACS_START_NEXT_SCENARIO:I = 0x16

.field public static final ACS_STOP:I = 0x5

.field public static final ACS_UPDATE_DEVICE_ID_PARAMS:I = 0x18

.field public static final ACS_UPDATE_PARAMS:I = 0xb

.field private static final TAG:Ljava/lang/String;

.field public static final fsmEventStrings:[Ljava/lang/String;


# instance fields
.field public mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

.field public mACSNullState:Ltv/alphonso/audiocaptureservice/ACSNull;

.field public mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

.field public mACSPreparingPOState:Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

.field public mACSPreparingState:Ltv/alphonso/audiocaptureservice/ACSPreparing;

.field public mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

.field public mACSRunningState:Ltv/alphonso/audiocaptureservice/ACSRunning;

.field public mACSSleepingPOState:Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

.field public mACSSleepingState:Ltv/alphonso/audiocaptureservice/ACSSleeping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSFSM;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ACS_INVALID_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACS_SETUP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACS_CLEANUP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACS_DESTROY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ACS_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ACS_STOP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACS_CONTINUE_RECORDING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACS_CAPTURE_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ACS_GET_STATS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ACS_SLEEP_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ACS_PREPARE_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ACS_UPDATE_PARAMS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ACS_NEW_AUDIO_DB_FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ACS_ENABLE_AUDIO_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ACS_DISABLE_AUDIO_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ACS_ENABLE_RECORD_TIMEOUTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ACS_DISABLE_RECORD_TIMEOUTS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ACS_ENABLE_AUDIO_UPLOAD_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ACS_DISABLE_AUDIO_UPLOAD_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ACS_CALL_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ACS_CALL_STOPPED"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ACS_CLOCK_SKEW"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ACS_START_NEXT_SCENARIO"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ACS_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ACS_UPDATE_DEVICE_ID_PARAMS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ACS_PRIME_TIME_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ACS_PRIME_TIME_END"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->fsmEventStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSNullState:Ltv/alphonso/audiocaptureservice/ACSNull;

    .line 71
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    .line 72
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingState:Ltv/alphonso/audiocaptureservice/ACSPreparing;

    .line 73
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingPOState:Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    .line 74
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingState:Ltv/alphonso/audiocaptureservice/ACSSleeping;

    .line 75
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingPOState:Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

    .line 76
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningState:Ltv/alphonso/audiocaptureservice/ACSRunning;

    .line 77
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    .line 78
    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    .line 82
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSNull;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSNull;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSNullState:Ltv/alphonso/audiocaptureservice/ACSNull;

    .line 83
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSInitialized;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSInitialized;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSInitializedState:Ltv/alphonso/audiocaptureservice/ACSInitialized;

    .line 84
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSPreparing;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSPreparing;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingState:Ltv/alphonso/audiocaptureservice/ACSPreparing;

    .line 85
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSPreparingPO;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingPOState:Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    .line 86
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSSleeping;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSSleeping;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingState:Ltv/alphonso/audiocaptureservice/ACSSleeping;

    .line 87
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSSleepingPO;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingPOState:Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

    .line 88
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSRunning;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSRunning;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningState:Ltv/alphonso/audiocaptureservice/ACSRunning;

    .line 89
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSRunningPO;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    .line 90
    new-instance v0, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    invoke-direct {v0}, Ltv/alphonso/audiocaptureservice/ACSPreBuffering;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreBufferingState:Ltv/alphonso/audiocaptureservice/ACSPreBuffering;

    .line 91
    return-void
.end method


# virtual methods
.method public processEvent(Landroid/os/Message;)V
    .locals 6
    .param p1, "event"    # Landroid/os/Message;

    .prologue
    .line 96
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 99
    .local v0, "acsInstance":Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLockForCaptureSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 103
    .local v1, "params":Landroid/os/Bundle;
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 105
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltv/alphonso/audiocaptureservice/ACSFSM;->fsmEventStrings:[Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v4}, Ltv/alphonso/audiocaptureservice/ACSState;->getStateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onStart(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :pswitch_4
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 130
    :pswitch_5
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onContinue(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onCaptureTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 138
    :pswitch_7
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 142
    :pswitch_8
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 146
    :pswitch_9
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 150
    :pswitch_a
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 154
    :pswitch_b
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 158
    :pswitch_c
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onEnableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 162
    :pswitch_d
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onDisableDebugAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    :pswitch_e
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 170
    :pswitch_f
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 174
    :pswitch_10
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onEnableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 178
    :pswitch_11
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onDisableDebugAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 182
    :pswitch_12
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 186
    :pswitch_13
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onCallStopped(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 190
    :pswitch_14
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 194
    :pswitch_15
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 198
    :pswitch_16
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onResult(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 202
    :pswitch_17
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 206
    :pswitch_18
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 210
    :pswitch_19
    iget-object v2, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public processInvalidEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 221
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

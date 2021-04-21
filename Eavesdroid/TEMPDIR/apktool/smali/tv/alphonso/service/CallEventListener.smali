.class public Ltv/alphonso/service/CallEventListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/alphonso/service/CallEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/CallEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 65
    iput-object v0, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Ltv/alphonso/service/CallEventListener;->mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/alphonso/service/CallEventListener;->mDebug:Z

    .line 18
    iput-object p1, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Ltv/alphonso/service/CallEventListener;->mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 20
    iget-object v0, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getDebugLogsFlag(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ltv/alphonso/service/CallEventListener;->mDebug:Z

    .line 22
    iget-object v0, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    iget-object v0, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 31
    iput-object v2, p0, Ltv/alphonso/service/CallEventListener;->mContext:Landroid/content/Context;

    .line 32
    iput-object v2, p0, Ltv/alphonso/service/CallEventListener;->mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 33
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x13

    .line 37
    iget-object v1, p0, Ltv/alphonso/service/CallEventListener;->mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 38
    .local v0, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Ltv/alphonso/service/CallEventListener;->mAudioCaptureServiceInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v1, v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void

    .line 42
    :pswitch_0
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 43
    iget-boolean v1, p0, Ltv/alphonso/service/CallEventListener;->mDebug:Z

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Ltv/alphonso/service/CallEventListener;->TAG:Ljava/lang/String;

    const-string v2, "CALL_STATE_IDLE: Sending ACS_CALL_STOPPED message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_1
    iput v2, v0, Landroid/os/Message;->what:I

    .line 50
    iget-boolean v1, p0, Ltv/alphonso/service/CallEventListener;->mDebug:Z

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Ltv/alphonso/service/CallEventListener;->TAG:Ljava/lang/String;

    const-string v2, "CALL_STATE_OFFHOOK: Sending ACS_CALL_STARTED message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_2
    iput v2, v0, Landroid/os/Message;->what:I

    .line 57
    iget-boolean v1, p0, Ltv/alphonso/service/CallEventListener;->mDebug:Z

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Ltv/alphonso/service/CallEventListener;->TAG:Ljava/lang/String;

    const-string v2, "CALL_STATE_RINGING: Sending ACS_CALL_STARTED message to AudioCaptureService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

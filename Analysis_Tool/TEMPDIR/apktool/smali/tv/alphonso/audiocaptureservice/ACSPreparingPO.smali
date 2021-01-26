.class public Ltv/alphonso/audiocaptureservice/ACSPreparingPO;
.super Ltv/alphonso/audiocaptureservice/ACSPreparing;
.source "ACSPreparingPO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSPreparingPO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/ACSPreparing;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSPreparingPO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onPrepareTimeExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 12
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    return-void
.end method

.method public onPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-static {p1, p2}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onStartNextScenario(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 21
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    if-eqz v0, :cond_0

    .line 22
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenariosTodo:I

    .line 26
    :cond_0
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 28
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSRunningPOState:Ltv/alphonso/audiocaptureservice/ACSRunningPO;

    iput-object v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 31
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    iput v0, p1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    .line 36
    :cond_1
    invoke-virtual {p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V

    .line 37
    return-void
.end method

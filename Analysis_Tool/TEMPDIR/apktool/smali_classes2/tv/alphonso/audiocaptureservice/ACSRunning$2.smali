.class final Ltv/alphonso/audiocaptureservice/ACSRunning$2;
.super Ljava/util/TimerTask;
.source "ACSRunning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/audiocaptureservice/ACSRunning;->startPreBufferingPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;JJB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acsInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;


# direct methods
.method constructor <init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/ACSRunning$2;->val$acsInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/ACSRunning$2;->val$acsInstance:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 477
    return-void
.end method
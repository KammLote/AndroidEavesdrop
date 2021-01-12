.class Ltv/alphonso/audiocaptureservice/AudioCaptureService$2;
.super Ljava/util/TimerTask;
.source "AudioCaptureService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processCaptureStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/audiocaptureservice/AudioCaptureService;


# direct methods
.method constructor <init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 369
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService$2;->this$0:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService$2;->this$0:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    return-void
.end method

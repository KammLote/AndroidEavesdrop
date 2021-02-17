.class Ltv/alphonso/audiocaptureservice/AudioCaptureService$1;
.super Ljava/lang/Object;
.source "AudioCaptureService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/audiocaptureservice/AudioCaptureService;
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
    .line 203
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService$1;->this$0:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->singletonObject:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    if-nez v0, :cond_1

    .line 212
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "AudioCaptureService Setup is not complete. Dropping request!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 217
    :cond_1
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService$1;->this$0:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    invoke-virtual {v0, p1}, Ltv/alphonso/audiocaptureservice/ACSFSM;->processEvent(Landroid/os/Message;)V

    goto :goto_0
.end method

.class Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;
.super Landroid/os/Handler;
.source "AlphonsoAudioRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;


# direct methods
.method constructor <init>(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    .prologue
    .line 36
    iput-object p1, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->this$0:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->this$0:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    invoke-static {v0, p1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->access$000(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;Landroid/os/Message;)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->this$0:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    invoke-static {v0, p1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->access$100(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;Landroid/os/Message;)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->this$0:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    invoke-static {v0}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->access$200(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;
.super Landroid/app/Service;
.source "AlphonsoAudioRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;
    }
.end annotation


# static fields
.field public static final AUDIO_PKT:I = 0x20

.field public static final CONTINUE_RECORDING:I = 0x3

.field public static final REGISTER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UN_REGISTER:I = 0x2


# instance fields
.field public mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

.field final mMessenger:Landroid/os/Messenger;

.field final mRecorder:Ltv/alphonso/audiorecorderservice/AudioRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

    invoke-direct {v0, p0}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;-><init>(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;)V

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mHandler:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

    .line 30
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mHandler:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mMessenger:Landroid/os/Messenger;

    .line 33
    new-instance v0, Ltv/alphonso/audiorecorderservice/AudioRecorder;

    iget-object v1, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ltv/alphonso/audiorecorderservice/AudioRecorder;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mRecorder:Ltv/alphonso/audiorecorderservice/AudioRecorder;

    return-void
.end method

.method static synthetic access$000(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->registerClient(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->unRegisterClient(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;)V
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;

    .prologue
    .line 13
    invoke-direct {p0}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->continueRecording()V

    return-void
.end method

.method private continueRecording()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mRecorder:Ltv/alphonso/audiorecorderservice/AudioRecorder;

    invoke-virtual {v0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->continueRecording()V

    .line 105
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mHandler:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->sendEmptyMessage(I)Z

    .line 106
    return-void
.end method

.method private registerClient(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "Rcvd Register message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "Setting-up Recording."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mRecorder:Ltv/alphonso/audiorecorderservice/AudioRecorder;

    invoke-virtual {v0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->setupAudioRecorder()V

    .line 84
    invoke-direct {p0}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->continueRecording()V

    .line 86
    :cond_0
    return-void
.end method

.method private unRegisterClient(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "Rcvd UnRegister message."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mHandler:Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService$MsgHandler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mRecorder:Ltv/alphonso/audiorecorderservice/AudioRecorder;

    invoke-virtual {v0}, Ltv/alphonso/audiorecorderservice/AudioRecorder;->cleanupAudioRecorder()V

    .line 97
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "Cleaned-up Recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "onBind()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    sget-object v0, Ltv/alphonso/audiorecorderservice/AlphonsoAudioRecorderService;->TAG:Ljava/lang/String;

    const-string v1, "onUnBind()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

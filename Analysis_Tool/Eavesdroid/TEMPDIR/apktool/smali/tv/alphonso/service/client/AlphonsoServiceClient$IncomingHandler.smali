.class Ltv/alphonso/service/client/AlphonsoServiceClient$IncomingHandler;
.super Landroid/os/Handler;
.source "AlphonsoServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/client/AlphonsoServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/client/AlphonsoServiceClient;


# direct methods
.method constructor <init>(Ltv/alphonso/service/client/AlphonsoServiceClient;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/client/AlphonsoServiceClient;

    .prologue
    .line 649
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient$IncomingHandler;->this$0:Ltv/alphonso/service/client/AlphonsoServiceClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 654
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphonsoServiceClient is not ready, ignoring msg..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

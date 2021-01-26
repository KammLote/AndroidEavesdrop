.class Ltv/alphonso/service/AlphonsoService$2;
.super Landroid/os/ResultReceiver;
.source "AlphonsoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/AlphonsoService;->getResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/AlphonsoService;


# direct methods
.method constructor <init>(Ltv/alphonso/service/AlphonsoService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/AlphonsoService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 372
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService$2;->this$0:Ltv/alphonso/service/AlphonsoService;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 376
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-nez v1, :cond_0

    .line 378
    invoke-static {}, Ltv/alphonso/service/AlphonsoService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received VIEWING_INFO_EVENT after cleanup.. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 383
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 386
    const-string v1, "result_code"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService$2;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 392
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoService$2;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 396
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    invoke-static {}, Ltv/alphonso/service/AlphonsoService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error response is with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

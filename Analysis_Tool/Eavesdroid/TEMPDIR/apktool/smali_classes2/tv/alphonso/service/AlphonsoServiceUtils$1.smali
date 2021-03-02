.class final Ltv/alphonso/service/AlphonsoServiceUtils$1;
.super Landroid/os/ResultReceiver;
.source "AlphonsoServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/AlphonsoServiceUtils;->processBindUserRequest(Ltv/alphonso/service/AlphonsoService;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$asInstance:Ltv/alphonso/service/AlphonsoService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 409
    iput-object p2, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$asInstance:Ltv/alphonso/service/AlphonsoService;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 414
    if-nez p2, :cond_0

    .line 415
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "resultData":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 418
    .restart local p2    # "resultData":Landroid/os/Bundle;
    :cond_0
    const-string v1, "result_code"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v1, "app_id"

    iget-object v2, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$appId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$asInstance:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 424
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 426
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$asInstance:Ltv/alphonso/service/AlphonsoService;

    iget-boolean v1, v1, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v1, :cond_1

    .line 427
    invoke-static {}, Ltv/alphonso/service/AlphonsoServiceUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending BIND_USER_RESPONSE message to AlphonsoService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    iget-object v1, p0, Ltv/alphonso/service/AlphonsoServiceUtils$1;->val$asInstance:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    return-void
.end method

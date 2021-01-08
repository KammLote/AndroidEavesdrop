.class Ltv/alphonso/service/ProvClient$1;
.super Landroid/os/ResultReceiver;
.source "ProvClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/ProvClient;->getResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/ProvClient;


# direct methods
.method constructor <init>(Ltv/alphonso/service/ProvClient;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/ProvClient;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 197
    iput-object p1, p0, Ltv/alphonso/service/ProvClient$1;->this$0:Ltv/alphonso/service/ProvClient;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 202
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-nez v1, :cond_0

    .line 204
    invoke-static {}, Ltv/alphonso/service/ProvClient;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlphonsoService singletonObject is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    .line 209
    const-string v1, "result_code"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    :goto_1
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 218
    sget-object v1, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v1, v1, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v1, v0}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 211
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "resultData":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 212
    .restart local p2    # "resultData":Landroid/os/Bundle;
    const-string v1, "result_code"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

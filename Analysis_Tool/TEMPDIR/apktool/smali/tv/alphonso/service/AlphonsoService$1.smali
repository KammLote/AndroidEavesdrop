.class Ltv/alphonso/service/AlphonsoService$1;
.super Ljava/lang/Object;
.source "AlphonsoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/AlphonsoService;->getAdId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/AlphonsoService;


# direct methods
.method constructor <init>(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 190
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x28

    .line 193
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v3, "params":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 197
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 198
    const-string v4, "limit_adt"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    const-string v4, "ad_id"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "result_code"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    :goto_0
    return-void

    .line 203
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "result_code"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :try_start_2
    const-string v4, "result_code"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 213
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    .end local v2    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v4, "result_code"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 218
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "msg":Landroid/os/Message;
    :catch_3
    move-exception v1

    .line 220
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :try_start_4
    const-string v4, "result_code"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v4, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v4, v4, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v4, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 225
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v5, v5, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v5}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 226
    .restart local v2    # "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 227
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v5, p0, Ltv/alphonso/service/AlphonsoService$1;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v5, v5, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    invoke-virtual {v5, v2}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    throw v4
.end method

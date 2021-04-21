.class Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;
.super Ljava/lang/Object;
.source "AudioFPUploadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/alphonsoclient/AudioFPUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;


# direct methods
.method constructor <init>(Ltv/alphonso/alphonsoclient/AudioFPUploadService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    .prologue
    .line 204
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    .line 211
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 214
    .local v1, "params":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tv.alphonso.alphonsoclient.AudioFPUploadService.EXTRA_RESULT_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 216
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-static {}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFPUploadService invoked with wrong request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v2, :cond_0

    .line 261
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 265
    :cond_0
    :goto_0
    return v6

    .line 219
    :pswitch_0
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$000(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$100(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$200(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$300(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 235
    :pswitch_4
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1, v2, v6}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$400(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;Z)V

    goto :goto_0

    .line 239
    :pswitch_5
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$500(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 243
    :pswitch_6
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$600(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 247
    :pswitch_7
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-virtual {v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->resetStats()V

    goto :goto_0

    .line 251
    :pswitch_8
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$700(Ltv/alphonso/alphonsoclient/AudioFPUploadService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 255
    :pswitch_9
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadService$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadService;

    invoke-static {v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadService;->access$800(Ltv/alphonso/alphonsoclient/AudioFPUploadService;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

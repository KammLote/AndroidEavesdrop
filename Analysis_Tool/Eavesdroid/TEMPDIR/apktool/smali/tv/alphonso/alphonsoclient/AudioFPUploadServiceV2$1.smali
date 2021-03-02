.class Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;
.super Ljava/lang/Object;
.source "AudioFPUploadServiceV2.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;


# direct methods
.method constructor <init>(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .prologue
    .line 227
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    .line 234
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 237
    .local v1, "params":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tv.alphonso.alphonsoclient.AudioFPUploadServiceV2.EXTRA_RESULT_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 239
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    sget-boolean v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v3, :cond_0

    .line 240
    invoke-static {}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioFPUploadServiceEventStrings:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-static {}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFPUploadServiceV2 invoked with wrong request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz v2, :cond_1

    .line 295
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 299
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 245
    :pswitch_0
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$100(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$200(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$300(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$400(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$500(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$600(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 269
    :pswitch_6
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$700(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 273
    :pswitch_7
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-virtual {v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->resetStats()V

    goto :goto_0

    .line 277
    :pswitch_8
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$800(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 281
    :pswitch_9
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$900(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;)V

    goto :goto_0

    .line 285
    :pswitch_a
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$1000(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 289
    :pswitch_b
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2$1;->this$0:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->access$1100(Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;Landroid/os/Bundle;)V

    goto :goto_0

    .line 242
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
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

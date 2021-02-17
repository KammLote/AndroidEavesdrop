.class Ltv/alphonso/alphonsoclient/ViewingInfoService$1;
.super Ljava/lang/Object;
.source "ViewingInfoService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/alphonsoclient/ViewingInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;


# direct methods
.method constructor <init>(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/alphonsoclient/ViewingInfoService;

    .prologue
    .line 175
    iput-object p1, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;->this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    .line 181
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, "params":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tv.alphonso.alphonsoclient.ViewingInfoService.EXTRA_RESULT_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 186
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-static {}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewingInfoService invoked with wrong request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v2, :cond_0

    .line 209
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 213
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 190
    :pswitch_0
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;->this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-static {v3, v1}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->access$000(Ltv/alphonso/alphonsoclient/ViewingInfoService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;->this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-static {v3}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->access$100(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;->this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-static {v3}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->access$200(Ltv/alphonso/alphonsoclient/ViewingInfoService;)V

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v3, p0, Ltv/alphonso/alphonsoclient/ViewingInfoService$1;->this$0:Ltv/alphonso/alphonsoclient/ViewingInfoService;

    invoke-static {v3, v1, v2}, Ltv/alphonso/alphonsoclient/ViewingInfoService;->access$300(Ltv/alphonso/alphonsoclient/ViewingInfoService;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

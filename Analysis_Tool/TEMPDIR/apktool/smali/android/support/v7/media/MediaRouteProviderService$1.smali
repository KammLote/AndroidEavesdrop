.class Landroid/support/v7/media/MediaRouteProviderService$1;
.super Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProviderService;

.field final synthetic val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

.field final synthetic val$controllerId:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$messenger:Landroid/os/Messenger;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .prologue
    .line 317
    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iput p3, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    iput-object p4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iput p6, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 334
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Route control request failed"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", controllerId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", error="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", data="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    invoke-static {v0, v2}, Landroid/support/v7/media/MediaRouteProviderService;->access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 341
    if-eqz p1, :cond_2

    .line 342
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "error"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 351
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    iget v8, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    const/4 v11, 0x0

    move v7, v1

    move v9, v3

    move-object v10, p2

    invoke-static/range {v6 .. v11}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-static {}, Landroid/support/v7/media/MediaRouteProviderService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$client:Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Route control request succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$controllerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->this$0:Landroid/support/v7/media/MediaRouteProviderService;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouteProviderService;->access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 327
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$messenger:Landroid/os/Messenger;

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/v7/media/MediaRouteProviderService$1;->val$requestId:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 330
    :cond_1
    return-void
.end method

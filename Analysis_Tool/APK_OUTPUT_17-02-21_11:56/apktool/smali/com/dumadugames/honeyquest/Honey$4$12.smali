.class Lcom/dumadugames/honeyquest/Honey$4$12;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dumadugames/honeyquest/Honey$4;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dumadugames/honeyquest/Honey$4;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 338
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$900(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$900(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 340
    const-string v1, "test"

    const-string v2, "isLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string v1, "No Videos Available.."

    sput-object v1, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 345
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey;->toast:Landroid/widget/Toast;

    sget-object v2, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 350
    const-string v1, "ExternalInterfaceHandler"

    const-string v2, "Receiver"

    const-string v3, "VideoAds_false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "test"

    const-string v2, "Video Ad Failed: is not Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "test"

    const-string v2, "is not Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$1000(Lcom/dumadugames/honeyquest/Honey;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v2, p0, Lcom/dumadugames/honeyquest/Honey$4$12;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v2, v2, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    sget-object v3, Lcom/dumadugames/honeyquest/Honey;->toastmessage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v1, Lcom/dumadugames/honeyquest/Honey;->toast:Landroid/widget/Toast;

    goto :goto_1
.end method

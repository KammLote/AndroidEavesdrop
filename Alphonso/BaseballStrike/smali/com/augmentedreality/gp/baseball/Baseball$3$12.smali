.class Lcom/augmentedreality/gp/baseball/Baseball$3$12;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/augmentedreality/gp/baseball/Baseball$3;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 360
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v1}, Lcom/augmentedreality/gp/baseball/Baseball;->access$800(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v1}, Lcom/augmentedreality/gp/baseball/Baseball;->access$800(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    .line 362
    const-string v1, "test"

    const-string v2, "isLoaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v1, "No Videos Available.."

    sput-object v1, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 367
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball;->toast:Landroid/widget/Toast;

    sget-object v2, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 372
    const-string v1, "ExternalInterfaceHandler"

    const-string v2, "Receiver"

    const-string v3, "VideoAds_false"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "test"

    const-string v2, "Video Ad Failed: is not Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v1, "test"

    const-string v2, "is not Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v1}, Lcom/augmentedreality/gp/baseball/Baseball;->access$900(Lcom/augmentedreality/gp/baseball/Baseball;)V

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v1, v1, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v2, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$12;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v2, v2, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    sget-object v3, Lcom/augmentedreality/gp/baseball/Baseball;->toastmessage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v1, Lcom/augmentedreality/gp/baseball/Baseball;->toast:Landroid/widget/Toast;

    goto :goto_1
.end method

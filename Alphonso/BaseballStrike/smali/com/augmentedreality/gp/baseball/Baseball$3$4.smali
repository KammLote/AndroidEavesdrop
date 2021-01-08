.class Lcom/augmentedreality/gp/baseball/Baseball$3$4;
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
    .line 267
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$4;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "Ads_Total Interstitial requests from game_Total Interstitial requests from game"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 273
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$4;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$500(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$4;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$500(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$4;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$200(Lcom/augmentedreality/gp/baseball/Baseball;)V

    goto :goto_0
.end method

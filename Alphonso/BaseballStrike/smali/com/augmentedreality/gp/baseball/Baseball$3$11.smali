.class Lcom/augmentedreality/gp/baseball/Baseball$3$11;
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
    .line 340
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$11;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$11;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$500(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$11;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$500(Lcom/augmentedreality/gp/baseball/Baseball;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 347
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$002(Z)Z

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$11;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->nativeExitPopup()V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$11;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->finish()V

    goto :goto_0
.end method

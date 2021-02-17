.class Lcom/dumadugames/honeyquest/Honey$4$4;
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
    .line 247
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$4$4;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4$4;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$600(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4$4;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$600(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4$4;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$200(Lcom/dumadugames/honeyquest/Honey;)V

    goto :goto_0
.end method

.class Lcom/dumadugames/honeyquest/Honey$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "Honey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$1;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 157
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$1;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-virtual {v0}, Lcom/dumadugames/honeyquest/Honey;->nativeExitPopup()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$1;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$200(Lcom/dumadugames/honeyquest/Honey;)V

    goto :goto_0
.end method

.class Lcom/augmentedreality/gp/baseball/Baseball$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "Baseball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/augmentedreality/gp/baseball/Baseball;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p1, "this$0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$1;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 165
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$1;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->nativeExitPopup()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$1;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$200(Lcom/augmentedreality/gp/baseball/Baseball;)V

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 180
    const-string v0, "Ads_Total Interstitials are shown_Total Interstitials are shown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->analyticsEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 181
    return-void
.end method

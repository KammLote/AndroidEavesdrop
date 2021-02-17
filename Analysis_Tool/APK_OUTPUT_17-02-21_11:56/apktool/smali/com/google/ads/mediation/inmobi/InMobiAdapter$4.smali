.class Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiNative$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

.field final synthetic val$isAdMobContentAd:Ljava/lang/Boolean;

.field final synthetic val$isAdMobInstallAd:Ljava/lang/Boolean;

.field final synthetic val$serveAnyAd:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$serveAnyAd:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$isAdMobContentAd:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$isAdMobInstallAd:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiNative;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/ads/InMobiNative;

    .prologue
    .line 701
    const-string v0, "InMobiAdapter"

    const-string v1, "onAdDismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 703
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiNative;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/ads/InMobiNative;

    .prologue
    .line 695
    const-string v0, "InMobiAdapter"

    const-string v1, "onAdDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 697
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3
    .param p1, "arg0"    # Lcom/inmobi/ads/InMobiNative;
    .param p2, "arg1"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    const/4 v2, 0x0

    .line 663
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$5;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 690
    :goto_0
    const-string v0, " InMobiNativeAd "

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 665
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 670
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 680
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNative;)V
    .locals 6
    .param p1, "imNativeAd"    # Lcom/inmobi/ads/InMobiNative;

    .prologue
    const/4 v5, 0x3

    .line 620
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " [ InMobi Native Ad ] : onAdLoadSucceeded "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    const-string v3, "InMobiAdapter"

    const-string v4, "onAdLoadSucceeded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-static {p1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->isPerformanceAd(Lcom/inmobi/ads/InMobiNative;)Ljava/lang/Boolean;

    move-result-object v1

    .line 638
    .local v1, "isInMobiPerformanceAd":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$serveAnyAd:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$isAdMobContentAd:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->val$isAdMobInstallAd:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v4}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$400(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$400(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$500(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v2

    .line 647
    .local v2, "nativeAdOptions":Lcom/google/android/gms/ads/formats/NativeAdOptions;
    if-eqz v2, :cond_4

    .line 648
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$602(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 651
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 652
    new-instance v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .line 653
    invoke-static {v4}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$600(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v5

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/inmobi/ads/InMobiNative;Ljava/lang/Boolean;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    .line 654
    .local v0, "inMobiAppInstallNativeAdMapper":Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;
    invoke-virtual {v0}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mapAppInstallAd()V

    goto :goto_0

    .line 656
    .end local v0    # "inMobiAppInstallNativeAdMapper":Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;
    :cond_5
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiNative;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/ads/InMobiNative;

    .prologue
    .line 612
    const-string v0, "InMobiAdapter"

    const-string v1, "onUserLeftApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 614
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 615
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$4;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V

    .line 616
    return-void
.end method

.class Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;
.super Ljava/lang/Object;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnityAdsPlayVideoRunner"
.end annotation


# instance fields
.field private _listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

.field final synthetic this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V
    .locals 1

    .prologue
    .line 562
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;
    .param p2, "x1"    # Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 571
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 572
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_1

    .line 573
    const-string v3, "Selected campaign found"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 574
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 577
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "textKey"

    const-string v4, "buffering"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 586
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoStreamUrl()Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "playUrl":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    .line 593
    :goto_0
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->access$100(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 594
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->access$100(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v3

    iget-object v3, v3, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget-object v4, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start videoplayback with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-static {v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->access$100(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v3

    iget-object v3, v3, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->playVideo(Ljava/lang/String;Z)V

    .line 600
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "playUrl":Ljava/lang/String;
    :goto_1
    return-void

    .line 579
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t create data JSON"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 589
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getVideoFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .restart local v2    # "playUrl":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    goto :goto_0

    .line 599
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "playUrl":Ljava/lang/String;
    :cond_1
    const-string v3, "Campaign is null"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVideoPlayerListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->_listener:Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    .line 567
    return-void
.end method

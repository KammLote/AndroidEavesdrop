.class public Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;
.super Landroid/app/Activity;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;
.implements Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;
    }
.end annotation


# instance fields
.field private _finishOperationsDone:Z

.field private _mainView:Lcom/unity3d/ads/android/view/UnityAdsMainView;

.field private _pausedPosition:I

.field private _preventVideoDoubleStart:Ljava/lang/Boolean;

.field private _rewatch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_preventVideoDoubleStart:Ljava/lang/Boolean;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_mainView:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 39
    iput v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    .line 40
    iput-boolean v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_rewatch:Z

    .line 41
    iput-boolean v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_finishOperationsDone:Z

    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)Lcom/unity3d/ads/android/view/UnityAdsMainView;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    return-object v0
.end method

.method private changeOrientation()V
    .locals 3

    .prologue
    .line 114
    const/4 v1, 0x6

    .line 117
    .local v1, "targetOrientation":I
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 118
    const-string v2, "Static state lost, finishing activity"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 124
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->useDeviceOrientationForVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v1, -0x1

    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private create()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 152
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 153
    .local v2, "dataOk":Ljava/lang/Boolean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v1, "data":Lorg/json/JSONObject;
    const-string v5, "none"

    .line 157
    .local v5, "view":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v6

    .line 159
    .local v6, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    const-string v7, "action"

    const-string v8, "open"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v7, "zone"

    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    check-cast v6, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v6    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v6}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v4

    .line 164
    .local v4, "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    const-string v7, "itemKey"

    invoke-virtual {v4}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v4    # "itemManager":Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting up WebView with view:none and data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 175
    sget-object v7, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v8, "none"

    invoke-virtual {v7, v8, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 176
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v7

    sget-object v8, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v7, v8}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 178
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 179
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->noOfferScreen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    invoke-direct {p0, v9}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->playVideo(Z)V

    .line 183
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 184
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/unity3d/ads/android/IUnityAdsListener;->onShow()V

    .line 191
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_2
    :goto_1
    return-void

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 187
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v7, "mainview null after open, closing"

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1
.end method

.method private finishActivity()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 60
    iget-boolean v5, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_finishOperationsDone:Z

    if-eqz v5, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_finishOperationsDone:Z

    .line 63
    const-string v5, "Running finish operations on Unity Ads activity"

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 65
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 66
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->openAnimated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    invoke-virtual {p0, v7, v7}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->overridePendingTransition(II)V

    .line 71
    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "action"

    const-string v6, "close"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v5, :cond_3

    .line 81
    sget-object v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v6, "none"

    invoke-virtual {v5, v6, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 84
    :cond_3
    sget-object v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    invoke-static {v5}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 87
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v5, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->clearVideoPlayer()V

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v5}, Lcom/unity3d/ads/android/view/UnityAdsViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 93
    sput-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 94
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    iput-object v8, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .line 97
    :cond_5
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 98
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/unity3d/ads/android/IUnityAdsListener;->onHide()V

    .line 101
    :cond_6
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->refreshCampaignsIfNeeded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v4

    .line 103
    .local v4, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 104
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 106
    .local v3, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    invoke-static {v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-static {v3}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .end local v4    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method

.method private finishPlayback()V
    .locals 2

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->resetPausedPosition()V

    .line 609
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->destroyVideoPlayerView()V

    .line 610
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->WebView:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->setViewState(Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;)V

    .line 611
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    .line 612
    return-void
.end method

.method private getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_mainView:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    return-object v0
.end method

.method private static getRewardItemKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 742
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    .line 743
    .local v0, "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    const/4 v1, 0x0

    .line 744
    .local v1, "rewardItemKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    .end local v0    # "currentZone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 748
    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    .end local v1    # "rewardItemKey":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private openPlayStoreAsIntent(Ljava/lang/String;)V
    .locals 5
    .param p1, "playStoreId"    # Ljava/lang/String;

    .prologue
    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening playstore activity with storeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 527
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t create PlayStore intent!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openPlayStoreInBrowser(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening playStore in browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 538
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t create browser intent!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseLaunchIntent(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 10
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 402
    :try_start_0
    const-string v8, "packageName"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "className"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "action"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "mimeType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 404
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v8, "packageName"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 406
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    const-string v8, "flags"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 407
    const-string v8, "flags"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v3

    .line 413
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 415
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "className"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "packageName"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 416
    const-string v8, "packageName"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "className"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    :cond_2
    const-string v8, "action"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 420
    const-string v8, "action"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :cond_3
    const-string v8, "uri"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 424
    const-string v8, "uri"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    :cond_4
    const-string v8, "mimeType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 428
    const-string v8, "mimeType"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    :cond_5
    const-string v8, "categories"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 432
    const-string v8, "categories"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 434
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 435
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 436
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_6
    const-string v8, "flags"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 442
    const-string v8, "flags"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    :cond_7
    const-string v8, "extras"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 446
    const-string v8, "extras"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 448
    .restart local v0    # "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 449
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 451
    .local v4, "item":Lorg/json/JSONObject;
    const-string v8, "key"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, "key":Ljava/lang/String;
    const-string v8, "value"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 454
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 455
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 456
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    .line 457
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 469
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing intent json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 471
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 458
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "item":Lorg/json/JSONObject;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_9
    :try_start_1
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_a

    .line 459
    check-cast v7, Ljava/lang/Double;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_3

    .line 460
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_b

    .line 461
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 463
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse launch intent extra "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const/16 v0, 0x1f4

    .line 339
    .local v0, "videoRewindTime":I
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    .line 340
    iget v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    if-gez v1, :cond_0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->resetPausedPosition()V

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->pauseVideo()V

    .line 343
    .end local v0    # "videoRewindTime":I
    :cond_1
    return-void
.end method

.method private playVideo(Z)V
    .locals 2
    .param p1, "rewatch"    # Z

    .prologue
    .line 549
    iget-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_preventVideoDoubleStart:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const-string v1, "Prevent double create of video playback"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_preventVideoDoubleStart:Ljava/lang/Boolean;

    .line 555
    iput-boolean p1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_rewatch:Z

    .line 556
    const-string v1, "Running threaded"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 557
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;)V

    .line 558
    .local v0, "playVideoRunner":Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;
    invoke-virtual {v0, p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$UnityAdsPlayVideoRunner;->setVideoPlayerListener(Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;)V

    .line 559
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private resetPausedPosition()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    .line 347
    return-void
.end method

.method private resumeVideo()V
    .locals 3

    .prologue
    .line 213
    iget v1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    if-lez v1, :cond_0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    iget v2, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_pausedPosition:I

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->resetPausedPosition()V

    .line 223
    :cond_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Unexpected error while seeking video"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "View was not destroyed, trying to destroy it"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_mainView:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;-><init>(Landroid/content/Context;Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_mainView:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public onCloseAdsView(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 351
    const-string v0, "WebView requested CloseAdsView"

    .line 352
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;

    invoke-direct {v1, p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;-><init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 664
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 665
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finishPlayback()V

    .line 666
    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->End:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V

    .line 668
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 671
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "campaignId"

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v2, v3, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 679
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 680
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    const-string v2, "Unity Ads video completed"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 682
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v3, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v2, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 683
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getRewardItemKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 685
    :cond_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not create JSON"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    .line 139
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 142
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->initWebView()V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setupViews()V

    .line 145
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setContentView(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->changeOrientation()V

    .line 147
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->create()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_preventVideoDoubleStart:Ljava/lang/Boolean;

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 242
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finishActivity()V

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onEventPositionReached(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)V
    .locals 3
    .param p1, "position"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;

    .prologue
    .line 656
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v1, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z

    move-result v0

    .line 658
    .local v0, "success":Z
    if-nez v0, :cond_0

    const-string v1, "Sending campaign view progress failed!"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 660
    .end local v0    # "success":Z
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 251
    :pswitch_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 252
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v1

    iget-object v1, v1, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 256
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 272
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->getViewState()Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;->VideoPlayer:Lcom/unity3d/ads/android/view/UnityAdsMainView$UnityAdsMainViewState;

    if-eq v0, v1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 262
    :cond_2
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-nez v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 265
    :cond_3
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 266
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    goto :goto_1

    .line 269
    :cond_4
    const-string v0, "Prevented back-button"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchIntent(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 386
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->parseLaunchIntent(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v1

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 389
    const-string v2, "No suitable intent to launch"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 398
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 394
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOpenPlayStore(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 479
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 481
    if-eqz p1, :cond_3

    .line 482
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 483
    const/4 v3, 0x0

    .line 484
    .local v3, "playStoreId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 485
    .local v1, "clickUrl":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 487
    .local v0, "bypassAppSheet":Ljava/lang/Boolean;
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
    :try_start_0
    const-string v4, "iTunesId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 496
    :cond_0
    :goto_0
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    :try_start_1
    const-string v4, "clickUrl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 505
    :cond_1
    :goto_1
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    :try_start_2
    const-string v4, "bypassAppSheet"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 514
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 515
    invoke-direct {p0, v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->openPlayStoreAsIntent(Ljava/lang/String;)V

    .line 521
    .end local v0    # "bypassAppSheet":Ljava/lang/Boolean;
    .end local v1    # "clickUrl":Ljava/lang/String;
    .end local v3    # "playStoreId":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 491
    .restart local v0    # "bypassAppSheet":Ljava/lang/Boolean;
    .restart local v1    # "clickUrl":Ljava/lang/String;
    .restart local v3    # "playStoreId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch playStoreId"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 501
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch clickUrl"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 509
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 510
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "Could not fetch bypassAppSheet"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 517
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v1, :cond_3

    .line 518
    invoke-direct {p0, v1}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->openPlayStoreInBrowser(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onOrientationRequest(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 378
    const-string v0, "orientation"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->setRequestedOrientation(I)V

    .line 379
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 228
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->pauseVideo()V

    .line 229
    invoke-virtual {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finishActivity()V

    .line 230
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    return-void
.end method

.method public onPauseVideo(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 330
    const-string v0, "WebView requested PauseVideo"

    .line 331
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->pauseVideo()V

    .line 334
    return-void
.end method

.method public onPlayVideo(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 282
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 283
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 284
    const/4 v0, 0x0

    .line 287
    .local v0, "campaignId":Ljava/lang/String;
    :try_start_0
    const-string v3, "campaignId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    if-eqz v0, :cond_4

    .line 294
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 295
    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    move-result-object v3

    sput-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 298
    :cond_0
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 299
    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 300
    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 302
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 305
    .local v2, "rewatch":Ljava/lang/Boolean;
    :try_start_1
    const-string v3, "rewatch"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 311
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->resetPausedPosition()V

    .line 315
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected campaign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 316
    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_preventVideoDoubleStart:Ljava/lang/Boolean;

    .line 321
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->playVideo(Z)V

    .line 326
    .end local v0    # "campaignId":Ljava/lang/String;
    .end local v2    # "rewatch":Ljava/lang/Boolean;
    :cond_4
    return-void

    .line 289
    .restart local v0    # "campaignId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Could not get campaignId"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "rewatch":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 308
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t get rewatch property"

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 201
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 209
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->resumeVideo()V

    .line 210
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 235
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 237
    return-void
.end method

.method public onVideoPlaybackError()V
    .locals 6

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finishPlayback()V

    .line 691
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 692
    const-string v4, "videoError"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v4, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 694
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 695
    .local v1, "errorParams":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 696
    .local v3, "spinnerParams":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 699
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "textKey"

    const-string v5, "videoPlaybackError"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v4, "textKey"

    const-string v5, "buffering"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    const-string v4, "campaignId"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v4, :cond_0

    .line 708
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 709
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "showError"

    invoke-virtual {v4, v5, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 710
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "videoCompleted"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 713
    :cond_0
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v4, :cond_1

    .line 714
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v5, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 715
    const/4 v4, 0x0

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 717
    :cond_1
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 618
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 619
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .local v2, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "campaignId"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->_rewatch:Z

    if-nez v4, :cond_0

    .line 628
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoStarted()V

    .line 630
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v3

    .line 631
    .local v3, "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 632
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 634
    .local v1, "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-static {v4}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->isCampaignCached(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->allowCacheVideo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    invoke-static {v1}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->cacheCampaign(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V

    .line 639
    .end local v1    # "nextCampaign":Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v4

    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getMainView()Lcom/unity3d/ads/android/view/UnityAdsMainView;

    move-result-object v5

    iget-object v5, v5, Lcom/unity3d/ads/android/view/UnityAdsMainView;->videoplayerview:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->bringChildToFront(Landroid/view/View;)V

    .line 640
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->changeOrientation()V

    .line 643
    :try_start_1
    const-string v4, "campaignId"

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v5}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    :goto_1
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    if-eqz v4, :cond_2

    .line 650
    sget-object v4, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 652
    :cond_2
    return-void

    .line 623
    .end local v3    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "viewableCampaigns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;>;"
    :catch_1
    move-exception v0

    .line 646
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "Could not set campaign"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onVideoSkip()V
    .locals 5

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finishPlayback()V

    .line 722
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 725
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "campaignId"

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMainView;->webview:Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v2, v3, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 732
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 734
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    const-string v2, "Unity Ads video skipped"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 736
    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    sget-object v3, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v2, v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->setCampaignStatus(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;)V

    .line 737
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getListener()Lcom/unity3d/ads/android/IUnityAdsListener;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->getRewardItemKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/unity3d/ads/android/IUnityAdsListener;->onVideoCompleted(Ljava/lang/String;Z)V

    .line 739
    :cond_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Could not create JSON"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWebAppInitComplete(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 372
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 373
    return-void
.end method

.method public onWebAppLoadComplete(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 364
    const-string v0, "WebView reported WebAppLoadComplete"

    .line 365
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 368
    return-void
.end method

.class public Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedVideoBroadcastReceiver.java"


# static fields
.field public static final ACTION_REWARDED_VIDEO_COMPLETE:Ljava/lang/String; = "com.mopub.action.rewardedvideo.complete"

.field private static sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;J)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "broadcastIdentifier"    # J

    .prologue
    .line 20
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 21
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;

    .line 22
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 23
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    .line 29
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mopub.action.rewardedvideo.complete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->mRewardedVideoListener:Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;

    invoke-interface {v1}, Lcom/mopub/mobileads/RewardedVastVideoInterstitial$CustomEventRewardedVideoInterstitialListener;->onVideoComplete()V

    .line 47
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/RewardedVideoBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customEventClass:Ljava/lang/Class;

.field final synthetic val$moPubReward:Lcom/mopub/common/MoPubReward;

.field final synthetic val$thirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$customEventClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$thirdPartyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 575
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedVideoData;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$customEventClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/RewardedVideoData;->getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    .line 574
    invoke-static {v3, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 577
    .local v0, "chosenReward":Lcom/mopub/common/MoPubReward;
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedVideoData;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$customEventClass:Ljava/lang/Class;

    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;->val$thirdPartyId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mopub/mobileads/RewardedVideoData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 578
    .local v1, "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 579
    .local v2, "rewarded":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 580
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    .line 582
    :cond_0
    return-void
.end method

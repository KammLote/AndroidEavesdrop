.class Lcom/mopub/mobileads/RewardedVideoData;
.super Ljava/lang/Object;
.source "RewardedVideoData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;
    }
.end annotation


# instance fields
.field private final mAdNetworkListeners:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToCustomEventMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdUnitToRewardMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mCustomEventToMoPubIdMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCustomEventToRewardMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToRewardMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToRewardMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdNetworkListeners:Ljava/util/Set;

    .line 41
    return-void
.end method


# virtual methods
.method associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedVideo;>;"
    new-instance v3, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;

    invoke-direct {v3, p1, p2}, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 137
    .local v3, "newCustomEventMapping":Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 138
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;

    invoke-virtual {v4, v3}, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 157
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 158
    .local v2, "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 159
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 160
    .restart local v2    # "moPubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method getCurrentAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCurrentAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedVideo;
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    return-object v0
.end method

.method getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;)",
            "Lcom/mopub/common/MoPubReward;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedVideo;>;"
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedVideo;>;"
    if-nez p2, :cond_1

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    .local v0, "allIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;

    iget-object v1, v4, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;->customEventClass:Ljava/lang/Class;

    .line 66
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p1, v1, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 72
    .end local v0    # "allIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v3, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;

    invoke-direct {v3, p1, p2}, Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    .local v3, "key":Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;
    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToMoPubIdMap:Ljava/util/Map;

    .line 74
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    :goto_1
    move-object v0, v4

    .line 73
    .end local v3    # "key":Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;
    :cond_2
    return-object v0

    .line 75
    .restart local v3    # "key":Lcom/mopub/mobileads/RewardedVideoData$TwoPartKey;
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_1
.end method

.method getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    return-object v0
.end method

.method setCurrentAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentAdUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCurrentAdUnitId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedVideo;Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEvent"    # Lcom/mopub/mobileads/CustomEventRewardedVideo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "adNetworkId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToCustomEventMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdNetworkListeners:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p1}, Lcom/mopub/mobileads/RewardedVideoData;->associateCustomEventWithMoPubId(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "moPubId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currencyName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "currencyAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    .local v1, "intCurrencyAmount":I
    if-ltz v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedVideoData;->mAdUnitToRewardMap:Ljava/util/Map;

    invoke-static {p2, v1}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v1    # "intCurrencyAmount":I
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moPubReward"    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "customEventClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventRewardedVideo;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoData;->mCustomEventToRewardMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.class public Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;
.super Ljava/lang/Object;
.source "UnityAdsRewardItemManager.java"


# instance fields
.field private _currentItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

.field private _defaultItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

.field private _rewardItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/android/item/UnityAdsRewardItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6
    .param p1, "rewardItemArray"    # Lorg/json/JSONArray;
    .param p2, "defaultItem"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v4, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    .line 15
    iput-object v4, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_currentItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 16
    iput-object v4, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_defaultItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    .line 21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 23
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 24
    .local v3, "rewardItemObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;-><init>(Lorg/json/JSONObject;)V

    .line 26
    .local v2, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->hasValidData()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    iput-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_currentItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 29
    iput-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_defaultItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 32
    :cond_0
    iget-object v4, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v2    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .end local v3    # "rewardItemObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Failed to parse reward item"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method


# virtual methods
.method public allItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/android/item/UnityAdsRewardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/unity3d/ads/android/item/UnityAdsRewardItem;>;"
    iget-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 66
    .local v1, "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1    # "rewardItem":Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    :cond_0
    return-object v0
.end method

.method public getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_currentItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    return-object v0
.end method

.method public getDefaultItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_defaultItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
    .locals 1
    .param p1, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setCurrentItem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rewardItemKey"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_rewardItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->_currentItem:Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

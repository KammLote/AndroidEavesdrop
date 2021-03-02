.class public Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
.super Ljava/lang/Object;
.source "UnityAdsZoneManager.java"


# instance fields
.field private _currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

.field private _zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/android/zone/UnityAdsZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "zoneArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v4, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    .line 16
    iput-object v4, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

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

    move-result-object v2

    .line 25
    .local v2, "jsonZone":Lorg/json/JSONObject;
    const-string v4, "incentivised"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    new-instance v3, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;-><init>(Lorg/json/JSONObject;)V

    .line 31
    .local v3, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_1
    iget-object v4, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    iput-object v3, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 35
    :cond_0
    iget-object v4, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .end local v2    # "jsonZone":Lorg/json/JSONObject;
    .end local v3    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .restart local v2    # "jsonZone":Lorg/json/JSONObject;
    :cond_1
    new-instance v3, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    goto :goto_1

    .line 37
    .end local v2    # "jsonZone":Lorg/json/JSONObject;
    .end local v3    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Failed to parse zone"

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iput-object v1, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    .line 88
    return-void
.end method

.method public getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    return-object v0
.end method

.method public getZone(Ljava/lang/String;)Lcom/unity3d/ads/android/zone/UnityAdsZone;
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZonesJson()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 77
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v1, "zonesArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 79
    .local v0, "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneOptions()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 81
    .end local v0    # "zone":Lcom/unity3d/ads/android/zone/UnityAdsZone;
    :cond_0
    return-object v1
.end method

.method public getZonesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/android/zone/UnityAdsZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    return-object v0
.end method

.method public setCurrentZone(Ljava/lang/String;)Z
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsZone;

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_currentZone:Lcom/unity3d/ads/android/zone/UnityAdsZone;

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zoneCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->_zones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

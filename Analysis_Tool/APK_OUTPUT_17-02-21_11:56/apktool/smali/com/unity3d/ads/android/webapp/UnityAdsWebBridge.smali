.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;
.super Ljava/lang/Object;
.source "UnityAdsWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    }
.end annotation


# instance fields
.field private _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 62
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 63
    return-void
.end method

.method private getEventType(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->values()[Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 54
    .local v0, "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    invoke-virtual {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    .end local v0    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :goto_1
    return-object v0

    .line 53
    .restart local v0    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "evt":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleWebEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 74
    iget-object v8, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v7

    .line 76
    :cond_1
    const/4 v4, 0x0

    .line 77
    .local v4, "jsonData":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 80
    .local v6, "parameters":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v4    # "jsonData":Lorg/json/JSONObject;
    .local v5, "jsonData":Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "data"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    move-object v4, v5

    .line 87
    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .restart local v4    # "jsonData":Lorg/json/JSONObject;
    :goto_1
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->getEventType(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;

    move-result-object v2

    .line 91
    .local v2, "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    if-eqz v2, :cond_0

    .line 93
    sget-object v8, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$1;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebBridge$UnityAdsWebEvent:[I

    invoke-virtual {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 145
    :cond_2
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while parsing parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    :pswitch_0
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onPlayVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 98
    :pswitch_1
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onPauseVideo(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 101
    :pswitch_2
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onCloseAdsView(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 104
    :pswitch_3
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onWebAppLoadComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 107
    :pswitch_4
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onWebAppInitComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 110
    :pswitch_5
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onOrientationRequest(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 113
    :pswitch_6
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onOpenPlayStore(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 116
    :pswitch_7
    if-eqz v6, :cond_2

    const-string v8, "clickUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 120
    :try_start_2
    const-string v8, "clickUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 127
    .local v0, "clickUrl":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 129
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, "i":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 133
    .end local v3    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not start activity for opening URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maybe malformed URL?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 122
    .end local v0    # "clickUrl":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "Error fetching clickUrl"

    invoke-static {v8}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_8
    iget-object v7, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    invoke-interface {v7, v6}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;->onLaunchIntent(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 83
    .end local v2    # "eventType":Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge$UnityAdsWebEvent;
    .end local v4    # "jsonData":Lorg/json/JSONObject;
    .restart local v5    # "jsonData":Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "jsonData":Lorg/json/JSONObject;
    .restart local v4    # "jsonData":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .line 67
    return-void
.end method

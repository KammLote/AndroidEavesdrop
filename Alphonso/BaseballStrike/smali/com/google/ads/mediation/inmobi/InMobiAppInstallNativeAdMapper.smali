.class public Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.source "InMobiAppInstallNativeAdMapper.java"


# instance fields
.field private inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

.field private inMobiNative:Lcom/inmobi/ads/InMobiNative;

.field private isOnlyURL:Ljava/lang/Boolean;

.field private landingUrlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/inmobi/ads/InMobiNative;Ljava/lang/Boolean;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V
    .locals 1
    .param p1, "inMobiAdapter"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter;
    .param p2, "inMobiNative"    # Lcom/inmobi/ads/InMobiNative;
    .param p3, "isOnlyURL"    # Ljava/lang/Boolean;
    .param p4, "mediationNativeListener"    # Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->landingUrlMap:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .line 37
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 38
    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->isOnlyURL:Ljava/lang/Boolean;

    .line 39
    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 40
    return-void
.end method


# virtual methods
.method public handleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->landingUrlMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative;->reportAdClickAndOpenLandingPage(Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public mapAppInstallAd()V
    .locals 30

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v4}, Lcom/inmobi/ads/InMobiNative;->getAdContent()Ljava/lang/Object;

    move-result-object v26

    .line 54
    .local v26, "pubContent":Ljava/lang/Object;
    :try_start_0
    new-instance v25, Lorg/json/JSONObject;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v25, "payLoad":Lorg/json/JSONObject;
    if-nez v25, :cond_0

    .line 58
    const-string/jumbo v4, "{ Payload / Native ad Content } is null "

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 163
    .end local v25    # "payLoad":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 63
    .restart local v25    # "payLoad":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "title"

    .line 64
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 63
    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 65
    const-string v4, "description"

    .line 66
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 65
    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 67
    const-string v4, "cta"

    .line 68
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cta"

    .line 67
    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 70
    const-string v4, "landingURL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "landingURL"

    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 71
    .local v22, "landingURL":Ljava/lang/String;
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v24, "paramMap":Landroid/os/Bundle;
    const-string v4, "landingURL"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->landingUrlMap:Ljava/util/HashMap;

    const-string v5, "landingURL"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v23, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    const-string v4, "icon"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "icon"

    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 81
    .local v13, "iconObject":Lorg/json/JSONObject;
    new-instance v15, Ljava/net/URL;

    const-string v4, "url"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v15, "iconURL":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 83
    .local v16, "iconUri":Landroid/net/Uri;
    const-string v4, "aspectRatio"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 84
    .local v27, "temp":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 85
    .local v14, "iconScale":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->isOnlyURL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    const-string v4, "icon_key"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1
    const-string v4, "screenshots"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "screenshots"

    invoke-static {v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapterUtils;->mandatoryChecking(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 94
    .local v17, "imageObject":Lorg/json/JSONObject;
    new-instance v19, Ljava/net/URL;

    const-string v4, "url"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    .local v19, "imageURL":Ljava/net/URL;
    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 96
    .local v20, "imageUri":Landroid/net/Uri;
    const-string v4, "aspectRatio"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 97
    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    .line 98
    .local v18, "imageScale":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->isOnlyURL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    const-string v4, "image_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/ads/mediation/inmobi/MandatoryParamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 113
    :goto_2
    :try_start_1
    const-string v4, "rating"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setStarRating(D)V

    .line 114
    const-string v4, "package_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 115
    const-string v4, "Google Play"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setStore(Ljava/lang/String;)V

    .line 119
    :goto_3
    const-string v4, "price"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setPrice(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->isOnlyURL:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 127
    move-object/from16 v6, v16

    .line 128
    .local v6, "finalIconUri":Landroid/net/Uri;
    move-object v7, v14

    .line 129
    .local v7, "finalIconScale":Ljava/lang/Double;
    move-object/from16 v9, v18

    .line 130
    .local v9, "finalImageScale":Ljava/lang/Double;
    move-object/from16 v8, v20

    .line 131
    .local v8, "finalImageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 132
    .local v10, "finalMediationNativeListener":Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    .line 133
    .local v11, "finalInMobiadapter":Lcom/google/ads/mediation/inmobi/InMobiAdapter;
    new-instance v28, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;

    new-instance v4, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;Landroid/net/Uri;Ljava/lang/Double;Landroid/net/Uri;Ljava/lang/Double;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;-><init>(Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    .line 155
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    .end local v6    # "finalIconUri":Landroid/net/Uri;
    .end local v7    # "finalIconScale":Ljava/lang/Double;
    .end local v8    # "finalImageUri":Landroid/net/Uri;
    .end local v9    # "finalImageScale":Ljava/lang/Double;
    .end local v10    # "finalMediationNativeListener":Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    .end local v11    # "finalInMobiadapter":Lcom/google/ads/mediation/inmobi/InMobiAdapter;
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 162
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setOverrideImpressionRecording(Z)V

    goto/16 :goto_0

    .line 88
    .end local v17    # "imageObject":Lorg/json/JSONObject;
    .end local v18    # "imageScale":Ljava/lang/Double;
    .end local v19    # "imageURL":Ljava/net/URL;
    .end local v20    # "imageUri":Landroid/net/Uri;
    :cond_1
    :try_start_2
    new-instance v4, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v16

    move-wide/from16 v1, v28

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    :try_end_2
    .catch Lcom/google/ads/mediation/inmobi/MandatoryParamException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 106
    .end local v13    # "iconObject":Lorg/json/JSONObject;
    .end local v14    # "iconScale":Ljava/lang/Double;
    .end local v15    # "iconURL":Ljava/net/URL;
    .end local v16    # "iconUri":Landroid/net/Uri;
    .end local v22    # "landingURL":Ljava/lang/String;
    .end local v23    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    .end local v24    # "paramMap":Landroid/os/Bundle;
    .end local v25    # "payLoad":Lorg/json/JSONObject;
    .end local v27    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 107
    .local v12, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto/16 :goto_0

    .line 101
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "iconObject":Lorg/json/JSONObject;
    .restart local v14    # "iconScale":Ljava/lang/Double;
    .restart local v15    # "iconURL":Ljava/net/URL;
    .restart local v16    # "iconUri":Landroid/net/Uri;
    .restart local v17    # "imageObject":Lorg/json/JSONObject;
    .restart local v18    # "imageScale":Ljava/lang/Double;
    .restart local v19    # "imageURL":Ljava/net/URL;
    .restart local v20    # "imageUri":Landroid/net/Uri;
    .restart local v22    # "landingURL":Ljava/lang/String;
    .restart local v23    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    .restart local v24    # "paramMap":Landroid/os/Bundle;
    .restart local v25    # "payLoad":Lorg/json/JSONObject;
    .restart local v27    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v21, "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    new-instance v4, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setImages(Ljava/util/List;)V
    :try_end_3
    .catch Lcom/google/ads/mediation/inmobi/MandatoryParamException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 106
    .end local v13    # "iconObject":Lorg/json/JSONObject;
    .end local v14    # "iconScale":Ljava/lang/Double;
    .end local v15    # "iconURL":Ljava/net/URL;
    .end local v16    # "iconUri":Landroid/net/Uri;
    .end local v17    # "imageObject":Lorg/json/JSONObject;
    .end local v18    # "imageScale":Ljava/lang/Double;
    .end local v19    # "imageURL":Ljava/net/URL;
    .end local v20    # "imageUri":Landroid/net/Uri;
    .end local v21    # "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    .end local v22    # "landingURL":Ljava/lang/String;
    .end local v23    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    .end local v24    # "paramMap":Landroid/os/Bundle;
    .end local v25    # "payLoad":Lorg/json/JSONObject;
    .end local v27    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_6

    .line 117
    .restart local v13    # "iconObject":Lorg/json/JSONObject;
    .restart local v14    # "iconScale":Ljava/lang/Double;
    .restart local v15    # "iconURL":Ljava/net/URL;
    .restart local v16    # "iconUri":Landroid/net/Uri;
    .restart local v17    # "imageObject":Lorg/json/JSONObject;
    .restart local v18    # "imageScale":Ljava/lang/Double;
    .restart local v19    # "imageURL":Ljava/net/URL;
    .restart local v20    # "imageUri":Landroid/net/Uri;
    .restart local v22    # "landingURL":Ljava/lang/String;
    .restart local v23    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    .restart local v24    # "paramMap":Landroid/os/Bundle;
    .restart local v25    # "payLoad":Lorg/json/JSONObject;
    .restart local v27    # "temp":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v4, "Others"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setStore(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 120
    :catch_2
    move-exception v12

    .line 121
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 158
    .end local v12    # "e":Lorg/json/JSONException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiAdapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    goto :goto_5

    .line 106
    .end local v13    # "iconObject":Lorg/json/JSONObject;
    .end local v14    # "iconScale":Ljava/lang/Double;
    .end local v15    # "iconURL":Ljava/net/URL;
    .end local v16    # "iconUri":Landroid/net/Uri;
    .end local v17    # "imageObject":Lorg/json/JSONObject;
    .end local v18    # "imageScale":Ljava/lang/Double;
    .end local v19    # "imageURL":Ljava/net/URL;
    .end local v20    # "imageUri":Landroid/net/Uri;
    .end local v22    # "landingURL":Ljava/lang/String;
    .end local v23    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/net/URL;>;"
    .end local v24    # "paramMap":Landroid/os/Bundle;
    .end local v25    # "payLoad":Lorg/json/JSONObject;
    .end local v27    # "temp":Ljava/lang/String;
    :catch_3
    move-exception v12

    goto :goto_6

    :catch_4
    move-exception v12

    goto :goto_6
.end method

.method public recordImpression()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public trackView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->inMobiNative:Lcom/inmobi/ads/InMobiNative;

    invoke-static {p1, v0}, Lcom/inmobi/ads/InMobiNative;->bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V

    .line 179
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/inmobi/ads/InMobiNative;->unbind(Landroid/view/View;)V

    .line 184
    return-void
.end method

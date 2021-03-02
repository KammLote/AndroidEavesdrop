.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
.super Landroid/webkit/WebView;
.source "UnityAdsWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;,
        Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;
    }
.end annotation


# instance fields
.field private _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

.field private _url:Ljava/lang/String;

.field private _webAppLoaded:Z

.field private _webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .param p3, "webBridge"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 35
    iput-object v1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading WebView from URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->init(Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V

    .line 54
    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return p1
.end method

.method private init(Ljava/lang/String;Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;
    .param p3, "webBridge"    # Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .prologue
    const/4 v2, 0x0

    .line 169
    iput-object p2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebViewListener;

    .line 170
    iput-object p1, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    .line 172
    iput-boolean v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    .line 173
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setupUnityAdsView()V

    .line 174
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 177
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setLongClickable(Z)V

    .line 185
    :cond_0
    return-void
.end method

.method private isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webAppLoaded:Z

    return v0
.end method

.method private setupUnityAdsView()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 192
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_url:Ljava/lang/String;

    const-string v3, "_raw.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 194
    const-string v2, "LOAD_NO_CACHE"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 205
    :goto_0
    const/4 v1, 0x0

    .line 206
    .local v1, "appCachePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 213
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 216
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 217
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setVerticalScrollBarEnabled(Z)V

    .line 218
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setClickable(Z)V

    .line 219
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusable(Z)V

    .line 220
    invoke-virtual {p0, v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setFocusableInTouchMode(Z)V

    .line 221
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setInitialScale(I)V

    .line 222
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundColor(I)V

    .line 223
    invoke-virtual {p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0, v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setBackgroundResource(I)V

    .line 225
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;

    invoke-direct {v2, p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewClient;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;

    invoke-direct {v2, p0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsViewChromeClient;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Lcom/unity3d/ads/android/webapp/UnityAdsWebView$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 228
    if-eqz v1, :cond_2

    .line 229
    const/4 v0, 0x1

    .line 231
    .local v0, "appCache":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_1

    .line 232
    const/4 v0, 0x0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-wide/32 v4, 0xa00000

    invoke-virtual {v2, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 238
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 241
    .end local v0    # "appCache":Z
    :cond_2
    const-string v2, "Adding javascript interface"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    const-string v3, "unityadsnativebridge"

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    return-void

    .line 197
    .end local v1    # "appCachePath":Ljava/lang/String;
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public initWebApp(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .local v3, "initData":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "campaignData"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v5, "platform"

    const-string v8, "android"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "advertisingId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 123
    const-string v8, "trackingEnabled"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "advertisingIdMd5":Ljava/lang/String;
    const-string v5, "advertisingTrackingId"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v5, "rawAdvertisingTrackingId"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .end local v1    # "advertisingIdMd5":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v5, "sdkVersion"

    const-string v8, "1506"

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v5, "gameId"

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v5, "screenDensity"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v5, "screenSize"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v5, "zones"

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getZonesJson()Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 142
    const-string v5, "unityVersion"

    sget-object v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_1
    const-string v5, "softwareVersion"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v5, "deviceType"

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s%s(%s);"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "javascript:unityads."

    aput-object v10, v9, v6

    const-string v6, "init"

    aput-object v6, v9, v7

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v5, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "initString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing WebView with JS call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 156
    new-instance v5, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v5, p0, v4, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    .end local v0    # "advertisingId":Ljava/lang/String;
    .end local v3    # "initData":Lorg/json/JSONObject;
    .end local v4    # "initString":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .restart local v0    # "advertisingId":Ljava/lang/String;
    .restart local v3    # "initData":Lorg/json/JSONObject;
    :cond_3
    move v5, v7

    .line 123
    goto/16 :goto_0

    .line 129
    :cond_4
    :try_start_1
    const-string v5, "unknown"

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    const-string v5, "androidId"

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v5, "rawAndroidId"

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 149
    .end local v0    # "advertisingId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating webview init params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v0, "{}"

    .line 103
    .local v0, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s%s(\"%s\", %s);"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javascript:unityads."

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "handleNativeEvent"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "javascriptString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send native event to WebApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 108
    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v2, p0, v1, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setWebBridgeListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V
    .locals 1
    .param p1, "webBridgeListener"    # Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->_webBridge:Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebBridge;->setListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebBridgeListener;)V

    .line 164
    :cond_0
    return-void
.end method

.method public setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 61
    invoke-direct {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView;->isWebAppLoaded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const-string v1, "{}"

    .line 64
    .local v1, "dataString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s%s(\"%s\", %s);"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "javascript:unityads."

    aput-object v7, v6, v9

    const/4 v7, 0x1

    const-string v8, "setView"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "javascriptString":Ljava/lang/String;
    new-instance v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    invoke-direct {v4, p0, v3, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send change view to WebApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_1

    .line 72
    const-string v0, "test"

    .line 74
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v4, "action"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataHasApiActionKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionEqualsWebViewApiOpen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "open"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDebuggable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runWebViewTests="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testJavaScriptContents="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 86
    const-string v4, "action"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "open"

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running test-javascript: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 92
    new-instance v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;

    sget-object v5, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_JAVASCRIPT:Ljava/lang/String;

    invoke-direct {v4, p0, v5, p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebView$UnityAdsJavascriptRunner;-><init>(Lcom/unity3d/ads/android/webapp/UnityAdsWebView;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->RUN_WEBVIEW_TESTS:Ljava/lang/Boolean;

    .line 97
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v3    # "javascriptString":Ljava/lang/String;
    :cond_1
    return-void

    .line 76
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "dataString":Ljava/lang/String;
    .restart local v3    # "javascriptString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t get API action key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.class public Lcom/mopub/mobileads/AsapiMopubMediation;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "AsapiMopubMediation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/mopub/mobileads/AsapiMopubMediation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/AsapiMopubMediation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method private showBanner(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Landroid/content/Context;)V
    .locals 4
    .param p1, "listener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    sget v3, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->MOPUB:I

    invoke-virtual {v2, v3}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->useLastReceivedResult(I)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Ltv/alphonso/service/client/AlphonsoAdBanner;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltv/alphonso/service/client/AlphonsoAdBanner;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "banner":Ltv/alphonso/service/client/AlphonsoAdBanner;
    invoke-virtual {v0, v1}, Ltv/alphonso/service/client/AlphonsoAdBanner;->setResultData(Landroid/os/Bundle;)V

    .line 49
    sget-object v2, Lcom/mopub/mobileads/AsapiMopubMediation;->TAG:Ljava/lang/String;

    const-string v3, "AsapiMopubMediation: laoding banner."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 57
    .end local v0    # "banner":Ltv/alphonso/service/client/AlphonsoAdBanner;
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v2, Lcom/mopub/mobileads/AsapiMopubMediation;->TAG:Ljava/lang/String;

    const-string v3, "AsapiMopubMediation: No banner to show."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/mopub/mobileads/AsapiMopubMediation;->TAG:Ljava/lang/String;

    const-string v1, "requestBannerAd() called on AsapiMopubMediation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    const/4 v2, 0x0

    const-string v0, "api_key"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    .line 32
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->startAlphonsoService()V

    .line 35
    invoke-direct {p0, p2, p1}, Lcom/mopub/mobileads/AsapiMopubMediation;->showBanner(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/mopub/mobileads/AsapiMopubMediation;->TAG:Ljava/lang/String;

    const-string v1, "onInvalidate() called on AsapiMopubMediation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

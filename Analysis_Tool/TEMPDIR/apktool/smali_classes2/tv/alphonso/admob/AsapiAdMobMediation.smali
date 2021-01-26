.class public Ltv/alphonso/admob/AsapiAdMobMediation;
.super Ljava/lang/Object;
.source "AsapiAdMobMediation.java"

# interfaces
.implements Lcom/google/ads/mediation/customevent/CustomEventBanner;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Ltv/alphonso/admob/AsapiAdMobMediation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/admob/AsapiAdMobMediation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showBanner(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "adSize"    # Lcom/google/ads/AdSize;
    .param p4, "request"    # Lcom/google/ads/mediation/MediationAdRequest;

    .prologue
    .line 57
    sget-object v2, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    sget v3, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->ADMOB:I

    invoke-virtual {v2, v3}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->useLastReceivedResult(I)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Ltv/alphonso/service/client/AlphonsoAdBanner;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltv/alphonso/service/client/AlphonsoAdBanner;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "banner":Ltv/alphonso/service/client/AlphonsoAdBanner;
    invoke-virtual {v0, v1}, Ltv/alphonso/service/client/AlphonsoAdBanner;->setResultData(Landroid/os/Bundle;)V

    .line 64
    sget-object v2, Ltv/alphonso/admob/AsapiAdMobMediation;->TAG:Ljava/lang/String;

    const-string v3, "AsapiAdMobMediation: laoding banner."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {p1, v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onReceivedAd(Landroid/view/View;)V

    .line 72
    .end local v0    # "banner":Ltv/alphonso/service/client/AlphonsoAdBanner;
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v2, Ltv/alphonso/admob/AsapiAdMobMediation;->TAG:Ljava/lang/String;

    const-string v3, "AsapiAdMobMediation: No banner to show."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {p1}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onFailedToReceiveAd()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Ltv/alphonso/admob/AsapiAdMobMediation;->TAG:Ljava/lang/String;

    const-string v1, "destroy() called on AsapiAdMobMediation object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Ljava/lang/Object;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "serverParameter"    # Ljava/lang/String;
    .param p5, "adSize"    # Lcom/google/ads/AdSize;
    .param p6, "request"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p7, "customEventExtra"    # Ljava/lang/Object;

    .prologue
    .line 36
    sget-object v0, Ltv/alphonso/admob/AsapiAdMobMediation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBannerAd() called on AsapiAdMobMediation with label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and serverParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    invoke-direct {v0, p2, p3, p4}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    .line 45
    :cond_0
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    invoke-virtual {v0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->startAlphonsoService()V

    .line 48
    invoke-direct {p0, p1, p2, p5, p6}, Ltv/alphonso/admob/AsapiAdMobMediation;->showBanner(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 49
    return-void
.end method

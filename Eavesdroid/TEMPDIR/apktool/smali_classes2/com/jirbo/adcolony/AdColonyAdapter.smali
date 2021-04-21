.class public Lcom/jirbo/adcolony/AdColonyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# instance fields
.field a:Lcom/jirbo/adcolony/AdColonyVideoAd;

.field b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field c:Lcom/jirbo/adcolony/AdColonyAdListener;

.field d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field g:Landroid/content/Context;

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Ljava/lang/String;

.field q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

.field s:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    new-instance v0, Lcom/jirbo/adcolony/aa$b;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-direct {v0, v2, v3}, Lcom/jirbo/adcolony/aa$b;-><init>(D)V

    .line 304
    :goto_0
    sget-boolean v1, Lcom/jirbo/adcolony/a;->S:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/jirbo/adcolony/a;->aq:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    if-eqz p1, :cond_3

    .line 308
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1, p1, v4, v5}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1, p1, v4, v5}, Lcom/jirbo/adcolony/d;->b(Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    :cond_1
    sput-boolean v4, Lcom/jirbo/adcolony/a;->S:Z

    .line 334
    if-nez p2, :cond_6

    .line 336
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 337
    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->s:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->s:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iput-object v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aA:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 342
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$14;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$14;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    :cond_2
    :goto_1
    return-void

    .line 316
    :cond_3
    new-instance v1, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>()V

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_4
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 351
    :cond_5
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 353
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$15;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$15;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->destroy()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    goto :goto_1

    .line 366
    :cond_6
    if-ne p2, v4, :cond_f

    .line 368
    if-nez p1, :cond_9

    .line 371
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 372
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 374
    iput-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->k:Z

    .line 375
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$16;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$16;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 387
    :cond_7
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>()V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 388
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 390
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$17;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$17;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 400
    :cond_8
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 402
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$18;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$18;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 416
    :cond_9
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->k:Z

    if-eqz v0, :cond_d

    .line 418
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 419
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 420
    :cond_a
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->m:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 422
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_c

    .line 424
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$2;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$2;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 433
    :cond_c
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 435
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$3;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 447
    :cond_d
    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 449
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 451
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$4;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$4;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 460
    :cond_e
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 462
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$5;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$5;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 475
    :cond_f
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 477
    if-nez p1, :cond_10

    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 479
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 481
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 483
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$6;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$6;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 477
    :cond_10
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    goto :goto_2

    .line 493
    :cond_11
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 495
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$7;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$7;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public configure(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 4
    .param p1, "server_parameters"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 232
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->p:Ljava/lang/String;

    .line 233
    const-string v0, "zone_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->q:Ljava/util/ArrayList;

    .line 240
    :cond_0
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 244
    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    const-string v1, "version:1.0,store:google"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->q:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p2, v1, v2, v0}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local p2    # "context":Landroid/content/Context;
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColony needs an Activity context."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad_request"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .param p5, "server_parameters"    # Landroid/os/Bundle;
    .param p6, "network_extras"    # Landroid/os/Bundle;

    .prologue
    .line 257
    .line 260
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p5, p1}, Lcom/jirbo/adcolony/AdColonyAdapter;->configure(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 267
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    sget-object v0, Lcom/jirbo/adcolony/a;->au:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyV4VCListener;

    sget-object v2, Lcom/jirbo/adcolony/a;->au:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 271
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColony has not yet been configured, please either pass the appropriate server parameters or configure AdColony yourself."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 299
    :cond_1
    :goto_1
    return-void

    .line 277
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Adapter initialized, adding V4VC listener"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 279
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 280
    iput-object p4, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 282
    new-instance v0, Lcom/jirbo/adcolony/AdColonyAdapter$13;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$13;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->o:Z

    .line 298
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->o:Z

    return v0
.end method

.method protected left_application()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 222
    :cond_2
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "ad_request"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p2, "server_parameters"    # Landroid/os/Bundle;
    .param p3, "network_extras"    # Landroid/os/Bundle;

    .prologue
    .line 511
    if-eqz p3, :cond_0

    const-string v0, "zone_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    .line 513
    :cond_0
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 515
    sget-object v0, Lcom/jirbo/adcolony/a;->au:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 517
    new-instance v0, Lcom/jirbo/adcolony/AdColonyAdapter$8;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$8;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$9;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$9;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 540
    return-void
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "temp_ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->shown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->canceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 197
    :cond_2
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "temp_ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 185
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 187
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->r:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->destroy()V

    .line 166
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .param p3, "server_parameters"    # Landroid/os/Bundle;
    .param p4, "ad_size"    # Lcom/google/android/gms/ads/AdSize;
    .param p5, "mediation_ad_request"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p6, "mediation_extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 44
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 45
    iput-object p4, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->s:Lcom/google/android/gms/ads/AdSize;

    .line 46
    iput-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->n:Z

    .line 48
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p3, p1}, Lcom/jirbo/adcolony/AdColonyAdapter;->configure(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    .line 56
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    .line 58
    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2

    :cond_1
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->n:Z

    .line 60
    :cond_2
    int-to-double v2, v0

    int-to-double v0, v1

    div-double v0, v2, v0

    .line 62
    const-wide v2, 0x3ff547ae147ae148L    # 1.33

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x3ffc7ae147ae147bL    # 1.78

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->n:Z

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    sput-object v0, Lcom/jirbo/adcolony/a;->R:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 66
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 68
    const-string v0, "zone_id"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->j:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->j:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->j:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->n:Z

    if-nez v1, :cond_7

    .line 73
    :cond_5
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Missing zone id or invalid AdSize."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 74
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0, v4}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 93
    :cond_6
    :goto_0
    return-void

    .line 78
    :cond_7
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/AdColonyAdapter$1;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {v0, p0, v4}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 90
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColony ad view requires an Activity context."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto :goto_0
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "server_parameters"    # Landroid/os/Bundle;
    .param p4, "mediation_ad_request"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediation_extras"    # Landroid/os/Bundle;

    .prologue
    .line 105
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 106
    iput-object p0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 108
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->b:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p3, p1}, Lcom/jirbo/adcolony/AdColonyAdapter;->configure(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 113
    :cond_0
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 116
    if-eqz p5, :cond_1

    const-string v0, "zone_id"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "zone_id"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    .line 119
    const-string v0, "show_pre_popup"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->l:Z

    .line 120
    const-string v0, "show_post_popup"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->m:Z

    .line 135
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->k:Z

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$12;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$12;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/AdColonyAdapter$11;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$11;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 149
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 150
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->k:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/jirbo/adcolony/AdColonyVideoAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->c:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->a:Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    goto :goto_0
.end method

.method public showVideo()V
    .locals 2

    .prologue
    .line 545
    sput-object p0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 546
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 550
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->au:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Lcom/jirbo/adcolony/AdColonyAdapter$10;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdapter$10;-><init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->b:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 567
    return-void

    .line 548
    :cond_2
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    goto :goto_0
.end method

.class Lcom/jirbo/adcolony/AdColony$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColony$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColony$3;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColony$3;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$3$1;->a:Lcom/jirbo/adcolony/AdColony$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 290
    sget-boolean v0, Lcom/jirbo/adcolony/a;->E:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->R:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/jirbo/adcolony/a;->R:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    sget-object v1, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 293
    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    :cond_0
    move v1, v2

    .line 295
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 297
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 298
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 300
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->d:Landroid/app/Activity;

    if-ne v3, v4, :cond_1

    iget-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->u:Z

    if-nez v3, :cond_1

    .line 302
    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->A:Z

    .line 303
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    .line 304
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    iput-boolean v2, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->a:Z

    .line 307
    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->T:Lcom/jirbo/adcolony/AdColonyNativeAdView$b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$b;->invalidate()V

    .line 295
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 312
    :cond_2
    return-void
.end method

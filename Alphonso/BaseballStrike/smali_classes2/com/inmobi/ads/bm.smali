.class abstract Lcom/inmobi/ads/bm;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewabilityTrackingDecorator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/inmobi/ads/ViewableAd;-><init>()V

    .line 11
    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/AdContainer;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/AdContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 14
    return-void
.end method

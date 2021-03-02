.class Lcom/facebook/ads/internal/adapters/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/dto/c;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/dto/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i$3;->a:Lcom/facebook/ads/internal/dto/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/p;)V
    .locals 7

    const v2, -0x7439eb

    new-instance v0, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v0}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdViewAttributes;->setButtonTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/NativeAdViewAttributes;->setButtonBorderColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/NativeAdViewAttributes;->setButtonColor(I)Lcom/facebook/ads/NativeAdViewAttributes;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    new-instance v2, Lcom/facebook/ads/internal/view/a;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v3}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v5}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/adapters/i$3;->a:Lcom/facebook/ads/internal/dto/c;

    invoke-direct {v4, v5, p1, v6}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/p;Lcom/facebook/ads/internal/dto/c;)V

    new-instance v5, Lcom/facebook/ads/internal/adapters/i$3$1;

    invoke-direct {v5, p0}, Lcom/facebook/ads/internal/adapters/i$3$1;-><init>(Lcom/facebook/ads/internal/adapters/i$3;)V

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/facebook/ads/internal/view/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;Lcom/facebook/ads/internal/view/a$a;)V

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/view/a;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/p;Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerError(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

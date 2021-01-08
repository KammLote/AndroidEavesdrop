.class Lcom/facebook/ads/internal/adapters/i$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/i$3;->a(Lcom/facebook/ads/internal/adapters/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$3$1;->a:Lcom/facebook/ads/internal/adapters/i$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$3$1;->a:Lcom/facebook/ads/internal/adapters/i$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$3$1;->a:Lcom/facebook/ads/internal/adapters/i$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$3$1;->a:Lcom/facebook/ads/internal/adapters/i$3;

    iget-object v1, v1, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i$3$1;->a:Lcom/facebook/ads/internal/adapters/i$3;

    iget-object v2, v2, Lcom/facebook/ads/internal/adapters/i$3;->b:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/i;->f(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/view/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/BannerAdapter;Landroid/view/View;)V

    :cond_0
    return-void
.end method

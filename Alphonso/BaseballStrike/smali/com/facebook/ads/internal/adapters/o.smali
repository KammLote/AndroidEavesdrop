.class public Lcom/facebook/ads/internal/adapters/o;
.super Lcom/facebook/ads/internal/adapters/b;


# instance fields
.field private final b:Lcom/facebook/ads/internal/adapters/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/adapters/p;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/o;->b:Lcom/facebook/ads/internal/adapters/p;

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/o;->b:Lcom/facebook/ads/internal/adapters/p;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->a:Lcom/facebook/ads/internal/adapters/c;

    if-eqz v1, :cond_1

    const-string v1, "mil"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/o;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/c;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/o;->b:Lcom/facebook/ads/internal/adapters/p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/p;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

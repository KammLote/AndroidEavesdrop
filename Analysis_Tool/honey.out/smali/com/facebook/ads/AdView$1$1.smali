.class Lcom/facebook/ads/AdView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdView$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v0, v0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h;->a()V

    return-void
.end method

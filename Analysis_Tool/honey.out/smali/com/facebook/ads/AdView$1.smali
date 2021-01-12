.class Lcom/facebook/ads/AdView$1;
.super Lcom/facebook/ads/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Lcom/facebook/ads/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h;->d()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->b()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->d(Lcom/facebook/ads/AdView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->g(Lcom/facebook/ads/AdView;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    new-instance v1, Lcom/facebook/ads/internal/adapters/e;

    iget-object v2, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v2}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v3}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/h;->b()Lcom/facebook/ads/internal/dto/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/dto/c;->e()I

    move-result v3

    new-instance v4, Lcom/facebook/ads/AdView$1$1;

    invoke-direct {v4, p0}, Lcom/facebook/ads/AdView$1$1;-><init>(Lcom/facebook/ads/AdView$1;)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/facebook/ads/internal/adapters/e;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/facebook/ads/internal/adapters/e$a;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/e;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->a()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->h(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->h(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->i(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->h(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v2}, Lcom/facebook/ads/AdView;->e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdSize;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/util/g;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/AdSize;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/b;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b;->b()Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->j(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->j(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/ImpressionListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/ImpressionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->j(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/ImpressionListener;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/ImpressionListener;

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/ImpressionListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_1
    return-void
.end method

.class Lcom/facebook/ads/AdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;->a()V
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

    iput-object p1, p0, Lcom/facebook/ads/AdView$3;->a:Lcom/facebook/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AdView$3;->a:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/facebook/ads/AdView$3;->a:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$3;->a:Lcom/facebook/ads/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

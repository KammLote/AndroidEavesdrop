.class Lcom/inmobi/ads/NativeStrandViewFactory$10;
.super Lcom/inmobi/ads/NativeStrandViewFactory$c;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandViewFactory;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$10;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 444
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 449
    invoke-super {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 450
    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/Button;Lcom/inmobi/ads/NativeV2Asset;)Landroid/widget/Button;

    .line 451
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 455
    instance-of v0, p1, Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 459
    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;)V

    .line 460
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

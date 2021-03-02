.class public Lcom/facebook/ads/internal/view/b;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/b$1;,
        Lcom/facebook/ads/internal/view/b$c;,
        Lcom/facebook/ads/internal/view/b$a;,
        Lcom/facebook/ads/internal/view/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/internal/view/b$a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/b;)Lcom/facebook/ads/internal/view/b$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/internal/view/b$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/b$b;-><init>(Lcom/facebook/ads/internal/view/b;Lcom/facebook/ads/internal/view/b$1;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/b;->setVerticalScrollbarOverlay(Z)V

    new-instance v0, Lcom/facebook/ads/internal/view/b$c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/b$c;-><init>()V

    const-string v1, "AdControl"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/b;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/internal/view/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b;->a:Lcom/facebook/ads/internal/view/b$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/b$a;->a(I)V

    :cond_0
    return-void
.end method

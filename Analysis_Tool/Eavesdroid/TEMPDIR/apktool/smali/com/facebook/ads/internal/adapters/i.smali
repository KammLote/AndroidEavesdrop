.class public Lcom/facebook/ads/internal/adapters/i;
.super Lcom/facebook/ads/internal/adapters/BannerAdapter;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/ads/internal/view/b;

.field private c:Lcom/facebook/ads/internal/adapters/m;

.field private d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/ads/internal/adapters/k;

.field private g:Lcom/facebook/ads/internal/view/a;

.field private h:Landroid/content/Context;

.field private i:J

.field private j:Lcom/facebook/ads/internal/util/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/BannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/adapters/i;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/util/b$a;)Lcom/facebook/ads/internal/util/b$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/b$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/view/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/view/a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:J

    iput-object v5, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/b$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "com.facebook.ads.internal.FacebookBannerAdapter"

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/util/f;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    sget-object v1, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerError(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/AdError;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/view/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    new-instance v3, Lcom/facebook/ads/internal/adapters/i$1;

    invoke-direct {v3, p0, v2}, Lcom/facebook/ads/internal/adapters/i$1;-><init>(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/adapters/l;)V

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    new-instance v0, Lcom/facebook/ads/internal/adapters/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    new-instance v4, Lcom/facebook/ads/internal/adapters/i$2;

    invoke-direct {v4, p0}, Lcom/facebook/ads/internal/adapters/i$2;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/internal/adapters/m;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/m;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/l;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    invoke-static {}, Lcom/facebook/ads/internal/util/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/BannerAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/adapters/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/m;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/Map;

    const-string v1, "definition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/dto/c;

    new-instance v1, Lcom/facebook/ads/internal/adapters/k;

    invoke-direct {v1}, Lcom/facebook/ads/internal/adapters/k;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    new-instance v3, Lcom/facebook/ads/internal/adapters/i$3;

    invoke-direct {v3, p0, v0}, Lcom/facebook/ads/internal/adapters/i$3;-><init>(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/dto/c;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/q;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/i;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:J

    return-wide v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/util/b$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/b$a;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/view/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/view/a;

    return-object v0
.end method


# virtual methods
.method public loadBannerAd(Landroid/content/Context;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/adapters/BannerAdapterListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/AdSize;",
            "Lcom/facebook/ads/internal/adapters/BannerAdapterListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->h:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/i;->d:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/i;->e:Ljava/util/Map;

    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;->b()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lcom/facebook/ads/internal/view/b;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/view/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/view/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a;->b()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/view/a;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/k;->onDestroy()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    :cond_2
    return-void
.end method

.method public onViewableImpression()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/m;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mil"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/k;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

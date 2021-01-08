.class public Lcom/facebook/ads/internal/adapters/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Lcom/facebook/ads/internal/adapters/e$a;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/facebook/ads/internal/adapters/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/adapters/e$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/e$1;-><init>(Lcom/facebook/ads/internal/adapters/e;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    iput p3, p0, Lcom/facebook/ads/internal/adapters/e;->c:I

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/e$a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/e;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/e;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/e$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/e$a;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/adapters/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

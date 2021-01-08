.class public Lcom/facebook/ads/internal/view/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Lcom/facebook/ads/internal/view/i$a;

.field private final e:Lcom/facebook/ads/internal/view/i$a;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/internal/view/i;->a:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/facebook/ads/internal/view/i;->b:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/facebook/ads/internal/view/i;->c:I

    new-instance v0, Lcom/facebook/ads/internal/view/i$a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/view/i$a;-><init>(Lcom/facebook/ads/internal/view/i;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/i$a;

    new-instance v0, Lcom/facebook/ads/internal/view/i$a;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/internal/view/i$a;-><init>(Lcom/facebook/ads/internal/view/i;Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i$a;->a(Z)Lcom/facebook/ads/internal/view/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/i;->e:Lcom/facebook/ads/internal/view/i$a;

    const-string v0, "4.1.2"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/i;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/i;->a:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/i;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/i;->b:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/i;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/i;->c:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/i;->f:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/view/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->d:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i;->e:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i$a;->a()V

    return-object p0
.end method

.method public a(I)Lcom/facebook/ads/internal/view/i;
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/facebook/ads/internal/view/i;->a:I

    return-object p0
.end method

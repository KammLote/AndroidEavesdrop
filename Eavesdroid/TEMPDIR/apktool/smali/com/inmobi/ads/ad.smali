.class final Lcom/inmobi/ads/ad;
.super Landroid/support/v4/view/PagerAdapter;
.source "NativeStrandDataSource.java"

# interfaces
.implements Lcom/inmobi/ads/ap;


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Landroid/os/Handler;


# instance fields
.field private b:Z

.field private final c:Lcom/inmobi/ads/NativeV2DataModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/inmobi/ads/ae;

.field private f:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ad;->a:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/ad;->e:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/inmobi/ads/ad;->c:Lcom/inmobi/ads/NativeV2DataModel;

    .line 66
    iput-object p2, p0, Lcom/inmobi/ads/ad;->d:Lcom/inmobi/ads/ae;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ad;)Lcom/inmobi/ads/ae;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/ads/ad;->d:Lcom/inmobi/ads/ae;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/ad;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/inmobi/ads/ad;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
    .locals 7
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/ad;->d:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p2, p3}, Lcom/inmobi/ads/ae;->a(Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 125
    iget-object v0, p0, Lcom/inmobi/ads/ad;->d:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->b()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 127
    new-instance v0, Lcom/inmobi/ads/ad$2;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ad$2;-><init>(Lcom/inmobi/ads/ad;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)V

    .line 141
    iget-object v1, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/inmobi/ads/ad;->e:Landroid/os/Handler;

    mul-int/lit8 v2, v6, 0x32

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    return-object v3
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->b:Z

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 151
    sget-object v2, Lcom/inmobi/ads/ad;->e:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    sget-object v1, Lcom/inmobi/ads/ad;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v1, Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared pending task at position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ad;->e:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/ad$1;

    invoke-direct {v1, p0, p3}, Lcom/inmobi/ads/ad$1;-><init>(Lcom/inmobi/ads/ad;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/inmobi/ads/ad;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->j()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    :goto_1
    return v0

    .line 71
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ad;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflating card at index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/ads/ad;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/NativeV2DataModel;->b(I)Lcom/inmobi/ads/aj;

    move-result-object v1

    .line 93
    if-nez v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/inmobi/ads/ad;->a(ILandroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 97
    invoke-static {v1, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

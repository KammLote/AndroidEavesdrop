.class public Lcom/inmobi/commons/core/a/a;
.super Ljava/lang/Object;
.source "PicassoWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/squareup/picasso/Picasso;

.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/commons/core/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/a/a;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/a/a;->c:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/a/a;->d:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/inmobi/commons/core/a/a$1;

    invoke-direct {v0}, Lcom/inmobi/commons/core/a/a$1;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/a/a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/squareup/picasso/Picasso;
    .locals 3

    .prologue
    .line 45
    sget-object v1, Lcom/inmobi/commons/core/a/a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/commons/core/a/a;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/inmobi/commons/core/a/a;->d:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/a/a;->b:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/a/a;->b:Lcom/squareup/picasso/Picasso;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v2, Lcom/inmobi/commons/core/a/a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 53
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lcom/inmobi/commons/core/a/a;->b:Lcom/squareup/picasso/Picasso;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/squareup/picasso/Picasso;)Lcom/squareup/picasso/Picasso;
    .locals 0

    .prologue
    .line 21
    sput-object p0, Lcom/inmobi/commons/core/a/a;->b:Lcom/squareup/picasso/Picasso;

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 32
    :try_start_0
    const-class v0, Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/core/a/a;->b:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method static synthetic b(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/inmobi/commons/core/a/a;->c(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/core/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    move v1, v2

    :goto_0
    sget-object v0, Lcom/inmobi/commons/core/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 60
    sget-object v0, Lcom/inmobi/commons/core/a/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v2, 0x1

    .line 67
    :cond_0
    return v2

    .line 59
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/core/a/a;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/core/a/a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0
.end method

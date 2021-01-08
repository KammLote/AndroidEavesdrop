.class public final Lcom/google/android/gms/internal/zzavb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzavf;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final zzarM:Landroid/content/Context;

.field private final zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzauQ:Landroid/net/Uri;

.field private zzauR:Lcom/google/android/gms/internal/zzavd;

.field private zzauS:Lcom/google/android/gms/internal/zzavg;

.field private zzauT:Z

.field private zzauU:Lcom/google/android/gms/internal/zzavc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzavb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavb;->zzarM:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavb;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance v0, Lcom/google/android/gms/internal/zzavg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzavg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauS:Lcom/google/android/gms/internal/zzavg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavb;->reset()V

    return-void
.end method

.method private final reset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzavd;->cancel(Z)Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzavb;->zzauQ:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzavb;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauT:Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavb;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauU:Lcom/google/android/gms/internal/zzavc;

    return-void
.end method

.method public final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavb;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauU:Lcom/google/android/gms/internal/zzavc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauU:Lcom/google/android/gms/internal/zzavc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavb;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzavc;->zzc(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzavc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavb;->zzauU:Lcom/google/android/gms/internal/zzavc;

    return-void
.end method

.method public final zzm(Landroid/net/Uri;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavb;->reset()V

    move v4, v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauQ:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavb;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavb;->zzauQ:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzarM:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzavd;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/zzavd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzavf;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavb;->zzauQ:Landroid/net/Uri;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v6, [Landroid/net/Uri;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzavd;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavb;->zzarM:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/zzavd;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzavd;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzavf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauR:Lcom/google/android/gms/internal/zzavd;

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzavb;->zzauT:Z

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0
.end method

.class final Lcom/google/android/gms/internal/zzavn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzavc;


# instance fields
.field private synthetic zzave:Lcom/google/android/gms/internal/zzavm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavn;->zzave:Lcom/google/android/gms/internal/zzavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavn;->zzave:Lcom/google/android/gms/internal/zzavm;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzavm;->zza(Lcom/google/android/gms/internal/zzavm;Landroid/graphics/Bitmap;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v4, v3, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-direct {v5, v6, v4, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, v0, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object v0, v1

    goto :goto_0
.end method

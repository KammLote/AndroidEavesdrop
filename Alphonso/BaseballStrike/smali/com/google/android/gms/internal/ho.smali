.class public abstract Lcom/google/android/gms/internal/ho;
.super Ljava/lang/Object;


# instance fields
.field private zzbUr:Ljava/lang/Runnable;

.field private zzbUs:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method final zzEd()Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUs:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hp;-><init>(Lcom/google/android/gms/internal/ho;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUs:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUs:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method final zzEe()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUr:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hq;-><init>(Lcom/google/android/gms/internal/ho;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUr:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ho;->zzbUr:Ljava/lang/Runnable;

    return-object v0
.end method

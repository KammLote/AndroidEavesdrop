.class final Lcom/google/android/gms/internal/zzcwv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic zzbJn:Lcom/google/android/gms/internal/zzcwm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwv;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzf(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcww;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcww;-><init>(Lcom/google/android/gms/internal/zzcwv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
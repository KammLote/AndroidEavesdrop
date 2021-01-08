.class final Lcom/google/android/gms/internal/mx;
.super Lcom/google/android/gms/internal/yl;


# instance fields
.field private synthetic zzbZC:Lcom/google/android/gms/internal/wf;

.field private synthetic zzbZD:Lcom/google/android/gms/internal/mw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mw;Lcom/google/android/gms/internal/wf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->zzbZD:Lcom/google/android/gms/internal/mw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mx;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/yl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/yl;->zzh(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzbZC:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/wf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/mx;->zzbZD:Lcom/google/android/gms/internal/mw;

    invoke-static {v2}, Lcom/google/android/gms/internal/mw;->zza(Lcom/google/android/gms/internal/mw;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/my;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/my;-><init>(Lcom/google/android/gms/internal/mx;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mx;->zzFU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

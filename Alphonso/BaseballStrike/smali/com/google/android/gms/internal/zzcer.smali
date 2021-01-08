.class final Lcom/google/android/gms/internal/zzcer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbpB:Lcom/google/android/gms/internal/zzceq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzceq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzceq;->zza(Lcom/google/android/gms/internal/zzceq;)Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwE()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzcgf;->zzj(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->zzbo()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zza(Lcom/google/android/gms/internal/zzceq;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzceq;->zzb(Lcom/google/android/gms/internal/zzceq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcer;->zzbpB:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->run()V

    goto :goto_0
.end method

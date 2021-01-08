.class final Lcom/google/android/gms/internal/zzcii;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zzd(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcfc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcic;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcfc;->zzb(Lcom/google/android/gms/internal/zzceg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zze(Lcom/google/android/gms/internal/zzcic;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcii;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

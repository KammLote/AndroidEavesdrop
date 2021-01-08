.class final Lcom/google/android/gms/internal/zzcik;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcic;

.field private synthetic zzbud:Z

.field private synthetic zzbue:Z

.field private synthetic zzbuf:Lcom/google/android/gms/internal/zzcej;

.field private synthetic zzbug:Lcom/google/android/gms/internal/zzcej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcic;ZZLcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/internal/zzcej;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbud:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcik;->zzbue:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcik;->zzbuf:Lcom/google/android/gms/internal/zzcej;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcik;->zzbug:Lcom/google/android/gms/internal/zzcej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zzd(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcfc;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbud:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbue:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/internal/zzcfc;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zze(Lcom/google/android/gms/internal/zzcic;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbuf:Lcom/google/android/gms/internal/zzcej;

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbug:Lcom/google/android/gms/internal/zzcej;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcej;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbuf:Lcom/google/android/gms/internal/zzcej;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcic;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfk;->zzyE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzcfc;->zza(Lcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/internal/zzceg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcik;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcik;->zzbuf:Lcom/google/android/gms/internal/zzcej;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzcfc;->zzb(Lcom/google/android/gms/internal/zzcej;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

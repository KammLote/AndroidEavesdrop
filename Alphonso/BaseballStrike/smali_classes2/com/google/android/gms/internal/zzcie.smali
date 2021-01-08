.class final Lcom/google/android/gms/internal/zzcie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcic;

.field private synthetic zzbub:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcic;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zzd(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcfc;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcic;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzcfc;->zzc(Lcom/google/android/gms/internal/zzceg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcic;->zzwt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzchk;->zzee(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcic;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfv;->zzbrq:Lcom/google/android/gms/internal/zzcga;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzcga;->zzef(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcic;->zze(Lcom/google/android/gms/internal/zzcic;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcie;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcie;->zzbub:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

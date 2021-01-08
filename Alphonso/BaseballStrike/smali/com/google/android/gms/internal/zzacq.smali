.class public final Lcom/google/android/gms/internal/zzacq;
.super Lcom/google/android/gms/internal/zzacy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzWq:Lcom/google/android/gms/internal/zzacr;

.field private final zztY:Lcom/google/android/gms/internal/zzajd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzacr;

    invoke-static {}, Lcom/google/android/gms/internal/zziv;->zzdk()Lcom/google/android/gms/internal/zziv;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzacr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/google/android/gms/internal/zzacq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzacr;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzacr;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzacy;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacq;->zztY:Lcom/google/android/gms/internal/zzajd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzacq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzacq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzacq;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzacr;->setImmersiveMode(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->zzgP()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadc;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzacr;->zza(Lcom/google/android/gms/internal/zzadc;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadi;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzacr;->zza(Lcom/google/android/gms/internal/zzadi;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->pause()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzacr;->onContextChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->resume()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to extract updated context."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacq;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacq;->zzWq:Lcom/google/android/gms/internal/zzacr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacr;->destroy()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

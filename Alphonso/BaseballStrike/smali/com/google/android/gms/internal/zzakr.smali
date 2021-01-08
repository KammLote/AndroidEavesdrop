.class public final Lcom/google/android/gms/internal/zzakr;
.super Lcom/google/android/gms/internal/zzkt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzJJ:Lcom/google/android/gms/internal/zzajz;

.field private zzacA:F

.field private final zzact:Z

.field private final zzacu:F

.field private zzacv:I

.field private zzacw:Lcom/google/android/gms/internal/zzkv;

.field private zzacx:Z

.field private zzacy:Z

.field private zzacz:F

.field private zzsh:Z

.field private zzsi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzajz;FZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkt;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakr;->zzacy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzakr;->zzsh:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakr;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    iput p2, p0, Lcom/google/android/gms/internal/zzakr;->zzacu:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzakr;->zzact:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzakr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzakr;->zzacx:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzajz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakr;->zzJJ:Lcom/google/android/gms/internal/zzajz;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzakr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private final zzc(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    new-instance v1, Lcom/google/android/gms/internal/zzaks;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzaks;-><init>(Lcom/google/android/gms/internal/zzakr;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzakr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacx:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzakr;)Lcom/google/android/gms/internal/zzkv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacw:Lcom/google/android/gms/internal/zzkv;

    return-object v0
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacA:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPlaybackState()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacv:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzact:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzsi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isMuted()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacy:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final mute(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "mute"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzakr;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzakr;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzakr;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FIZF)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzakr;->zzacz:F

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzakr;->zzacy:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzakr;->zzacy:Z

    iget v2, p0, Lcom/google/android/gms/internal/zzakr;->zzacv:I

    iput p2, p0, Lcom/google/android/gms/internal/zzakr;->zzacv:I

    iput p4, p0, Lcom/google/android/gms/internal/zzakr;->zzacA:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    new-instance v0, Lcom/google/android/gms/internal/zzakt;

    move-object v1, p0

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzakt;-><init>(Lcom/google/android/gms/internal/zzakr;IIZZ)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkv;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzakr;->zzacw:Lcom/google/android/gms/internal/zzkv;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzlx;)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzlx;->zzBL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzsh:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzlx;->zzBM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzakr;->zzsi:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "initialState"

    const-string v3, "muteStart"

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzlx;->zzBL:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    const-string v4, "customControlsRequested"

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzlx;->zzBM:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v3, v0, v4, v1}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzakr;->zzc(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method public final zzdv()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacu:F

    return v0
.end method

.method public final zzdw()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzakr;->zzacz:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

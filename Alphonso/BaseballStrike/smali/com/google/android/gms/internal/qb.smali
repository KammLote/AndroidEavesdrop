.class public Lcom/google/android/gms/internal/qb;
.super Ljava/lang/Object;


# instance fields
.field protected cacheSize:J

.field protected zzbZw:Lcom/google/firebase/FirebaseApp;

.field private zzcaG:Lcom/google/android/gms/internal/wg;

.field protected zzcaH:Z

.field private zzcaJ:Ljava/lang/String;

.field private zzccD:Z

.field protected zzccP:Lcom/google/android/gms/internal/qh;

.field protected zzccQ:Lcom/google/android/gms/internal/pt;

.field protected zzccR:Lcom/google/android/gms/internal/sa;

.field protected zzccS:Ljava/lang/String;

.field protected zzccT:Lcom/google/android/gms/internal/wh;

.field private zzccU:Z

.field private zzccV:Lcom/google/android/gms/internal/qq;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/wh;->zzchG:Lcom/google/android/gms/internal/wh;

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccT:Lcom/google/android/gms/internal/wh;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/qb;->cacheSize:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/qb;->zzccD:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/qb;->zzccU:Z

    return-void
.end method

.method private final zzFU()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccR:Lcom/google/android/gms/internal/sa;

    instance-of v1, v0, Lcom/google/android/gms/internal/yl;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/yl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yl;->zzFU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final zzGL()Lcom/google/android/gms/internal/qq;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/yg;->zzJA()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGM()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/qi;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/qi;->zzcda:Lcom/google/android/gms/internal/qi;

    sget-object v1, Lcom/google/android/gms/internal/qi;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    new-instance v2, Lcom/google/android/gms/internal/qk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/qk;-><init>(Lcom/google/android/gms/internal/qi;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xv;->zza(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/xu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/qm;->zzcde:Lcom/google/android/gms/internal/qm;

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    goto :goto_0
.end method

.method private final declared-synchronized zzGM()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mw;

    iget-object v1, p0, Lcom/google/android/gms/internal/qb;->zzbZw:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mw;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccP:Lcom/google/android/gms/internal/qh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qh;->shutdown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccR:Lcom/google/android/gms/internal/sa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sa;->shutdown()V

    return-void
.end method

.method public final zzFV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzcaH:Z

    return v0
.end method

.method final declared-synchronized zzGC()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccD:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccD:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzcaG:Lcom/google/android/gms/internal/wg;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qb;->zzccT:Lcom/google/android/gms/internal/wh;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/gms/internal/qq;->zza(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/wh;Ljava/util/List;)Lcom/google/android/gms/internal/wg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzcaG:Lcom/google/android/gms/internal/wg;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzcaJ:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qq;->zzc(Lcom/google/android/gms/internal/qb;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "5/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzcaJ:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccP:Lcom/google/android/gms/internal/qh;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qq;->zza(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/qh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccP:Lcom/google/android/gms/internal/qh;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccR:Lcom/google/android/gms/internal/sa;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qq;->zzb(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/sa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccR:Lcom/google/android/gms/internal/sa;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccS:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccS:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccQ:Lcom/google/android/gms/internal/pt;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzFU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/qq;->zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccQ:Lcom/google/android/gms/internal/pt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzGN()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccP:Lcom/google/android/gms/internal/qh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qh;->restart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccR:Lcom/google/android/gms/internal/sa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sa;->restart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccU:Z

    :cond_0
    return-void
.end method

.method protected final zzGO()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzccD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final zzGP()Lcom/google/android/gms/internal/wh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccT:Lcom/google/android/gms/internal/wh;

    return-object v0
.end method

.method public final zzGQ()Lcom/google/android/gms/internal/oi;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/oi;

    iget-object v1, p0, Lcom/google/android/gms/internal/qb;->zzcaG:Lcom/google/android/gms/internal/wg;

    iget-object v3, p0, Lcom/google/android/gms/internal/qb;->zzccQ:Lcom/google/android/gms/internal/pt;

    new-instance v2, Lcom/google/android/gms/internal/qc;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/qc;-><init>(Lcom/google/android/gms/internal/pt;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzFU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/qb;->zzcaH:Z

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/qb;->zzcaJ:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/oi;-><init>(Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/og;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzGR()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/qb;->cacheSize:J

    return-wide v0
.end method

.method public final zzGS()Lcom/google/android/gms/internal/qh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccP:Lcom/google/android/gms/internal/qh;

    return-object v0
.end method

.method public final zzGT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccS:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/on;)Lcom/google/android/gms/internal/om;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/qb;->zzGL()Lcom/google/android/gms/internal/qq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/qb;->zzGQ()Lcom/google/android/gms/internal/oi;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/qq;->zza(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/on;)Lcom/google/android/gms/internal/om;

    move-result-object v0

    return-object v0
.end method

.method public final zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wf;

    iget-object v1, p0, Lcom/google/android/gms/internal/qb;->zzcaG:Lcom/google/android/gms/internal/wg;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/wf;-><init>(Lcom/google/android/gms/internal/wg;Ljava/lang/String;)V

    return-object v0
.end method

.method final zzgQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ue;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qb;->zzcaH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzccV:Lcom/google/android/gms/internal/qq;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/qq;->zza(Lcom/google/android/gms/internal/qb;Ljava/lang/String;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ud;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final zzht()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qb;->zzcaJ:Ljava/lang/String;

    return-object v0
.end method

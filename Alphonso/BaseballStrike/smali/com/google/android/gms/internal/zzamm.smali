.class public final Lcom/google/android/gms/internal/zzamm;
.super Lcom/google/android/gms/internal/zzamg;


# instance fields
.field private final zzagg:Lcom/google/android/gms/internal/zzamo;

.field private zzagh:Lcom/google/android/gms/internal/zzanx;

.field private final zzagi:Lcom/google/android/gms/internal/zzanl;

.field private zzagj:Lcom/google/android/gms/internal/zzaon;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzami;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamg;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzami;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaon;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagj:Lcom/google/android/gms/internal/zzaon;

    new-instance v0, Lcom/google/android/gms/internal/zzamo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzamo;-><init>(Lcom/google/android/gms/internal/zzamm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagg:Lcom/google/android/gms/internal/zzamo;

    new-instance v0, Lcom/google/android/gms/internal/zzamn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzamn;-><init>(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzami;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagi:Lcom/google/android/gms/internal/zzanl;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    const-string v0, "Disconnected from device AnalyticsService"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzamm;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkv()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->zzkn()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamm;)Lcom/google/android/gms/internal/zzamo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagg:Lcom/google/android/gms/internal/zzamo;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamm;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamm;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzanx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamm;->zza(Lcom/google/android/gms/internal/zzanx;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzanx;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamm;->zzkP()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkv()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->onServiceConnected()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzamm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamm;->zzkQ()V

    return-void
.end method

.method private final zzkP()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagj:Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagi:Lcom/google/android/gms/internal/zzanl;

    sget-object v0, Lcom/google/android/gms/internal/zzanr;->zzahO:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzans;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzanl;->zzs(J)V

    return-void
.end method

.method private final zzkQ()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamm;->zzbo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public final connect()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkD()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagg:Lcom/google/android/gms/internal/zzamo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamo;->zzkR()Lcom/google/android/gms/internal/zzanx;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamm;->zzkP()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkD()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzrU()Lcom/google/android/gms/common/stats/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagg:Lcom/google/android/gms/internal/zzamo;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkv()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->zzkn()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzanw;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanw;->zzlI()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzanj;->zzlu()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanw;->zzdV()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzanw;->zzlG()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzanx;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamm;->zzkP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzanj;->zzlv()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzamm;->zzbo(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method protected final zzjD()V
    .locals 0

    return-void
.end method

.method public final zzkO()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzl;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamm;->zzkD()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamm;->zzagh:Lcom/google/android/gms/internal/zzanx;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzanx;->zzkk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamm;->zzkP()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Failed to clear hits from AnalyticsService"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzamm;->zzbo(Ljava/lang/String;)V

    goto :goto_0
.end method

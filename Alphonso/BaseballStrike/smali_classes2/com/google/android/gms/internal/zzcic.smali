.class public final Lcom/google/android/gms/internal/zzcic;
.super Lcom/google/android/gms/internal/zzchi;


# instance fields
.field private final zzbtT:Lcom/google/android/gms/internal/zzcip;

.field private zzbtU:Lcom/google/android/gms/internal/zzcfc;

.field private zzbtV:Ljava/lang/Boolean;

.field private final zzbtW:Lcom/google/android/gms/internal/zzceq;

.field private final zzbtX:Lcom/google/android/gms/internal/zzcje;

.field private final zzbtY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbtZ:Lcom/google/android/gms/internal/zzceq;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzcgk;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzcje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgk;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcje;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtX:Lcom/google/android/gms/internal/zzcje;

    new-instance v0, Lcom/google/android/gms/internal/zzcip;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzcic;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtT:Lcom/google/android/gms/internal/zzcip;

    new-instance v0, Lcom/google/android/gms/internal/zzcid;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcid;-><init>(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/internal/zzcgk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtW:Lcom/google/android/gms/internal/zzceq;

    new-instance v0, Lcom/google/android/gms/internal/zzcih;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcih;-><init>(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/internal/zzcgk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtZ:Lcom/google/android/gms/internal/zzceq;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzla()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/internal/zzcfc;)Lcom/google/android/gms/internal/zzcfc;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcip;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtT:Lcom/google/android/gms/internal/zzcip;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcic;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcic;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcic;->zzzl()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcic;->zzkQ()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcic;)Lcom/google/android/gms/internal/zzcfc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcic;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcic;->zzkP()V

    return-void
.end method

.method private final zzkP()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtX:Lcom/google/android/gms/internal/zzcje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcje;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtW:Lcom/google/android/gms/internal/zzceq;

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxB()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zzs(J)V

    return-void
.end method

.method private final zzkQ()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->disconnect()V

    goto :goto_0
.end method

.method private final zzm(Ljava/lang/Runnable;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxJ()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtZ:Lcom/google/android/gms/internal/zzceq;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zzs(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzla()V

    goto :goto_0
.end method

.method private final zzzl()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtZ:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zza;->zzrU()Lcom/google/android/gms/common/stats/zza;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zzbtT:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzcfc;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->zzbtU:Lcom/google/android/gms/internal/zzcfc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcic;->zzkP()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcic;->zzzl()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/zzcfc;Lcom/google/android/gms/common/internal/safeparcel/zza;)V
    .locals 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    const/16 v7, 0x64

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwp()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxN()I

    move v6, v4

    move v5, v7

    :goto_0
    const/16 v0, 0x3e9

    if-ge v6, v0, :cond_5

    if-ne v5, v7, :cond_5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwy()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/zzcfg;->zzbp(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    :goto_1
    if-eqz p2, :cond_0

    if-ge v5, v7, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/google/android/gms/common/internal/safeparcel/zza;

    instance-of v9, v2, Lcom/google/android/gms/internal/zzcey;

    if-eqz v9, :cond_1

    :try_start_0
    check-cast v2, Lcom/google/android/gms/internal/zzcey;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcfk;->zzyE()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v9

    invoke-interface {p1, v2, v9}, Lcom/google/android/gms/internal/zzcfc;->zza(Lcom/google/android/gms/internal/zzcey;Lcom/google/android/gms/internal/zzceg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v9, v2, Lcom/google/android/gms/internal/zzcjh;

    if-eqz v9, :cond_2

    :try_start_1
    check-cast v2, Lcom/google/android/gms/internal/zzcjh;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcfk;->zzyE()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v9

    invoke-interface {p1, v2, v9}, Lcom/google/android/gms/internal/zzcfc;->zza(Lcom/google/android/gms/internal/zzcjh;Lcom/google/android/gms/internal/zzceg;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v9, v2, Lcom/google/android/gms/internal/zzcej;

    if-eqz v9, :cond_3

    :try_start_2
    check-cast v2, Lcom/google/android/gms/internal/zzcej;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v9

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcfk;->zzyE()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzcff;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceg;

    move-result-object v9

    invoke-interface {p1, v2, v9}, Lcom/google/android/gms/internal/zzcfc;->zza(Lcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/internal/zzceg;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    move v5, v4

    goto/16 :goto_1
.end method

.method protected final zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcig;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcig;-><init>(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcie;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcie;-><init>(Lcom/google/android/gms/internal/zzcic;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcej;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcil;-><init>(Lcom/google/android/gms/internal/zzcic;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcjh;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcim;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcim;-><init>(Lcom/google/android/gms/internal/zzcic;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcjh;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcio;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcio;-><init>(Lcom/google/android/gms/internal/zzcic;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/zzcjh;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwy()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfg;->zza(Lcom/google/android/gms/internal/zzcjh;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzcin;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/zzcin;-><init>(Lcom/google/android/gms/internal/zzcic;ZLcom/google/android/gms/internal/zzcjh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final zzc(Lcom/google/android/gms/internal/zzcey;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwy()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfg;->zza(Lcom/google/android/gms/internal/zzcey;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzcij;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcij;-><init>(Lcom/google/android/gms/internal/zzcic;ZZLcom/google/android/gms/internal/zzcey;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected final zzf(Lcom/google/android/gms/internal/zzcej;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwy()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcfg;->zzc(Lcom/google/android/gms/internal/zzcej;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/zzcej;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzcej;-><init>(Lcom/google/android/gms/internal/zzcej;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcik;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcik;-><init>(Lcom/google/android/gms/internal/zzcic;ZZLcom/google/android/gms/internal/zzcej;Lcom/google/android/gms/internal/zzcej;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic zzjC()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    return-void
.end method

.method protected final zzjD()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzkq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method final zzla()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfv;->zzyI()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "State of service unknown"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/zze;->zzoW()Lcom/google/android/gms/common/zze;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zze;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfv;->zzak(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtV:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzbtT:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->zzzm()V

    goto :goto_0

    :sswitch_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :sswitch_1
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :sswitch_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyC()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :sswitch_4
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :goto_3
    if-eqz v1, :cond_4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxE()Z

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zzbtT:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcip;->zzk(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic zzwA()Lcom/google/android/gms/internal/zzcfi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwA()Lcom/google/android/gms/internal/zzcfi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwB()Lcom/google/android/gms/internal/zzcjk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwB()Lcom/google/android/gms/internal/zzcjk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwC()Lcom/google/android/gms/internal/zzcge;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwC()Lcom/google/android/gms/internal/zzcge;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwD()Lcom/google/android/gms/internal/zzciz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwD()Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwE()Lcom/google/android/gms/internal/zzcgf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwE()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwF()Lcom/google/android/gms/internal/zzcfk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwG()Lcom/google/android/gms/internal/zzcfv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwH()Lcom/google/android/gms/internal/zzcel;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwH()Lcom/google/android/gms/internal/zzcel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwo()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwo()V

    return-void
.end method

.method public final bridge synthetic zzwp()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwp()V

    return-void
.end method

.method public final bridge synthetic zzwq()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwq()V

    return-void
.end method

.method public final bridge synthetic zzwr()Lcom/google/android/gms/internal/zzceb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwr()Lcom/google/android/gms/internal/zzceb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/internal/zzcei;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzws()Lcom/google/android/gms/internal/zzcei;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwt()Lcom/google/android/gms/internal/zzchk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwu()Lcom/google/android/gms/internal/zzcff;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwu()Lcom/google/android/gms/internal/zzcff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwv()Lcom/google/android/gms/internal/zzces;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwv()Lcom/google/android/gms/internal/zzces;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzww()Lcom/google/android/gms/internal/zzcic;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzww()Lcom/google/android/gms/internal/zzcic;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwx()Lcom/google/android/gms/internal/zzchy;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwx()Lcom/google/android/gms/internal/zzchy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwy()Lcom/google/android/gms/internal/zzcfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwy()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzwz()Lcom/google/android/gms/internal/zzcem;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwz()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    return-object v0
.end method

.method protected final zzzj()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcii;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcii;-><init>(Lcom/google/android/gms/internal/zzcic;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzzk()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcic;->zzkD()V

    new-instance v0, Lcom/google/android/gms/internal/zzcif;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcif;-><init>(Lcom/google/android/gms/internal/zzcic;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcic;->zzm(Ljava/lang/Runnable;)V

    return-void
.end method

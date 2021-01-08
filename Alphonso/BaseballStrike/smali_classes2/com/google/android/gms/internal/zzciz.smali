.class public final Lcom/google/android/gms/internal/zzciz;
.super Lcom/google/android/gms/internal/zzchi;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzbur:J

.field private final zzbus:Lcom/google/android/gms/internal/zzceq;

.field private final zzbut:Lcom/google/android/gms/internal/zzceq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgk;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcja;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciz;->zzboe:Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcja;-><init>(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcgk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbus:Lcom/google/android/gms/internal/zzceq;

    new-instance v0, Lcom/google/android/gms/internal/zzcjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciz;->zzboe:Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcjb;-><init>(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcgk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzciz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzciz;->zzzp()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzciz;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzciz;->zzae(J)V

    return-void
.end method

.method private final zzae(J)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzciz;->zzzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbus:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfv;->zzbry:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfv;->zzbrA:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrz:Lcom/google/android/gms/internal/zzcfx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfx;->set(Z)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrz:Lcom/google/android/gms/internal/zzcfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfx;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbus:Lcom/google/android/gms/internal/zzceq;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfv;->zzbrx:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zzs(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    const-wide/32 v2, 0x36ee80

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zzs(J)V

    goto :goto_0
.end method

.method private final zzaf(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzciz;->zzzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbus:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzciz;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzciz;->zzaf(J)V

    return-void
.end method

.method private final zzzn()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzciz;->mHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzzp()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzciz;->zzap(Z)Z

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwr()Lcom/google/android/gms/internal/zzceb;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceb;->zzJ(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzap(Z)Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzciz;->zzkD()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcfv;->zzbrA:Lcom/google/android/gms/internal/zzcfy;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwx()Lcom/google/android/gms/internal/zzchy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchy;->zzzh()Lcom/google/android/gms/internal/zzcib;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzchy;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    const-string v3, "auto"

    const-string v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/internal/zzchk;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbur:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceq;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciz;->zzbut:Lcom/google/android/gms/internal/zzceq;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcfv;->zzbrB:Lcom/google/android/gms/internal/zzcfy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfy;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceq;->zzs(J)V

    const/4 v0, 0x1

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

.method protected final zzzo()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrz:Lcom/google/android/gms/internal/zzcfx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfx;->set(Z)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrA:Lcom/google/android/gms/internal/zzcfy;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    return-void
.end method

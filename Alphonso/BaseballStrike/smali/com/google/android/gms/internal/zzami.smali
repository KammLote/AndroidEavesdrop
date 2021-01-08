.class public Lcom/google/android/gms/internal/zzami;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzafM:Lcom/google/android/gms/internal/zzami;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzafN:Landroid/content/Context;

.field private final zzafO:Lcom/google/android/gms/internal/zzanj;

.field private final zzafP:Lcom/google/android/gms/internal/zzaob;

.field private final zzafQ:Lcom/google/android/gms/analytics/zzl;

.field private final zzafR:Lcom/google/android/gms/internal/zzalx;

.field private final zzafS:Lcom/google/android/gms/internal/zzano;

.field private final zzafT:Lcom/google/android/gms/internal/zzaos;

.field private final zzafU:Lcom/google/android/gms/internal/zzaof;

.field private final zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzafW:Lcom/google/android/gms/internal/zzana;

.field private final zzafX:Lcom/google/android/gms/internal/zzalw;

.field private final zzafY:Lcom/google/android/gms/internal/zzamt;

.field private final zzafZ:Lcom/google/android/gms/internal/zzann;

.field private final zzvy:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzamk;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamk;->zzkE()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzami;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafN:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzvy:Lcom/google/android/gms/common/util/zze;

    new-instance v1, Lcom/google/android/gms/internal/zzanj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzanj;-><init>(Lcom/google/android/gms/internal/zzami;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafO:Lcom/google/android/gms/internal/zzanj;

    new-instance v1, Lcom/google/android/gms/internal/zzaob;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaob;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaob;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafP:Lcom/google/android/gms/internal/zzaob;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzami;->zzkr()Lcom/google/android/gms/internal/zzaob;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzamh;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaob;->zzbq(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzaof;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaof;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaof;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    new-instance v1, Lcom/google/android/gms/internal/zzaos;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaos;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaos;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafT:Lcom/google/android/gms/internal/zzaos;

    new-instance v1, Lcom/google/android/gms/internal/zzalx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzalx;-><init>(Lcom/google/android/gms/internal/zzami;Lcom/google/android/gms/internal/zzamk;)V

    new-instance v2, Lcom/google/android/gms/internal/zzana;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzana;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v3, Lcom/google/android/gms/internal/zzalw;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzalw;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v4, Lcom/google/android/gms/internal/zzamt;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzamt;-><init>(Lcom/google/android/gms/internal/zzami;)V

    new-instance v5, Lcom/google/android/gms/internal/zzann;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/zzann;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzl;->zzae(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/zzamj;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/zzamj;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/analytics/zzl;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzana;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzami;->zzafW:Lcom/google/android/gms/internal/zzana;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzalw;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzami;->zzafX:Lcom/google/android/gms/internal/zzalw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzamt;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzami;->zzafY:Lcom/google/android/gms/internal/zzamt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzann;->initialize()V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzami;->zzafZ:Lcom/google/android/gms/internal/zzann;

    new-instance v2, Lcom/google/android/gms/internal/zzano;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzano;-><init>(Lcom/google/android/gms/internal/zzami;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzano;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzami;->zzafS:Lcom/google/android/gms/internal/zzano;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzalx;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzami;->zzafR:Lcom/google/android/gms/internal/zzalx;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzalx;->start()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzamg;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamg;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzami;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzami;->zzafM:Lcom/google/android/gms/internal/zzami;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzami;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzami;->zzafM:Lcom/google/android/gms/internal/zzami;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzamk;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzamk;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzami;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzami;-><init>(Lcom/google/android/gms/internal/zzamk;)V

    sput-object v5, Lcom/google/android/gms/internal/zzami;->zzafM:Lcom/google/android/gms/internal/zzami;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzjo()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/zzanr;->zzahU:Lcom/google/android/gms/internal/zzans;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzans;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzami;->zzkr()Lcom/google/android/gms/internal/zzaob;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/zzaob;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzami;->zzafM:Lcom/google/android/gms/internal/zzami;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final zzkB()Lcom/google/android/gms/internal/zzamt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafY:Lcom/google/android/gms/internal/zzamt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafY:Lcom/google/android/gms/internal/zzamt;

    return-object v0
.end method

.method public final zzkC()Lcom/google/android/gms/internal/zzann;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafZ:Lcom/google/android/gms/internal/zzann;

    return-object v0
.end method

.method public final zzkE()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafN:Landroid/content/Context;

    return-object v0
.end method

.method public final zzkF()Lcom/google/android/gms/internal/zzaob;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafP:Lcom/google/android/gms/internal/zzaob;

    return-object v0
.end method

.method public final zzkG()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafV:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzkH()Lcom/google/android/gms/internal/zzaof;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    goto :goto_0
.end method

.method public final zzkI()Lcom/google/android/gms/internal/zzalw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafX:Lcom/google/android/gms/internal/zzalw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafX:Lcom/google/android/gms/internal/zzalw;

    return-object v0
.end method

.method public final zzkJ()Lcom/google/android/gms/internal/zzana;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafW:Lcom/google/android/gms/internal/zzana;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafW:Lcom/google/android/gms/internal/zzana;

    return-object v0
.end method

.method public final zzkq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzvy:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method public final zzkr()Lcom/google/android/gms/internal/zzaob;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafP:Lcom/google/android/gms/internal/zzaob;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafP:Lcom/google/android/gms/internal/zzaob;

    return-object v0
.end method

.method public final zzks()Lcom/google/android/gms/internal/zzanj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafO:Lcom/google/android/gms/internal/zzanj;

    return-object v0
.end method

.method public final zzkt()Lcom/google/android/gms/analytics/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafQ:Lcom/google/android/gms/analytics/zzl;

    return-object v0
.end method

.method public final zzkv()Lcom/google/android/gms/internal/zzalx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafR:Lcom/google/android/gms/internal/zzalx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafR:Lcom/google/android/gms/internal/zzalx;

    return-object v0
.end method

.method public final zzkw()Lcom/google/android/gms/internal/zzano;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafS:Lcom/google/android/gms/internal/zzano;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafS:Lcom/google/android/gms/internal/zzano;

    return-object v0
.end method

.method public final zzkx()Lcom/google/android/gms/internal/zzaos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafT:Lcom/google/android/gms/internal/zzaos;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafT:Lcom/google/android/gms/internal/zzaos;

    return-object v0
.end method

.method public final zzky()Lcom/google/android/gms/internal/zzaof;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzami;->zza(Lcom/google/android/gms/internal/zzamg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzami;->zzafU:Lcom/google/android/gms/internal/zzaof;

    return-object v0
.end method

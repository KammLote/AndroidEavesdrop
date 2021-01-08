.class public final Lcom/google/android/gms/internal/zzchy;
.super Lcom/google/android/gms/internal/zzchi;


# instance fields
.field protected zzbtE:Lcom/google/android/gms/internal/zzcib;

.field private volatile zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzbtH:J

.field private final zzbtI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzcib;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbtK:Z

.field private zzbtL:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

.field private zzbtM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcgk;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcib;Z)V
    .locals 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :goto_0
    if-eqz v1, :cond_5

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    move-object v1, v0

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtK:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/AppMeasurement$zza;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    and-int/2addr v2, v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-eqz v1, :cond_6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzchy;->zzbtH:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v4

    const-string v5, "onScreenChangeCallback threw exception"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    :try_start_3
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcfk;->zzyx()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v2

    const-string v3, "onScreenChangeCallback loop threw exception"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzchy;->zzbtK:Z

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :goto_4
    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcib;->zzbok:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchy;->zzen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/zzcib;->zzbok:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcib;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzcib;-><init>(Lcom/google/android/gms/internal/zzcib;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtH:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwE()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzchz;

    invoke-direct {v3, p0, p3, v1, v0}, Lcom/google/android/gms/internal/zzchz;-><init>(Lcom/google/android/gms/internal/zzchy;ZLcom/google/android/gms/measurement/AppMeasurement$zzb;Lcom/google/android/gms/internal/zzcib;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgf;->zzj(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzchy;->zzbtK:Z

    move v0, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-boolean v8, p0, Lcom/google/android/gms/internal/zzchy;->zzbtK:Z

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    goto :goto_4

    :cond_5
    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzchy;Lcom/google/android/gms/internal/zzcib;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchy;->zza(Lcom/google/android/gms/internal/zzcib;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcib;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/zzcib;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwr()Lcom/google/android/gms/internal/zzceb;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzceb;->zzJ(J)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwD()Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcib;->zzbtS:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzciz;->zzap(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/zzcib;->zzbtS:Z

    :cond_0
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbok:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbol:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private static zzen(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x24

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchy;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcib;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtG:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtH:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwE()Lcom/google/android/gms/internal/zzcgf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcia;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcia;-><init>(Lcom/google/android/gms/internal/zzchy;Lcom/google/android/gms/internal/zzcib;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgf;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzchy;->zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcib;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzchy;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcib;Z)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwr()Lcom/google/android/gms/internal/zzceb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzceb;->zzwn()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcib;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzcib;->zzbol:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcib;->zzboj:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcib;->zzbok:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.firebase.analytics.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final registerOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwp()V

    if-nez p1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Attempting to register null OnScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with a non-null activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwE()Lcom/google/android/gms/internal/zzcgf;

    invoke-static {}, Lcom/google/android/gms/internal/zzcgf;->zzS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtK:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Cannot call setCurrentScreen from onScreenChangeCallback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchy;->zzen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzbok:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    iget-object v1, v1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzboj:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzcjk;->zzR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyA()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxk()I

    move-result v1

    if-le v0, v1, :cond_8

    :cond_7
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzcel;->zzxk()I

    move-result v1

    if-le v0, v1, :cond_a

    :cond_9
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v1

    const-string v2, "Setting current screen to name, class"

    if-nez p2, :cond_b

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v2, v0, p3}, Lcom/google/android/gms/internal/zzcfm;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcib;

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwB()Lcom/google/android/gms/internal/zzcjk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzzs()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/zzcib;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzchy;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzcib;Z)V

    goto/16 :goto_0

    :cond_b
    move-object v0, p2

    goto :goto_1
.end method

.method public final unregisterOnScreenChangeCallback(Lcom/google/android/gms/measurement/AppMeasurement$zza;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/measurement/AppMeasurement$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtJ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtM:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtM:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchy;->zzbtL:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

.method final zzq(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzcib;
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcib;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchy;->zzen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzcib;

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwB()Lcom/google/android/gms/internal/zzcjk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzzs()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/zzcib;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtI:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
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

.method public final zzzh()Lcom/google/android/gms/internal/zzcib;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzchy;->zzkD()V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzjC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchy;->zzbtE:Lcom/google/android/gms/internal/zzcib;

    return-object v0
.end method

.method public final zzzi()Lcom/google/android/gms/measurement/AppMeasurement$zzb;
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwp()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchy;->zzbtF:Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    goto :goto_0
.end method

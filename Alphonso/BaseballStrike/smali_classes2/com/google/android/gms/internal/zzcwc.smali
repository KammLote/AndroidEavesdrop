.class final Lcom/google/android/gms/internal/zzcwc;
.super Lcom/google/android/gms/internal/zzcwb;


# static fields
.field private static final zzbGB:Ljava/lang/Object;

.field private static zzbIX:Lcom/google/android/gms/internal/zzcwc;


# instance fields
.field private connected:Z

.field private zzbGC:Landroid/content/Context;

.field private zzbGF:I

.field private zzbGG:Z

.field private zzbGH:Z

.field private zzbGI:Z

.field private zzbGM:Z

.field private zzbIR:Lcom/google/android/gms/internal/zzcva;

.field private volatile zzbIS:Lcom/google/android/gms/internal/zzcux;

.field private zzbIT:Z

.field private zzbIU:Lcom/google/android/gms/internal/zzcvb;

.field private zzbIV:Lcom/google/android/gms/internal/zzcwf;

.field private zzbIW:Lcom/google/android/gms/internal/zzcvl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwc;->zzbGB:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwb;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGG:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGH:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIT:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwc;->connected:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGI:Z

    new-instance v0, Lcom/google/android/gms/internal/zzcwd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcwd;-><init>(Lcom/google/android/gms/internal/zzcwc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIU:Lcom/google/android/gms/internal/zzcvb;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGM:Z

    return-void
.end method

.method private final isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzBW()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcwc;->zzbGB:Ljava/lang/Object;

    return-object v0
.end method

.method public static zzCz()Lcom/google/android/gms/internal/zzcwc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcwc;->zzbIX:Lcom/google/android/gms/internal/zzcwc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcwc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwc;->zzbIX:Lcom/google/android/gms/internal/zzcwc;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzcwc;->zzbIX:Lcom/google/android/gms/internal/zzcwc;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwc;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIT:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcwc;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcwc;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcwc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcwc;)Lcom/google/android/gms/internal/zzcva;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIR:Lcom/google/android/gms/internal/zzcva;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGH:Z

    if-nez v0, :cond_1

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIS:Lcom/google/android/gms/internal/zzcux;

    new-instance v1, Lcom/google/android/gms/internal/zzcwe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwe;-><init>(Lcom/google/android/gms/internal/zzcwc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcux;->zzn(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzBT()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcwf;->zzBX()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzCA()Lcom/google/android/gms/internal/zzcva;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIR:Lcom/google/android/gms/internal/zzcva;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/zzcvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIU:Lcom/google/android/gms/internal/zzcvb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzcvm;-><init>(Lcom/google/android/gms/internal/zzcvb;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIR:Lcom/google/android/gms/internal/zzcva;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcwg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcwg;-><init>(Lcom/google/android/gms/internal/zzcwc;Lcom/google/android/gms/internal/zzcwd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    iget v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    iget v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzcwf;->zzs(J)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGH:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGG:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcwc;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGG:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIW:Lcom/google/android/gms/internal/zzcvl;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGI:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzcvl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcvl;-><init>(Lcom/google/android/gms/internal/zzcwb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIW:Lcom/google/android/gms/internal/zzcvl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIW:Lcom/google/android/gms/internal/zzcvl;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIR:Lcom/google/android/gms/internal/zzcva;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcux;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGC:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIS:Lcom/google/android/gms/internal/zzcux;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIS:Lcom/google/android/gms/internal/zzcux;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzas(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGM:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzcwc;->zzd(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzd(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGM:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcwc;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;->isPowerSaveMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwc;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcwf;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwc;->zzbIV:Lcom/google/android/gms/internal/zzcwf;

    iget v1, p0, Lcom/google/android/gms/internal/zzcwc;->zzbGF:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzcwf;->zzs(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

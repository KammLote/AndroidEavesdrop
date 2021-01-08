.class public final Lcom/google/android/gms/internal/zzcgf;
.super Lcom/google/android/gms/internal/zzchi;


# static fields
.field private static final zzbsf:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzbrV:Ljava/util/concurrent/ExecutorService;

.field private zzbrW:Lcom/google/android/gms/internal/zzcgj;

.field private zzbrX:Lcom/google/android/gms/internal/zzcgj;

.field private final zzbrY:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbrZ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzbsa:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzbsb:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzbsc:Ljava/lang/Object;

.field private final zzbsd:Ljava/util/concurrent/Semaphore;

.field private volatile zzbse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/internal/zzcgf;->zzbsf:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcgk;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsc:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsd:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrY:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrZ:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/zzcgh;

    const-string v1, "Thread death: Uncaught exception on worker thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsa:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/google/android/gms/internal/zzcgh;

    const-string v1, "Thread death: Uncaught exception on network thread"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsb:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static zzS()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcgf;Lcom/google/android/gms/internal/zzcgj;)Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcgf;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsd:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcgi",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrY:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcgj;

    const-string v2, "Measurement Worker"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrY:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/zzcgj;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsa:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgj;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzfF()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcgf;Lcom/google/android/gms/internal/zzcgj;)Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcgf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbse:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcgf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsc:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcgf;)Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcgf;)Lcom/google/android/gms/internal/zzcgj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    return-object v0
.end method

.method static synthetic zzyO()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcgf;->zzbsf:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgf;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcgi;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcgi;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrY:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzchi;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v1

    const-string v2, "Callable skipped the worker queue."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgi;->run()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgf;->zza(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_0
.end method

.method public final zzf(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgf;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcgi;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcgi;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgi;->run()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgf;->zza(Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_0
.end method

.method public final zzj(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgf;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcgi;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcgi;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcgf;->zza(Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method

.method public final zzjC()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final zzjD()V
    .locals 0

    return-void
.end method

.method public final zzk(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcgf;->zzkD()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzcgi;

    const/4 v1, 0x0

    const-string v2, "Task exception on network thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzcgi;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrZ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcgj;

    const-string v2, "Measurement Network"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrZ:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/internal/zzcgj;-><init>(Lcom/google/android/gms/internal/zzcgf;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsb:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgj;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->start()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzfF()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

.method public final zzwq()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrX:Lcom/google/android/gms/internal/zzcgj;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

.method public final zzyM()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrW:Lcom/google/android/gms/internal/zzcgj;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final zzyN()Ljava/util/concurrent/ExecutorService;
    .locals 9

    iget-object v8, p0, Lcom/google/android/gms/internal/zzcgf;->zzbsc:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrV:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrV:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgf;->zzbrV:Ljava/util/concurrent/ExecutorService;

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

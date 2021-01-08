.class final Lcom/google/android/gms/internal/zzcuy;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/internal/zzcux;


# static fields
.field private static zzbIj:Lcom/google/android/gms/internal/zzcuy;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile zzOZ:Z

.field private final zzbER:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbIk:Lcom/google/android/gms/internal/zzcva;

.field private final zzvy:Lcom/google/android/gms/common/util/zze;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzbER:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcuy;->zzOZ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcuy;->mClosed:Z

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzvy:Lcom/google/android/gms/common/util/zze;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->mContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcuy;->start()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuy;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuy;)Lcom/google/android/gms/internal/zzcva;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzbIk:Lcom/google/android/gms/internal/zzcva;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcuy;Lcom/google/android/gms/internal/zzcva;)Lcom/google/android/gms/internal/zzcva;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuy;->zzbIk:Lcom/google/android/gms/internal/zzcva;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcuy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static zzbw(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcuy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzcuy;->zzbIj:Lcom/google/android/gms/internal/zzcuy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcuy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcuy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcuy;->zzbIj:Lcom/google/android/gms/internal/zzcuy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzcuy;->zzbIj:Lcom/google/android/gms/internal/zzcuy;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcuy;->mClosed:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzbER:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcuy;->zzOZ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error on Google TagManager Thread: "

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->e(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzOZ:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Lcom/google/android/gms/internal/zzcuz;

    move-object v2, p0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcuz;-><init>(Lcom/google/android/gms/internal/zzcuy;Lcom/google/android/gms/internal/zzcux;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcuy;->zzn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuy;->zzbER:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

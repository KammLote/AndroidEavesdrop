.class public final Lcom/google/android/gms/internal/zzig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private zzzC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzzD:Lcom/google/android/gms/internal/zzij;

.field private zzzE:Lcom/google/android/gms/internal/zzil;

.field private zzzF:Z

.field private final zzzG:Z

.field private final zzzH:I

.field private zzzI:I

.field private zzzJ:Lcom/google/android/gms/internal/zzih;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzzF:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzig;->zzzG:Z

    new-instance v0, Lcom/google/android/gms/internal/zzik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzik;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzzD:Lcom/google/android/gms/internal/zzij;

    new-instance v0, Lcom/google/android/gms/internal/zzil;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzil;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzzE:Lcom/google/android/gms/internal/zzil;

    iput v1, p0, Lcom/google/android/gms/internal/zzig;->zzzH:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzdi()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzij;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzF:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig;->zzzD:Lcom/google/android/gms/internal/zzij;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzzC:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzig;->zzzG:Z

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzig;->zzzH:I

    new-instance v0, Lcom/google/android/gms/internal/zzil;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzil;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzzE:Lcom/google/android/gms/internal/zzil;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzdi()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzain;->zzie()Landroid/os/Looper;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzig;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzig;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzdg()V

    return-void
.end method

.method public static zzde()Lcom/google/android/gms/internal/zzig;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzig;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized zzdg()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private final declared-synchronized zzdh()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbP()Lcom/google/android/gms/internal/zzain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzain;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzih;

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzih;-><init>(Lcom/google/android/gms/internal/zzig;I)V

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzzH:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzig;->zzzI:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzzJ:Lcom/google/android/gms/internal/zzih;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzig;->zzzJ:Lcom/google/android/gms/internal/zzih;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzig;->zzzJ:Lcom/google/android/gms/internal/zzih;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzdi()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/zzii;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzig;->zzzE:Lcom/google/android/gms/internal/zzil;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzii;->zza(Lcom/google/android/gms/internal/zzil;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzF:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzG:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzdh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzdf()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzig;->zzzF:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzig;->zzdh()V

    :cond_0
    return-void
.end method

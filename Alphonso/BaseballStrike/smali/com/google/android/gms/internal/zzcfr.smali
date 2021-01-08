.class final Lcom/google/android/gms/internal/zzcfr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzLg:I

.field private final zzaaS:Ljava/lang/Throwable;

.field private final zzbra:Lcom/google/android/gms/internal/zzcfq;

.field private final zzbrb:[B

.field private final zzbrc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfq;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcfq;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfr;->zzbra:Lcom/google/android/gms/internal/zzcfq;

    iput p3, p0, Lcom/google/android/gms/internal/zzcfr;->zzLg:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcfr;->zzaaS:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcfr;->zzbrb:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfr;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcfr;->zzbrc:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfq;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcfp;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzcfr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcfq;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfr;->zzbra:Lcom/google/android/gms/internal/zzcfq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfr;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzcfr;->zzLg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcfr;->zzaaS:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcfr;->zzbrb:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcfr;->zzbrc:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcfq;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

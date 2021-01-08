.class final Lcom/google/android/gms/internal/zzcuv;
.super Ljava/lang/Object;


# instance fields
.field private final zzaid:J

.field private final zzbEO:J

.field private final zzbEP:J

.field private zzbEQ:Ljava/lang/String;

.field private zzbIg:Ljava/lang/String;

.field private zzbIh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbIi:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEO:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcuv;->zzaid:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEP:J

    return-void
.end method


# virtual methods
.method final zzBm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEO:J

    return-wide v0
.end method

.method final zzBn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEP:J

    return-wide v0
.end method

.method final zzBo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEQ:Ljava/lang/String;

    return-object v0
.end method

.method final zzCn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIg:Ljava/lang/String;

    return-object v0
.end method

.method final zzCo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIh:Ljava/util/Map;

    return-object v0
.end method

.method final zzCp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIi:Ljava/lang/String;

    return-object v0
.end method

.method final zzfD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIg:Ljava/lang/String;

    return-void
.end method

.method final zzfE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIi:Ljava/lang/String;

    return-void
.end method

.method final zzfl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuv;->zzbEQ:Ljava/lang/String;

    goto :goto_0
.end method

.method final zzu(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuv;->zzbIh:Ljava/util/Map;

    return-void
.end method

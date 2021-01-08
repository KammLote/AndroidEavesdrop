.class public final Lcom/google/android/gms/internal/abb;
.super Ljava/lang/Object;


# instance fields
.field private zzcnl:Z

.field private zzcno:J

.field private zzcnu:I

.field private zzcnx:J

.field private zzcny:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aav;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/abb;-><init>(J)V

    return-void
.end method

.method private constructor <init>(IJLjava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aav;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/abb;-><init>(IJLjava/util/Map;ZJ)V

    return-void
.end method

.method private constructor <init>(IJLjava/util/Map;ZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aav;",
            ">;ZJ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/abb;->zzcnu:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/abb;->zzcnx:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/abb;->zzcnl:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/abb;->zzcno:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/abb;-><init>(IJLjava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final getLastFetchStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/abb;->zzcnu:I

    return v0
.end method

.method public final isDeveloperModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/abb;->zzcnl:Z

    return v0
.end method

.method public final zzH(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aav;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public final zzKE()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aav;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    return-object v0
.end method

.method public final zzKF()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/abb;->zzcnx:J

    return-wide v0
.end method

.method public final zzKG()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/abb;->zzcno:J

    return-wide v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/aav;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzaJ(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/abb;->zzcnl:Z

    return-void
.end method

.method public final zzaL(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/abb;->zzcnx:J

    return-void
.end method

.method public final zzaM(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/abb;->zzcno:J

    return-void
.end method

.method public final zzce(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/abb;->zzcnu:I

    return-void
.end method

.method public final zzhG(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/abb;->zzcny:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

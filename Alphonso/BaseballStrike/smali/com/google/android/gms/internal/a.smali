.class public final Lcom/google/android/gms/internal/a;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcvz;",
            "[",
            "Lcom/google/android/gms/internal/do",
            "<*>;)",
            "Lcom/google/android/gms/internal/do",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/do;)D

    move-result-wide v2

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/do;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    cmpl-double v0, v4, v6

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    goto :goto_1

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    goto :goto_1

    :cond_5
    cmpl-double v0, v2, v6

    if-nez v0, :cond_6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ds;

    rem-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    goto :goto_1
.end method

.class public final Lcom/google/android/gms/internal/f;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 7
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

    const/4 v6, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-eq v0, v3, :cond_0

    array-length v0, p2

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aget-object v1, p2, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    if-ge v2, v6, :cond_2

    move-wide v2, v4

    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/ds;

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Double;)V

    return-object v4

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v2, p2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxo;->zzc(Lcom/google/android/gms/internal/do;)D

    move-result-wide v2

    goto :goto_1
.end method

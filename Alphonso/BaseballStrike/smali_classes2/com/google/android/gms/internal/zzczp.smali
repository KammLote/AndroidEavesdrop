.class public final Lcom/google/android/gms/internal/zzczp;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 5
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

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-eq v0, v3, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-ne v0, v4, :cond_1

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxo;->zza(Lcom/google/android/gms/internal/do;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_2
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Ljava/util/List;)Lcom/google/android/gms/internal/du;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/du;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->zzm(Lcom/google/android/gms/internal/do;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    array-length v1, p2

    if-le v1, v3, :cond_2

    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_2
.end method

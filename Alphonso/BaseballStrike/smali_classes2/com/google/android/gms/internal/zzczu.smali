.class public final Lcom/google/android/gms/internal/zzczu;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 8
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

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v7, p2, v2

    aget-object v0, p2, v4

    check-cast v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v3, v5, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    move v5, v2

    move v6, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/do;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/do;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/do;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v3

    instance-of v2, v3, Lcom/google/android/gms/internal/du;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/du;->zzbLq:Lcom/google/android/gms/internal/du;

    if-eq v3, v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/du;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/du;->zzDq()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_3
    return-object v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/du;->zzbLp:Lcom/google/android/gms/internal/du;

    if-ne v3, v2, :cond_9

    sget-object v3, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v3

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/do;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/gms/internal/du;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLq:Lcom/google/android/gms/internal/du;

    if-eq v1, v0, :cond_7

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/du;->zzDq()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move-object v3, v1

    goto :goto_3

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_3

    :cond_9
    move v3, v6

    goto :goto_4
.end method

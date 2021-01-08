.class public final Lcom/google/android/gms/internal/zzczf;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 3
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/do;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/gms/internal/du;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLp:Lcom/google/android/gms/internal/du;

    if-eq v1, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLq:Lcom/google/android/gms/internal/du;

    if-eq v1, v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/du;->zzDq()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_1
.end method

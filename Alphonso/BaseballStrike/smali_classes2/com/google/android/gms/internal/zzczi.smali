.class public final Lcom/google/android/gms/internal/zzczi;
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

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    instance-of v4, v3, Lcom/google/android/gms/internal/du;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/du;->zzbLr:Lcom/google/android/gms/internal/du;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal InternalType found in CreateObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/dy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dy;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

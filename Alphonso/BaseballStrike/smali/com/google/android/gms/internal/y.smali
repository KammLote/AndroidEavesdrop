.class public final Lcom/google/android/gms/internal/y;
.super Lcom/google/android/gms/internal/zzcxp;


# instance fields
.field private final zzbJV:Lcom/google/android/gms/internal/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/y;->zzbJV:Lcom/google/android/gms/internal/z;

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

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    check-cast v0, Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    aget-object v1, p2, v3

    sget-object v2, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    if-eq v1, v2, :cond_3

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/dy;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/dy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dy;->zzDs()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/dz;

    if-nez v2, :cond_1

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/do;

    invoke-static {v2}, Lcom/google/android/gms/internal/ec;->zzm(Lcom/google/android/gms/internal/do;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/do;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/do;->zzDk()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/y;->zzbJV:Lcom/google/android/gms/internal/z;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/z;->zzd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    return-object v0
.end method

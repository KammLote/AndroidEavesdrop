.class final Lcom/google/android/gms/internal/sf;
.super Ljava/lang/Object;


# instance fields
.field private zzceA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            "Lcom/google/android/gms/internal/sf;",
            ">;"
        }
    .end annotation
.end field

.field private zzcez:Lcom/google/android/gms/internal/xf;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    iput-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/sj;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/sj;->zzf(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/sh;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/sh;-><init>(Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/sj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sf;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/si;->zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/sf;)V

    goto :goto_0
.end method

.method public final zzh(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xf;->zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/sf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/sf;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object p1

    move-object p0, v0

    goto :goto_0
.end method

.method public final zzq(Lcom/google/android/gms/internal/qo;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v5, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    iput-object v5, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    check-cast v0, Lcom/google/android/gms/internal/wl;

    iput-object v5, p0, Lcom/google/android/gms/internal/sf;->zzcez:Lcom/google/android/gms/internal/xf;

    new-instance v3, Lcom/google/android/gms/internal/sg;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/sg;-><init>(Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/qo;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/wl;->zza(Lcom/google/android/gms/internal/wo;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sf;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/sf;->zzq(Lcom/google/android/gms/internal/qo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v5, p0, Lcom/google/android/gms/internal/sf;->zzceA:Ljava/util/Map;

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.class public final Lcom/google/android/gms/internal/sk;
.super Ljava/lang/Object;


# instance fields
.field private final zzceE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vn;",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceF:Lcom/google/android/gms/internal/ue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/sk;->zzceF:Lcom/google/android/gms/internal/ue;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vq;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vq;",
            "Lcom/google/android/gms/internal/tu;",
            "Lcom/google/android/gms/internal/tp;",
            "Lcom/google/android/gms/internal/xf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/vq;->zzb(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/internal/vr;->zzchp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/vi;->zzcgP:Lcom/google/android/gms/internal/vi;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/google/android/gms/internal/vi;->zzcgO:Lcom/google/android/gms/internal/vi;

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceF:Lcom/google/android/gms/internal/ue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v4

    invoke-interface {v0, v4, v3, v2}, Lcom/google/android/gms/internal/ue;->zza(Lcom/google/android/gms/internal/vp;Ljava/util/Set;Ljava/util/Set;)V

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/vr;->zzcho:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzHm()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final zzHn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sk;->zzHo()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzHo()Lcom/google/android/gms/internal/vq;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/yr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Lcom/google/android/gms/internal/qf;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Lcom/google/android/gms/internal/yr",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/yr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/yr;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qf;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/vd;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qf;",
            "Lcom/google/android/gms/internal/tp;",
            "Lcom/google/android/gms/internal/vd;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qf;->zzGG()Lcom/google/android/gms/internal/vp;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/tp;->zzc(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/vs;

    new-instance v5, Lcom/google/android/gms/internal/vd;

    invoke-direct {v5, v2, v0, v1}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    invoke-direct {v4, v5, p3}, Lcom/google/android/gms/internal/vs;-><init>(Lcom/google/android/gms/internal/vd;Lcom/google/android/gms/internal/vd;)V

    new-instance v1, Lcom/google/android/gms/internal/vq;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/vq;-><init>(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/vs;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vq;->zzIv()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/tp;->zzd(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceF:Lcom/google/android/gms/internal/ue;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ue;->zza(Lcom/google/android/gms/internal/vp;Ljava/util/Set;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vq;->zzb(Lcom/google/android/gms/internal/qf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vq;->zzk(Lcom/google/android/gms/internal/qf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tu;",
            "Lcom/google/android/gms/internal/tp;",
            "Lcom/google/android/gms/internal/xf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tu;->zzHD()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tw;->zzHH()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/vq;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/vq;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vq;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sk;->zzHo()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/vp;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sk;->zzb(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->zzceE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vq;->zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vq;->zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

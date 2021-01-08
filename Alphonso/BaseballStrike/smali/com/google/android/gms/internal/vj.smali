.class public final Lcom/google/android/gms/internal/vj;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgU:Lcom/google/android/gms/internal/vp;

.field private final zzcgV:Lcom/google/android/gms/internal/wy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vj;->zzcgU:Lcom/google/android/gms/internal/vp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vj;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vj;)Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vj;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;",
            "Lcom/google/android/gms/internal/vi;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qf;",
            ">;",
            "Lcom/google/android/gms/internal/wz;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/vi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vk;-><init>(Lcom/google/android/gms/internal/vj;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/vf;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/qf;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/qf;->zza(Lcom/google/android/gms/internal/vi;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/vi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/internal/vi;->zzcgO:Lcom/google/android/gms/internal/vi;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/vi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v3, v1

    :goto_3
    iget-object v7, p0, Lcom/google/android/gms/internal/vj;->zzcgU:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/qf;->zza(Lcom/google/android/gms/internal/vf;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vg;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/vj;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {p5, v3, v7, v8}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/vf;->zzg(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/vf;

    move-result-object v3

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/wz;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;",
            "Lcom/google/android/gms/internal/wz;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qf;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHY()Lcom/google/android/gms/internal/vi;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/vi;->zzcgR:Lcom/google/android/gms/internal/vi;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/vi;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/vj;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzIa()Lcom/google/android/gms/internal/wz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIH()Lcom/google/android/gms/internal/wj;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    new-instance v4, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIH()Lcom/google/android/gms/internal/wj;

    move-result-object v8

    invoke-direct {v4, v8, v5}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/internal/wy;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHX()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vf;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/vf;->zzc(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgO:Lcom/google/android/gms/internal/vi;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgP:Lcom/google/android/gms/internal/vi;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgQ:Lcom/google/android/gms/internal/vi;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgR:Lcom/google/android/gms/internal/vi;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V

    sget-object v2, Lcom/google/android/gms/internal/vi;->zzcgS:Lcom/google/android/gms/internal/vi;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vi;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/wz;)V

    return-object v1
.end method

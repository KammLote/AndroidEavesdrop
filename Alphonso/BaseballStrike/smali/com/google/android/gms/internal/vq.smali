.class public final Lcom/google/android/gms/internal/vq;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgU:Lcom/google/android/gms/internal/vp;

.field private final zzchk:Lcom/google/android/gms/internal/vt;

.field private zzchl:Lcom/google/android/gms/internal/vs;

.field private final zzchm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzchn:Lcom/google/android/gms/internal/vj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/vs;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vq;->zzcgU:Lcom/google/android/gms/internal/vp;

    new-instance v0, Lcom/google/android/gms/internal/vy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vy;-><init>(Lcom/google/android/gms/internal/wy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vn;->zzIr()Lcom/google/android/gms/internal/wa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/vt;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/vt;-><init>(Lcom/google/android/gms/internal/wa;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/vq;->zzchk:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vs;->zzIy()Lcom/google/android/gms/internal/vd;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vs;->zzIw()Lcom/google/android/gms/internal/vd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vd;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/internal/vy;->zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vd;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v5

    invoke-interface {v1, v4, v5, v6}, Lcom/google/android/gms/internal/wa;->zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/vd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v2

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v6}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/vd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/wa;->zzIC()Z

    move-result v1

    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    new-instance v1, Lcom/google/android/gms/internal/vs;

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/internal/vs;-><init>(Lcom/google/android/gms/internal/vd;Lcom/google/android/gms/internal/vd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/vj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vj;-><init>(Lcom/google/android/gms/internal/vp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchn:Lcom/google/android/gms/internal/vj;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/qf;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vf;",
            ">;",
            "Lcom/google/android/gms/internal/wz;",
            "Lcom/google/android/gms/internal/qf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vq;->zzchn:Lcom/google/android/gms/internal/vj;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/gms/internal/vj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/wz;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/qf;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzIt()Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzcgU:Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method public final zzIu()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIy()Lcom/google/android/gms/internal/vd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zzIv()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIw()Lcom/google/android/gms/internal/vd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qf;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    if-eqz p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzcgU:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qf;

    new-instance v5, Lcom/google/android/gms/internal/ve;

    invoke-direct {v5, v0, p2, v2}, Lcom/google/android/gms/internal/ve;-><init>(Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_1
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qf;->zzc(Lcom/google/android/gms/internal/qf;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qf;->zzGV()Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    if-eq v1, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qf;

    iget-object v2, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qf;->zzGU()V

    :cond_5
    :goto_3
    return-object v4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qf;->zzGU()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3
.end method

.method public final zzb(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vr;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tu;->zzHE()Lcom/google/android/gms/internal/tv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/tv;->zzcfJ:Lcom/google/android/gms/internal/tv;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tu;->zzHD()Lcom/google/android/gms/internal/tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tw;->zzHH()Lcom/google/android/gms/internal/vn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    iget-object v1, p0, Lcom/google/android/gms/internal/vq;->zzchk:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/vt;->zza(Lcom/google/android/gms/internal/vs;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vv;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/vv;->zzchl:Lcom/google/android/gms/internal/vs;

    iput-object v1, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    iget-object v1, v0, Lcom/google/android/gms/internal/vv;->zzchp:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/internal/vv;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vs;->zzIw()Lcom/google/android/gms/internal/vd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vd;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/gms/internal/vq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/qf;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/vr;

    iget-object v0, v0, Lcom/google/android/gms/internal/vv;->zzchp:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/vr;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public final zzb(Lcom/google/android/gms/internal/qf;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/qf;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIw()Lcom/google/android/gms/internal/vd;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/vf;->zzc(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vd;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vf;->zza(Lcom/google/android/gms/internal/wz;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vd;->zzHV()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/internal/vq;->zza(Ljava/util/List;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/qf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vq;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIz()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/vq;->zzcgU:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

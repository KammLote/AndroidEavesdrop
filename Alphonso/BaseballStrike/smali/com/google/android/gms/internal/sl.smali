.class public final Lcom/google/android/gms/internal/sl;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZH:Lcom/google/android/gms/internal/wf;

.field private final zzceF:Lcom/google/android/gms/internal/ue;

.field private zzceG:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Lcom/google/android/gms/internal/sk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceH:Lcom/google/android/gms/internal/tm;

.field private final zzceI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/te;",
            "Lcom/google/android/gms/internal/vp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vp;",
            "Lcom/google/android/gms/internal/te;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/vp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzceL:Lcom/google/android/gms/internal/td;

.field private zzceM:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/ue;Lcom/google/android/gms/internal/td;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/sl;->zzceM:J

    invoke-static {}, Lcom/google/android/gms/internal/us;->zzHQ()Lcom/google/android/gms/internal/us;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    new-instance v0, Lcom/google/android/gms/internal/tm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceH:Lcom/google/android/gms/internal/tm;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceI:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceJ:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceK:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/sl;->zzceL:Lcom/google/android/gms/internal/td;

    iput-object p2, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    const-string v0, "SyncTree"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qb;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/sl;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-void
.end method

.method private final zzHq()Lcom/google/android/gms/internal/te;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/te;

    iget-wide v2, p0, Lcom/google/android/gms/internal/sl;->zzceM:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/sl;->zzceM:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/te;-><init>(J)V

    return-object v0
.end method

.method private final zzU(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/sl;->zze(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sl;->zzceJ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceI:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zze(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/tu;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/tu;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tu;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/sl;->zzceH:Lcom/google/android/gms/internal/tm;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/tm;->zzt(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/tp;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tu;",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Lcom/google/android/gms/internal/sk;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/tp;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tu;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sk;->zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object p3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tu;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/tu;->zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/us;->zzHR()Lcom/google/android/gms/internal/ng;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/us;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz p3, :cond_4

    invoke-interface {p3, v4}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    :goto_1
    invoke-virtual {p4, v4}, Lcom/google/android/gms/internal/tp;->zzb(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tp;

    move-result-object v4

    invoke-direct {p0, v5, v1, v2, v4}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private final zza(Lcom/google/android/gms/internal/us;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Lcom/google/android/gms/internal/sk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/us;Ljava/util/List;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/tu;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Lcom/google/android/gms/internal/tu;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    iget-object v2, p0, Lcom/google/android/gms/internal/sl;->zzceH:Lcom/google/android/gms/internal/tm;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/tm;->zzt(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/tp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/vq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/vq;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/sl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zzU(Ljava/util/List;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/us;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Lcom/google/android/gms/internal/sk;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vq;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->zzHo()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->zzHm()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/us;->zzHR()Lcom/google/android/gms/internal/ng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/us;Ljava/util/List;)V

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/vq;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zze(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/tc;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/tc;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vq;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/sl;->zzceL:Lcom/google/android/gms/internal/td;

    invoke-static {p1}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v4

    invoke-interface {v3, v4, v1, v2, v2}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/ta;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/us;->zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/sq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/sq;-><init>(Lcom/google/android/gms/internal/sl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/uv;)V

    :cond_0
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vp;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/us;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/us;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/tu;",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Lcom/google/android/gms/internal/sk;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/tp;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/sk;

    if-nez p3, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/sk;->zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/us;->zzHR()Lcom/google/android/gms/internal/ng;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/sr;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/tu;Ljava/util/List;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ng;->zza(Lcom/google/android/gms/internal/nr;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1, p4, v2}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v5

    :cond_1
    move-object v2, p3

    goto :goto_0
.end method

.method private final zzb(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Lcom/google/android/gms/internal/qf;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/sp;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceH:Lcom/google/android/gms/internal/tm;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/us;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    return-object v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vp;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/te;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/sl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceJ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/te;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/sl;->zzHq()Lcom/google/android/gms/internal/te;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/sl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceI:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceL:Lcom/google/android/gms/internal/td;

    return-object v0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzHp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/su;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/su;-><init>(Lcom/google/android/gms/internal/sl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(JZZLcom/google/android/gms/internal/yj;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/yj;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/st;

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/st;-><init>(Lcom/google/android/gms/internal/sl;ZJZLcom/google/android/gms/internal/yj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;Lcom/google/android/gms/internal/px;JZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/px;",
            "Lcom/google/android/gms/internal/px;",
            "JZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/ss;

    move-object v2, p0

    move/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ss;-><init>(Lcom/google/android/gms/internal/sl;ZLcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;JLcom/google/android/gms/internal/px;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/te;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/te;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sz;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/sz;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;JZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/xf;",
            "JZZ)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sm;

    move-object v2, p0

    move/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move-object v8, p3

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/sm;-><init>(Lcom/google/android/gms/internal/sl;ZLcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;JLcom/google/android/gms/internal/xf;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Ljava/util/List;Lcom/google/android/gms/internal/te;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xm;",
            ">;",
            "Lcom/google/android/gms/internal/te;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sk;->zzb(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIu()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/te;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/xf;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sw;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/sw;-><init>(Lcom/google/android/gms/internal/sl;Ljava/util/Map;Lcom/google/android/gms/internal/qo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Ljava/util/Map;Lcom/google/android/gms/internal/te;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/xf;",
            ">;",
            "Lcom/google/android/gms/internal/te;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sn;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/qo;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/te;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/te;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/sy;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/tb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/tb;-><init>(Lcom/google/android/gms/internal/vp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sl;->zzg(Lcom/google/android/gms/internal/qf;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/tb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/tb;-><init>(Lcom/google/android/gms/internal/vp;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/qf;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceK:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qo;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/xm;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->zzHo()Lcom/google/android/gms/internal/vq;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIu()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/sl;->zzi(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qo;Ljava/util/List;)Lcom/google/android/gms/internal/xf;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/xf;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/sl;->zzceG:Lcom/google/android/gms/internal/us;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    move-object v4, v2

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/us;->zze(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/us;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/sk;->zzr(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/sl;->zzceH:Lcom/google/android/gms/internal/tm;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Ljava/util/List;Z)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/us;->zzHQ()Lcom/google/android/gms/internal/us;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0
.end method

.method public final zzg(Lcom/google/android/gms/internal/qf;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qf;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/so;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/so;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/qf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/qf;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qf;->zzGG()Lcom/google/android/gms/internal/vp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/xf;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sv;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/sv;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/qo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/vh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sl;->zzceF:Lcom/google/android/gms/internal/ue;

    new-instance v1, Lcom/google/android/gms/internal/sx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/sx;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/qo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

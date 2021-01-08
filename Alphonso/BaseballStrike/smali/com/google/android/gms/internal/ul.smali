.class public final Lcom/google/android/gms/internal/ul;
.super Ljava/lang/Object;


# static fields
.field private static final zzcgk:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vn;",
            "Lcom/google/android/gms/internal/uk;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzcgl:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vn;",
            "Lcom/google/android/gms/internal/uk;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzcgm:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Lcom/google/android/gms/internal/uk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzcgn:Lcom/google/android/gms/internal/uw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Lcom/google/android/gms/internal/uk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbZH:Lcom/google/android/gms/internal/wf;

.field private final zzcfX:Lcom/google/android/gms/internal/uf;

.field private zzcgo:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/vn;",
            "Lcom/google/android/gms/internal/uk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzcgp:Lcom/google/android/gms/internal/yj;

.field private zzcgq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/um;

    invoke-direct {v0}, Lcom/google/android/gms/internal/um;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ul;->zzcgk:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/un;

    invoke-direct {v0}, Lcom/google/android/gms/internal/un;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ul;->zzcgl:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/uo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/uo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ul;->zzcgm:Lcom/google/android/gms/internal/uw;

    new-instance v0, Lcom/google/android/gms/internal/up;

    invoke-direct {v0}, Lcom/google/android/gms/internal/up;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ul;->zzcgn:Lcom/google/android/gms/internal/uw;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/uf;Lcom/google/android/gms/internal/wf;Lcom/google/android/gms/internal/yj;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ul;->zzbZH:Lcom/google/android/gms/internal/wf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ul;->zzcgp:Lcom/google/android/gms/internal/yj;

    new-instance v0, Lcom/google/android/gms/internal/us;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/uf;->beginTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ul;->zzcgp:Lcom/google/android/gms/internal/yj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/yj;->zzJC()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/uf;->zzan(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/uf;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/uf;->endTransaction()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/uf;->zzFt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-wide v2, v0, Lcom/google/android/gms/internal/uk;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zzb(Lcom/google/android/gms/internal/uk;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/uf;->endTransaction()V

    throw v0

    :cond_0
    return-void
.end method

.method private final zzD(Lcom/google/android/gms/internal/qo;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ul;->zzcgk:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzE(Lcom/google/android/gms/internal/qo;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-object v3, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/uk;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic zzHP()Lcom/google/android/gms/internal/uw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ul;->zzcgm:Lcom/google/android/gms/internal/uw;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/uw;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uw",
            "<",
            "Lcom/google/android/gms/internal/uk;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/uk;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final zza(Lcom/google/android/gms/internal/uk;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ul;->zzb(Lcom/google/android/gms/internal/uk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/uf;->zza(Lcom/google/android/gms/internal/uk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ul;Lcom/google/android/gms/internal/uk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uk;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/uk;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    iget-object v3, p1, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    iget-object v4, p1, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    move-object v3, v0

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/internal/uk;->id:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/uk;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/yu;->zzaF(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method private final zzb(Lcom/google/android/gms/internal/vp;Z)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/internal/ul;->zzj(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ul;->zzk(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/uk;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgp:Lcom/google/android/gms/internal/yj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/yj;->zzJC()J

    move-result-wide v4

    if-eqz v7, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/uk;

    iget-wide v1, v7, Lcom/google/android/gms/internal/uk;->id:J

    iget-object v3, v7, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    iget-boolean v6, v7, Lcom/google/android/gms/internal/uk;->complete:Z

    iget-boolean v7, v7, Lcom/google/android/gms/internal/uk;->zzbpf:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/uk;-><init>(JLcom/google/android/gms/internal/vp;JZZ)V

    new-instance v8, Lcom/google/android/gms/internal/uk;

    iget-wide v1, v0, Lcom/google/android/gms/internal/uk;->id:J

    iget-object v3, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    iget-wide v4, v0, Lcom/google/android/gms/internal/uk;->zzcgj:J

    iget-boolean v6, v0, Lcom/google/android/gms/internal/uk;->complete:Z

    move-object v0, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/uk;-><init>(JLcom/google/android/gms/internal/vp;JZZ)V

    move-object v0, v8

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uk;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/uk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/uk;-><init>(JLcom/google/android/gms/internal/vp;JZZ)V

    goto :goto_0
.end method

.method private static zzj(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/qo;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ul;->zzE(Lcom/google/android/gms/internal/qo;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/uf;->zze(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->zzHR()Lcom/google/android/gms/internal/ng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/ul;->zzcgk:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final zzB(Lcom/google/android/gms/internal/qo;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ul;->zzD(Lcom/google/android/gms/internal/qo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ul;->zzk(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/uk;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/uk;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ul;->zzcgq:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ul;->zzcgp:Lcom/google/android/gms/internal/yj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/yj;->zzJC()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/uk;-><init>(JLcom/google/android/gms/internal/vp;JZZ)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uk;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/uk;->zzHN()Lcom/google/android/gms/internal/uk;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzC(Lcom/google/android/gms/internal/qo;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    sget-object v1, Lcom/google/android/gms/internal/ul;->zzcgl:Lcom/google/android/gms/internal/uw;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzHO()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ul;->zzcgm:Lcom/google/android/gms/internal/uw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/tz;)Lcom/google/android/gms/internal/ug;
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ul;->zzcgm:Lcom/google/android/gms/internal/uw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uw;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1}, Lcom/google/android/gms/internal/tz;->zzHJ()F

    move-result v5

    sub-float/2addr v2, v5

    long-to-float v5, v0

    mul-float/2addr v2, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/tz;->zzHK()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v6, v0, v6

    new-instance v1, Lcom/google/android/gms/internal/ug;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ug;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Count to prune: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v12, v5}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ur;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ur;-><init>(Lcom/google/android/gms/internal/ul;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    :goto_0
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-object v5, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ug;->zzx(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/ug;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ul;->zzj(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ul;->zzk(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/uk;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/gms/internal/ul;->zzcfX:Lcom/google/android/gms/internal/uf;

    iget-wide v10, v0, Lcom/google/android/gms/internal/uk;->id:J

    invoke-interface {v8, v10, v11}, Lcom/google/android/gms/internal/uf;->zzam(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/us;->zzI(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    long-to-int v0, v6

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-object v0, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ug;->zzy(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/ug;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ul;->zzcgn:Lcom/google/android/gms/internal/uw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uw;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ul;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ul;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unprunable queries: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v12, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-object v0, v0, Lcom/google/android/gms/internal/uk;->zzcgi:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ug;->zzy(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/ug;

    move-result-object v2

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method public final zzg(Lcom/google/android/gms/internal/vp;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ul;->zzb(Lcom/google/android/gms/internal/vp;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/vp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ul;->zzb(Lcom/google/android/gms/internal/vp;Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/uk;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ul;->zzj(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzl(Lcom/google/android/gms/internal/vp;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ul;->zzj(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ul;->zzk(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/uk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/uk;->complete:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uk;->zzHN()Lcom/google/android/gms/internal/uk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zza(Lcom/google/android/gms/internal/uk;)V

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/vp;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ul;->zzD(Lcom/google/android/gms/internal/qo;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/uk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/uk;->complete:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final zzz(Lcom/google/android/gms/internal/qo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ul;->zzcgo:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/uq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/uq;-><init>(Lcom/google/android/gms/internal/ul;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/uv;)V

    return-void
.end method

.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# instance fields
.field protected final zzbYW:Lcom/google/android/gms/internal/qr;

.field protected final zzbZi:Lcom/google/android/gms/internal/qo;

.field private zzbZm:Lcom/google/android/gms/internal/vn;

.field private final zzbZn:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    sget-object v0, Lcom/google/android/gms/internal/vn;->zzcgZ:Lcom/google/android/gms/internal/vn;

    iput-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vn;->zzIk()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Validation of queries failed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzFn()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zzFo()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 5

    invoke-static {p2}, Lcom/google/android/gms/internal/yw;->zzhd(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use simple values for startAt()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vn;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/vn;)V

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vn;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zza(Lcom/google/android/gms/internal/qf;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/tq;->zzHz()Lcom/google/android/gms/internal/tq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tq;->zzj(Lcom/google/android/gms/internal/qf;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v1, Lcom/google/firebase/database/zzq;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzq;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vn;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIe()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIf()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIH()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    if-ne v2, v3, :cond_0

    instance-of v1, v1, Lcom/google/android/gms/internal/xn;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIh()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIi()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    if-ne v2, v3, :cond_2

    instance-of v1, v1, Lcom/google/android/gms/internal/xn;

    if-nez v1, :cond_6

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIe()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xl;->zzl(Lcom/google/android/gms/internal/xf;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIh()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xl;->zzl(Lcom/google/android/gms/internal/xf;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 5

    invoke-static {p2}, Lcom/google/android/gms/internal/yw;->zzhd(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use simple values for endAt()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vn;->zzb(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/vn;)V

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vn;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v1
.end method

.method private final zzb(Lcom/google/android/gms/internal/qf;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/tq;->zzHz()Lcom/google/android/gms/internal/tq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tq;->zzi(Lcom/google/android/gms/internal/qf;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v1, Lcom/google/firebase/database/zzr;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzr;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/vn;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIk()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/pw;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFq()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/pw;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qf;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/tl;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v2, Lcom/google/firebase/database/zzp;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/zzp;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFq()Lcom/google/android/gms/internal/vp;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/tl;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFq()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qf;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ww;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ww;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xf;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xn;

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/xn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/xf;)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    goto :goto_0
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/wi;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/wi;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/xf;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFn()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIK()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Can\'t call keepSynced() on .info paths."

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    new-instance v1, Lcom/google/firebase/database/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzs;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .locals 5

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/vn;->zzbW(I)Lcom/google/android/gms/internal/vn;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v0
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .locals 5

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit must be a positive integer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/vn;->zzbX(I)Lcom/google/android/gms/internal/vn;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/database/Query;->zzbZn:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v0
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "$key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "$priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "$value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/yw;->zzhb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    new-instance v0, Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->size()I

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/xj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/xj;-><init>(Lcom/google/android/gms/internal/qo;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v4, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/vn;->zza(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/vn;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v0
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vn;->zza(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vn;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vn;->zza(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vn;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-static {}, Lcom/google/android/gms/internal/xo;->zzJk()Lcom/google/android/gms/internal/xo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/vn;->zza(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/vn;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pw;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFq()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/pw;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/tl;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFq()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/tl;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vp;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ww;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ww;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xf;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xn;

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/xn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/xf;)V

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    goto :goto_0
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/wi;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/wi;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/xf;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xf;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    return-object v0
.end method

.method public final zzFp()Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method

.method public final zzFq()Lcom/google/android/gms/internal/vp;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vp;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vp;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;)V

    return-object v0
.end method

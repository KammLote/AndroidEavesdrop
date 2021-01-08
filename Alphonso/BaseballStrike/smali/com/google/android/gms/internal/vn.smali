.class public final Lcom/google/android/gms/internal/vn;
.super Ljava/lang/Object;


# static fields
.field public static final zzcgZ:Lcom/google/android/gms/internal/vn;


# instance fields
.field private zzcgV:Lcom/google/android/gms/internal/wy;

.field private zzcha:Ljava/lang/Integer;

.field private zzchb:I

.field private zzchc:Lcom/google/android/gms/internal/xf;

.field private zzchd:Lcom/google/android/gms/internal/wj;

.field private zzche:Lcom/google/android/gms/internal/xf;

.field private zzchf:Lcom/google/android/gms/internal/wj;

.field private zzchg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vn;->zzcgZ:Lcom/google/android/gms/internal/vn;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    iput-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    iput-object v1, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    iput-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    iput-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchg:Ljava/lang/String;

    return-void
.end method

.method public static zzF(Ljava/util/Map;)Lcom/google/android/gms/internal/vn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/vn;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/vn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/vn;-><init>()V

    const-string v0, "l"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vn;->zze(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    const-string v0, "sn"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    :cond_0
    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ep"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vn;->zze(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    const-string v0, "en"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/wj;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    :cond_1
    const-string v0, "vf"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/gms/internal/vo;->zzchh:I

    :goto_0
    iput v0, v2, Lcom/google/android/gms/internal/vn;->zzchb:I

    :cond_2
    const-string v0, "i"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ".value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/xo;->zzJk()Lcom/google/android/gms/internal/xo;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    :cond_3
    return-object v2

    :cond_4
    sget v0, Lcom/google/android/gms/internal/vo;->zzchi:I

    goto :goto_0

    :cond_5
    const-string v1, ".key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v1, ".priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "queryDefinition shouldn\'t ever be .priority since it\'s the default"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/xj;

    new-instance v3, Lcom/google/android/gms/internal/qo;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/xj;-><init>(Lcom/google/android/gms/internal/qo;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private final zzIm()Lcom/google/android/gms/internal/vn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    iget v1, p0, Lcom/google/android/gms/internal/vn;->zzchb:I

    iput v1, v0, Lcom/google/android/gms/internal/vn;->zzchb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method private static zze(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/internal/xn;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/wi;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/ww;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/internal/wx;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/xd;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ww;

    invoke-interface {p0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ww;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xf;)V

    move-object p0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected value passed to normalizeValue: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/vn;

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    if-nez v2, :cond_7

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    if-nez v2, :cond_a

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    if-nez v2, :cond_d

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    iget-object v3, p1, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    if-nez v2, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIn()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIn()Z

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final getLimit()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public final isDefault()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzId()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIe()Lcom/google/android/gms/internal/xf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzIf()Lcom/google/android/gms/internal/wj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIH()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzIg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIh()Lcom/google/android/gms/internal/xf;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzIi()Lcom/google/android/gms/internal/wj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzIj()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vn;->zzchb:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIl()Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method public final zzIn()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vn;->zzchb:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/vn;->zzchb:I

    sget v1, Lcom/google/android/gms/internal/vo;->zzchh:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    goto :goto_0
.end method

.method public final zzIo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_0

    const-string v0, "sn"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ep"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/xf;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_1

    const-string v0, "en"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "l"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/vn;->zzchb:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/google/android/gms/internal/vo;->zzchh:I

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "i"

    iget-object v2, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wy;->zzJb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1

    :cond_5
    sget v0, Lcom/google/android/gms/internal/vo;->zzchi:I

    goto :goto_0

    :pswitch_0
    const-string v0, "vf"

    const-string v2, "l"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    const-string v0, "vf"

    const-string v2, "r"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzIp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIq()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchg:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yi;->zzak(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vn;->zzchg:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzIr()Lcom/google/android/gms/internal/wa;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIp()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/vy;

    iget-object v1, p0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vy;-><init>(Lcom/google/android/gms/internal/wy;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vn;->zzIj()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/vz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vz;-><init>(Lcom/google/android/gms/internal/vn;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/wc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/wc;-><init>(Lcom/google/android/gms/internal/vn;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/vn;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn;->zzIm()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/vn;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/vn;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/yu;->zzaF(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn;->zzIm()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/vn;->zzchc:Lcom/google/android/gms/internal/xf;

    iput-object p2, v0, Lcom/google/android/gms/internal/vn;->zzchd:Lcom/google/android/gms/internal/wj;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/vn;
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/xd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/yu;->zzaF(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn;->zzIm()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/gms/internal/vn;->zzche:Lcom/google/android/gms/internal/xf;

    iput-object p2, v0, Lcom/google/android/gms/internal/vn;->zzchf:Lcom/google/android/gms/internal/wj;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzbW(I)Lcom/google/android/gms/internal/vn;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn;->zzIm()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    sget v1, Lcom/google/android/gms/internal/vo;->zzchh:I

    iput v1, v0, Lcom/google/android/gms/internal/vn;->zzchb:I

    return-object v0
.end method

.method public final zzbX(I)Lcom/google/android/gms/internal/vn;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/vn;->zzIm()Lcom/google/android/gms/internal/vn;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/vn;->zzcha:Ljava/lang/Integer;

    sget v1, Lcom/google/android/gms/internal/vo;->zzchi:I

    iput v1, v0, Lcom/google/android/gms/internal/vn;->zzchb:I

    return-object v0
.end method

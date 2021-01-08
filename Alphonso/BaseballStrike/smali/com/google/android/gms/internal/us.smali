.class public final Lcom/google/android/gms/internal/us;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/android/gms/internal/qo;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final zzcgt:Lcom/google/android/gms/internal/ng;

.field private static final zzcgu:Lcom/google/android/gms/internal/us;


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcgs:Lcom/google/android/gms/internal/ng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ng",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/wj;

    invoke-static {v0}, Lcom/google/android/gms/internal/oa;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/oa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nh;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ng;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/us;->zzcgt:Lcom/google/android/gms/internal/ng;

    new-instance v0, Lcom/google/android/gms/internal/us;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/us;->zzcgt:Lcom/google/android/gms/internal/ng;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    sput-object v0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/us;->zzcgt:Lcom/google/android/gms/internal/ng;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ng",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    return-void
.end method

.method public static zzHQ()Lcom/google/android/gms/internal/us;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/us",
            "<TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uv;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/uv",
            "<-TT;TR;>;TR;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/us;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-direct {v1, v0, p2, p3}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/uv;->zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3
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
    check-cast p1, Lcom/google/android/gms/internal/us;

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    iget-object v3, p1, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ng;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/android/gms/internal/qo;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/uu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/uu;-><init>(Lcom/google/android/gms/internal/us;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/uv;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImmutableTree { value="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", children={"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->iterator()Ljava/util/Iterator;

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

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "} }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ut;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ut;-><init>(Lcom/google/android/gms/internal/us;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/uv;)V

    return-object v0
.end method

.method public final zzF(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/uw;->zzcgx:Lcom/google/android/gms/internal/uw;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    return-object v0
.end method

.method public final zzG(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")TT;"
        }
    .end annotation

    sget-object v2, Lcom/google/android/gms/internal/uw;->zzcgx:Lcom/google/android/gms/internal/uw;

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wj;

    iget-object v4, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    :cond_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object p1

    move-object p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    goto :goto_1
.end method

.method public final zzHR()Lcom/google/android/gms/internal/ng;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ng",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    return-object v0
.end method

.method public final zzI(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/us;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/us;->zzI(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/ng;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ng;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ng;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/us;

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public final zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")TT;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object p1

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Lcom/google/android/gms/internal/qo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/uw",
            "<-TT;>;)",
            "Lcom/google/android/gms/internal/qo;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/qo;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/wj;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/qo;-><init>([Lcom/google/android/gms/internal/wj;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->zzX(Ljava/lang/Object;)Lcom/google/android/gms/internal/ng;

    move-result-object v0

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/us;

    iget-object v1, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-direct {p2, v1, v0}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ng;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ng;

    move-result-object v0

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/uv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uv",
            "<TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uv;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "TT;)",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/us;

    iget-object v1, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ng;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ng;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/us;

    iget-object v2, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ng;)V

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uw;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/uw",
            "<-TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wj;

    iget-object v3, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/uv;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/google/android/gms/internal/uv",
            "<-TT;TR;>;)TR;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/us;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/uv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/uw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uw",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/uw;->zzaj(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/uw;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zze(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/us;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/wj;",
            ")",
            "Lcom/google/android/gms/internal/us",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/us;->zzcgs:Lcom/google/android/gms/internal/ng;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ng;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/us;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/us;->zzcgu:Lcom/google/android/gms/internal/us;

    goto :goto_0
.end method

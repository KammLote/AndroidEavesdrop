.class public final Lcom/google/android/gms/internal/uy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzcgA:Lcom/google/android/gms/internal/vc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private zzcgy:Lcom/google/android/gms/internal/wj;

.field private zzcgz:Lcom/google/android/gms/internal/uy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/uy",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/vc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vc;-><init>()V

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/gms/internal/uy;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vc;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/wj;",
            "Lcom/google/android/gms/internal/uy",
            "<TT;>;",
            "Lcom/google/android/gms/internal/vc",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    iput-object p2, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    iput-object p3, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    return-void
.end method

.method private final zzHS()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    iget-object v2, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    iget-object v1, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v1, v1, Lcom/google/android/gms/internal/vc;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v1, v1, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v3, v3, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v1, v1, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v1, v1, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vc;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iput-object p1, v0, Lcom/google/android/gms/internal/vc;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/uy;->zzHS()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    if-nez v0, :cond_0

    const-string v0, "<anon>"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/vc;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzFp()Lcom/google/android/gms/internal/qo;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/uy;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/qo;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/wj;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/uy;->zzcgy:Lcom/google/android/gms/internal/wj;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/qo;-><init>([Lcom/google/android/gms/internal/wj;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzK(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/uy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            ")",
            "Lcom/google/android/gms/internal/uy",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vc;

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/uy;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/uy;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    move-object v1, v0

    move-object p0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vc;-><init>()V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/vb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgA:Lcom/google/android/gms/internal/vc;

    iget-object v0, v0, Lcom/google/android/gms/internal/vc;->zzceA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_0

    aget-object v0, v3, v2

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/uy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vc;

    invoke-direct {v4, v1, p0, v0}, Lcom/google/android/gms/internal/uy;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vc;)V

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/vb;->zzd(Lcom/google/android/gms/internal/uy;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vb;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vb",
            "<TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vb;->zzd(Lcom/google/android/gms/internal/uy;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/uz;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/uz;-><init>(Lcom/google/android/gms/internal/uy;Lcom/google/android/gms/internal/vb;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/uy;->zza(Lcom/google/android/gms/internal/vb;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vb;->zzd(Lcom/google/android/gms/internal/uy;)V

    :cond_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/va;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/va",
            "<TT;>;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/va;->zze(Lcom/google/android/gms/internal/uy;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/uy;->zzcgz:Lcom/google/android/gms/internal/uy;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

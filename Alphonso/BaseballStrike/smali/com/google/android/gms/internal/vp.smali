.class public final Lcom/google/android/gms/internal/vp;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZi:Lcom/google/android/gms/internal/qo;

.field private final zzbZm:Lcom/google/android/gms/internal/vn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    iput-object p2, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    return-void
.end method

.method public static zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vp;

    sget-object v1, Lcom/google/android/gms/internal/vn;->zzcgZ:Lcom/google/android/gms/internal/vn;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/vp;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/vn;)V

    return-object v0
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
    check-cast p1, Lcom/google/android/gms/internal/vp;

    iget-object v2, p0, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    iget-object v3, p1, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    iget-object v3, p1, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/vn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vn;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFp()Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method

.method public final zzIl()Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    return-object v0
.end method

.method public final zzIp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vn;->zzIp()Z

    move-result v0

    return v0
.end method

.method public final zzIs()Lcom/google/android/gms/internal/vn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vp;->zzbZm:Lcom/google/android/gms/internal/vn;

    return-object v0
.end method

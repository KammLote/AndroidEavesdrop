.class public final Lcom/google/android/gms/internal/xj;
.super Lcom/google/android/gms/internal/wy;


# instance fields
.field private final zzcix:Lcom/google/android/gms/internal/qo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qo;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->zzIL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/xe;

    check-cast p2, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xf;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wj;->zzi(Lcom/google/android/gms/internal/wj;)I

    move-result v0

    :cond_0
    return v0
.end method

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
    check-cast p1, Lcom/google/android/gms/internal/xj;

    iget-object v2, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    iget-object v3, p1, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/qo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzJa()Lcom/google/android/gms/internal/xe;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    sget-object v2, Lcom/google/android/gms/internal/xf;->zzcit:Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wx;->zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v1
.end method

.method public final zzJb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzGZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/wx;->zzl(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    return-object v1
.end method

.method public final zzi(Lcom/google/android/gms/internal/xf;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xj;->zzcix:Lcom/google/android/gms/internal/qo;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

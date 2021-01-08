.class public final Lcom/google/android/gms/internal/tr;
.super Lcom/google/android/gms/internal/tu;


# instance fields
.field private final zzcfD:Z

.field private final zzcfE:Lcom/google/android/gms/internal/us;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qo;",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/tv;->zzcfK:Lcom/google/android/gms/internal/tv;

    sget-object v1, Lcom/google/android/gms/internal/tw;->zzcfN:Lcom/google/android/gms/internal/tw;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/tr;->zzcfD:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tr;->zzcfD:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHA()Lcom/google/android/gms/internal/us;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/us",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    return-object v0
.end method

.method public final zzHB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tr;->zzcfD:Z

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "operationForChild called for unrelated child."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/tr;

    iget-object v1, p0, Lcom/google/android/gms/internal/tr;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tr;->zzcfD:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tr;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;Z)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/us;->zzHR()Lcom/google/android/gms/internal/ng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ng;->isEmpty()Z

    move-result v0

    const-string v1, "affectedTree should not have overlapping affected paths."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/tr;->zzcfE:Lcom/google/android/gms/internal/us;

    new-instance v1, Lcom/google/android/gms/internal/qo;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/wj;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/qo;-><init>([Lcom/google/android/gms/internal/wj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/us;->zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/tr;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/tr;->zzcfD:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/tr;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;Z)V

    move-object p0, v0

    goto :goto_0
.end method

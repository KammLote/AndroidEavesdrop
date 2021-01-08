.class public final Lcom/google/android/gms/internal/ts;
.super Lcom/google/android/gms/internal/tu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/tv;->zzcfL:Lcom/google/android/gms/internal/tv;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzcfH:Lcom/google/android/gms/internal/tw;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ts;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfH:Lcom/google/android/gms/internal/tw;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ts;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ts;->zzcfH:Lcom/google/android/gms/internal/tw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ts;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ts;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    goto :goto_0
.end method

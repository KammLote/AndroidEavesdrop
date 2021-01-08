.class public final Lcom/google/android/gms/internal/tt;
.super Lcom/google/android/gms/internal/tu;


# instance fields
.field private final zzcfF:Lcom/google/android/gms/internal/px;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/tv;->zzcfJ:Lcom/google/android/gms/internal/tv;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/tt;->zzcfF:Lcom/google/android/gms/internal/px;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzcfH:Lcom/google/android/gms/internal/tw;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/tt;->zzcfF:Lcom/google/android/gms/internal/px;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHC()Lcom/google/android/gms/internal/px;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tt;->zzcfF:Lcom/google/android/gms/internal/px;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/tt;->zzcfF:Lcom/google/android/gms/internal/px;

    new-instance v2, Lcom/google/android/gms/internal/qo;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/wj;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/qo;-><init>([Lcom/google/android/gms/internal/wj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/px;->zzg(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/px;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/px;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/px;->zzGI()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ty;

    iget-object v2, p0, Lcom/google/android/gms/internal/tt;->zzcfH:Lcom/google/android/gms/internal/tw;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/px;->zzGI()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ty;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/tt;

    iget-object v2, p0, Lcom/google/android/gms/internal/tt;->zzcfH:Lcom/google/android/gms/internal/tw;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/tt;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/tt;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/tt;

    iget-object v1, p0, Lcom/google/android/gms/internal/tt;->zzcfH:Lcom/google/android/gms/internal/tw;

    iget-object v2, p0, Lcom/google/android/gms/internal/tt;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/tt;->zzcfF:Lcom/google/android/gms/internal/px;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/tt;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    goto :goto_0
.end method

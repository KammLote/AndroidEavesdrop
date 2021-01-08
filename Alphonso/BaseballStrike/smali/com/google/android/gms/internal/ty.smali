.class public final Lcom/google/android/gms/internal/ty;
.super Lcom/google/android/gms/internal/tu;


# instance fields
.field private final zzcfV:Lcom/google/android/gms/internal/xf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/tv;->zzcfI:Lcom/google/android/gms/internal/tv;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tu;-><init>(Lcom/google/android/gms/internal/tv;Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ty;->zzcfV:Lcom/google/android/gms/internal/xf;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzbZi:Lcom/google/android/gms/internal/qo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/tu;->zzcfH:Lcom/google/android/gms/internal/tw;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ty;->zzcfV:Lcom/google/android/gms/internal/xf;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHI()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->zzcfV:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ty;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ty;->zzcfH:Lcom/google/android/gms/internal/tw;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ty;->zzcfV:Lcom/google/android/gms/internal/xf;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ty;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ty;->zzcfH:Lcom/google/android/gms/internal/tw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ty;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qo;->zzHc()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ty;->zzcfV:Lcom/google/android/gms/internal/xf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ty;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    goto :goto_0
.end method

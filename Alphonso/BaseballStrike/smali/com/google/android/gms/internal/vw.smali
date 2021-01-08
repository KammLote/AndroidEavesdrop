.class final Lcom/google/android/gms/internal/vw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wb;


# instance fields
.field private final zzchl:Lcom/google/android/gms/internal/vs;

.field private final zzchu:Lcom/google/android/gms/internal/tp;

.field private final zzchv:Lcom/google/android/gms/internal/xf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/vs;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vw;->zzchu:Lcom/google/android/gms/internal/tp;

    iput-object p2, p0, Lcom/google/android/gms/internal/vw;->zzchl:Lcom/google/android/gms/internal/vs;

    iput-object p3, p0, Lcom/google/android/gms/internal/vw;->zzchv:Lcom/google/android/gms/internal/xf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/xe;Z)Lcom/google/android/gms/internal/xe;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchv:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchv:Lcom/google/android/gms/internal/xf;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->zzchu:Lcom/google/android/gms/internal/tp;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xe;ZLcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/xe;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIz()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzh(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIw()Lcom/google/android/gms/internal/vd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vd;->zzf(Lcom/google/android/gms/internal/wj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchv:Lcom/google/android/gms/internal/xf;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/vd;

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->zzchv:Lcom/google/android/gms/internal/xf;

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->zzchu:Lcom/google/android/gms/internal/tp;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/vd;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchl:Lcom/google/android/gms/internal/vs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vs;->zzIy()Lcom/google/android/gms/internal/vd;

    move-result-object v0

    goto :goto_1
.end method

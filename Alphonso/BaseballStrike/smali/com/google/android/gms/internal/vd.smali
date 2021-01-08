.class public final Lcom/google/android/gms/internal/vd;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgD:Lcom/google/android/gms/internal/wz;

.field private final zzcgE:Z

.field private final zzcgF:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wz;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vd;->zzcgD:Lcom/google/android/gms/internal/wz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/vd;->zzcgE:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/vd;->zzcgF:Z

    return-void
.end method


# virtual methods
.method public final zzFm()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vd;->zzcgD:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zzHT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgE:Z

    return v0
.end method

.method public final zzHU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgF:Z

    return v0
.end method

.method public final zzHV()Lcom/google/android/gms/internal/wz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vd;->zzcgD:Lcom/google/android/gms/internal/wz;

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/internal/qo;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qo;->zzHb()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vd;->zzf(Lcom/google/android/gms/internal/wj;)Z

    move-result v0

    goto :goto_0
.end method

.method public final zzf(Lcom/google/android/gms/internal/wj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vd;->zzcgF:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vd;->zzcgD:Lcom/google/android/gms/internal/wz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/wj;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

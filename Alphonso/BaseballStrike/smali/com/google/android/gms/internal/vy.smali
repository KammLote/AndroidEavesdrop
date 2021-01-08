.class public final Lcom/google/android/gms/internal/vy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wa;


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/wy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vy;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-void
.end method


# virtual methods
.method public final zzIB()Lcom/google/android/gms/internal/wa;
    .locals 0

    return-object p0
.end method

.method public final zzIC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzIl()Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vy;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/wb;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v2

    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p6, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/wj;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/vf;->zzd(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/wz;->zzg(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vf;->zzc(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    goto :goto_1

    :cond_5
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/vf;->zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;
    .locals 4

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/wj;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/vf;->zzd(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/wj;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/vf;->zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/vf;->zzc(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vf;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vf;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/wz;->zzk(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object p1

    goto :goto_0
.end method

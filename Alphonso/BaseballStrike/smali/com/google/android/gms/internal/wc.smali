.class public final Lcom/google/android/gms/internal/wc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wa;


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/wy;

.field private final zzchA:Lcom/google/android/gms/internal/xe;

.field private final zzchB:Lcom/google/android/gms/internal/xe;

.field private final zzchz:Lcom/google/android/gms/internal/vy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/vy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vy;-><init>(Lcom/google/android/gms/internal/wy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchz:Lcom/google/android/gms/internal/vy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wc;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIf()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIe()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/wy;->zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchA:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIh()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/wy;->zzf(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xe;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchB:Lcom/google/android/gms/internal/xe;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    invoke-static {}, Lcom/google/android/gms/internal/xe;->zzJg()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vn;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wy;->zzJa()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final zzIB()Lcom/google/android/gms/internal/wa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchz:Lcom/google/android/gms/internal/vy;

    return-object v0
.end method

.method public final zzIC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzID()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchA:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zzIE()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchB:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zzIl()Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzcgV:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/wb;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/xe;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchz:Lcom/google/android/gms/internal/vy;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vy;->zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/wb;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v3, p3

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wz;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wc;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzchz:Lcom/google/android/gms/internal/vy;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/internal/vy;->zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/vx;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/wz;->zzk(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wz;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/xe;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/wz;->zzg(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;
    .locals 0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xe;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzcgV:Lcom/google/android/gms/internal/wy;

    iget-object v1, p0, Lcom/google/android/gms/internal/wc;->zzchA:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wy;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wc;->zzcgV:Lcom/google/android/gms/internal/wy;

    iget-object v1, p0, Lcom/google/android/gms/internal/wc;->zzchB:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/wy;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

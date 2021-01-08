.class public final Lcom/google/android/gms/internal/tp;
.super Ljava/lang/Object;


# instance fields
.field private final zzcfA:Lcom/google/android/gms/internal/tm;

.field private final zzcfz:Lcom/google/android/gms/internal/qo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/tm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    iput-object p2, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xe;ZLcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/xe;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xe;ZLcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/xe;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/vd;)Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/vd;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tp;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/tp;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/tm;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v2, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/tm;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Ljava/util/List;Z)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/tm;->zzj(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

.method public final zzu(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tp;->zzcfA:Lcom/google/android/gms/internal/tm;

    iget-object v1, p0, Lcom/google/android/gms/internal/tp;->zzcfz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/tm;->zzu(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

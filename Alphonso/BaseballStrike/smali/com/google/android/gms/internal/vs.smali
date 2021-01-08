.class public final Lcom/google/android/gms/internal/vs;
.super Ljava/lang/Object;


# instance fields
.field private final zzchq:Lcom/google/android/gms/internal/vd;

.field private final zzchr:Lcom/google/android/gms/internal/vd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vd;Lcom/google/android/gms/internal/vd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vs;->zzchq:Lcom/google/android/gms/internal/vd;

    iput-object p2, p0, Lcom/google/android/gms/internal/vs;->zzchr:Lcom/google/android/gms/internal/vd;

    return-void
.end method


# virtual methods
.method public final zzIw()Lcom/google/android/gms/internal/vd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchq:Lcom/google/android/gms/internal/vd;

    return-object v0
.end method

.method public final zzIx()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchq:Lcom/google/android/gms/internal/vd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchq:Lcom/google/android/gms/internal/vd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzIy()Lcom/google/android/gms/internal/vd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchr:Lcom/google/android/gms/internal/vd;

    return-object v0
.end method

.method public final zzIz()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchr:Lcom/google/android/gms/internal/vd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzHT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vs;->zzchr:Lcom/google/android/gms/internal/vd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vd;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/wz;ZZ)Lcom/google/android/gms/internal/vs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vs;

    new-instance v1, Lcom/google/android/gms/internal/vd;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    iget-object v2, p0, Lcom/google/android/gms/internal/vs;->zzchr:Lcom/google/android/gms/internal/vd;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vs;-><init>(Lcom/google/android/gms/internal/vd;Lcom/google/android/gms/internal/vd;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/wz;ZZ)Lcom/google/android/gms/internal/vs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vs;

    iget-object v1, p0, Lcom/google/android/gms/internal/vs;->zzchq:Lcom/google/android/gms/internal/vd;

    new-instance v2, Lcom/google/android/gms/internal/vd;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vs;-><init>(Lcom/google/android/gms/internal/vd;Lcom/google/android/gms/internal/vd;)V

    return-object v0
.end method

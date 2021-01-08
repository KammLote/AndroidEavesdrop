.class final Lcom/google/android/gms/internal/zzbnh;
.super Lcom/google/android/gms/internal/zzbnl;


# instance fields
.field private synthetic zzaOz:Lcom/google/android/gms/internal/zzbng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnh;->zzaOz:Lcom/google/android/gms/internal/zzbng;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnl;-><init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnh;->zzaOz:Lcom/google/android/gms/internal/zzbng;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/internal/zzbnj;-><init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbnh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbol;->zzb(Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

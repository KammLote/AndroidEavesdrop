.class final Lcom/google/android/gms/internal/zzbyz;
.super Lcom/google/android/gms/internal/zzbvq;


# instance fields
.field private synthetic zzaWc:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyz;->zzaWc:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvn;

    new-instance v1, Lcom/google/android/gms/internal/zzbzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzh;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvn;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwu;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzay;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyz;->zzaWc:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzay;-><init>(Lcom/google/android/gms/fitness/data/Session;Lcom/google/android/gms/internal/zzbxf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwu;->zza(Lcom/google/android/gms/fitness/request/zzay;)V

    return-void
.end method

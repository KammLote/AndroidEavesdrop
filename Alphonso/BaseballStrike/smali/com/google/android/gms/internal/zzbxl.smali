.class final Lcom/google/android/gms/internal/zzbxl;
.super Lcom/google/android/gms/internal/zzbur;


# instance fields
.field private synthetic zzaVz:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/BleScanCallback;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbxl;->zzaVz:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbur;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbuo;

    new-instance v1, Lcom/google/android/gms/internal/zzbzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzh;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuo;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwg;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxl;->zzaVz:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzbg;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/internal/zzbxf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwg;->zza(Lcom/google/android/gms/fitness/request/zzbg;)V

    return-void
.end method
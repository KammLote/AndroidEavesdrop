.class final Lcom/google/android/gms/internal/zzbxp;
.super Lcom/google/android/gms/internal/zzbup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbup",
        "<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxj;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbup;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbuo;

    new-instance v1, Lcom/google/android/gms/internal/zzbxq;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbxq;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbxk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuo;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwg;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/zzag;-><init>(Lcom/google/android/gms/internal/zzbzj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwg;->zza(Lcom/google/android/gms/fitness/request/zzag;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

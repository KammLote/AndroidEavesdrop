.class final Lcom/google/android/gms/internal/zzbyl;
.super Lcom/google/android/gms/internal/zzbvg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvg",
        "<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyk;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    const/4 v3, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzbvf;

    new-instance v1, Lcom/google/android/gms/internal/zzbyq;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzbyq;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbyl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvf;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwq;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzai;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzai;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzbww;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwq;->zza(Lcom/google/android/gms/fitness/request/zzai;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzD(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

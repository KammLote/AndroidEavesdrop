.class final Lcom/google/android/gms/internal/zzcly;
.super Lcom/google/android/gms/internal/zzcmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzclm;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzckl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnc;

    new-instance v1, Lcom/google/android/gms/internal/zzcpa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcpa;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzcpa;)V

    return-void
.end method

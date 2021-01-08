.class final Lcom/google/android/gms/internal/zzccf;
.super Lcom/google/android/gms/internal/zzccl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcca;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdi;

    new-instance v0, Lcom/google/android/gms/internal/zzccm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcdi;->zza(Lcom/google/android/gms/internal/zzcct;)V

    return-void
.end method

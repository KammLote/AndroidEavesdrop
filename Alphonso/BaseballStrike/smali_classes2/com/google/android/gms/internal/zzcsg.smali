.class final Lcom/google/android/gms/internal/zzcsg;
.super Lcom/google/android/gms/internal/zzcrz$zze;


# instance fields
.field private synthetic zzbBU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcrz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcsg;->zzbBU:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcrz$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsg;->zzbBW:Lcom/google/android/gms/internal/zzcrv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcsg;->zzbBU:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcsm;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcrx;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcrx;->zza(Lcom/google/android/gms/internal/zzcrv;Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzccj;
.super Lcom/google/android/gms/internal/zzccl;


# instance fields
.field private synthetic zzbiE:Lcom/google/android/gms/location/LocationListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcca;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzccj;->zzbiE:Lcom/google/android/gms/location/LocationListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzcdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccj;->zzbiE:Lcom/google/android/gms/location/LocationListener;

    const-class v1, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbdz;->zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbdx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzccm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcdi;->zza(Lcom/google/android/gms/internal/zzbdx;Lcom/google/android/gms/internal/zzcct;)V

    return-void
.end method

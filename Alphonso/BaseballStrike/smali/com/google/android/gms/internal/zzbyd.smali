.class final Lcom/google/android/gms/internal/zzbyd;
.super Lcom/google/android/gms/internal/zzbvc;


# instance fields
.field private synthetic zzaVK:Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyd;->zzaVK:Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbuz;

    new-instance v1, Lcom/google/android/gms/internal/zzbzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzh;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuz;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwm;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyd;->zzaVK:Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;Landroid/os/IBinder;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwm;->zza(Lcom/google/android/gms/fitness/request/DataUpdateListenerRegistrationRequest;)V

    return-void
.end method

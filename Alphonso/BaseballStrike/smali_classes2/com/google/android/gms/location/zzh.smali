.class final Lcom/google/android/gms/location/zzh;
.super Lcom/google/android/gms/internal/zzbex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbex",
        "<",
        "Lcom/google/android/gms/internal/zzcdi;",
        "Lcom/google/android/gms/location/LocationCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/internal/zzbdx;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbex;-><init>(Lcom/google/android/gms/internal/zzbdx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzc(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdi;

    invoke-virtual {p0}, Lcom/google/android/gms/location/zzh;->zzqG()Lcom/google/android/gms/internal/zzbdx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzcdi;->zzb(Lcom/google/android/gms/internal/zzbdx;Lcom/google/android/gms/internal/zzcct;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzccg;
.super Lcom/google/android/gms/internal/zzccl;


# instance fields
.field private synthetic zzbiD:Lcom/google/android/gms/location/LocationRequest;

.field private synthetic zzbiE:Lcom/google/android/gms/location/LocationListener;

.field private synthetic zzbiI:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcca;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzccg;->zzbiD:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzccg;->zzbiE:Lcom/google/android/gms/location/LocationListener;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzccg;->zzbiI:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdi;

    new-instance v0, Lcom/google/android/gms/internal/zzccm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzccm;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzccg;->zzbiD:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzccg;->zzbiE:Lcom/google/android/gms/location/LocationListener;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzccg;->zzbiI:Landroid/os/Looper;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcea;->zzb(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzbdz;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbdv;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/zzcdi;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzbdv;Lcom/google/android/gms/internal/zzcct;)V

    return-void
.end method

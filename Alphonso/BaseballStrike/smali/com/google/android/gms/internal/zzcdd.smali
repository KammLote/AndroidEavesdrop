.class final Lcom/google/android/gms/internal/zzcdd;
.super Lcom/google/android/gms/location/zzk;


# instance fields
.field private final zzaEU:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdd;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcdf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcdf;-><init>(Lcom/google/android/gms/internal/zzcdd;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcde;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcde;-><init>(Lcom/google/android/gms/internal/zzcdd;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdv;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

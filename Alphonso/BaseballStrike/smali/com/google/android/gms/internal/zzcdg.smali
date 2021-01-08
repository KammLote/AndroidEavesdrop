.class final Lcom/google/android/gms/internal/zzcdg;
.super Lcom/google/android/gms/location/zzn;


# instance fields
.field private final zzaEU:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
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
            "Lcom/google/android/gms/location/LocationListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdg;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdg;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcdh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcdh;-><init>(Lcom/google/android/gms/internal/zzcdg;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdg;->zzaEU:Lcom/google/android/gms/internal/zzbdv;

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

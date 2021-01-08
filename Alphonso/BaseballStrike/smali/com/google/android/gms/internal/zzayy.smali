.class final Lcom/google/android/gms/internal/zzayy;
.super Lcom/google/android/gms/internal/zzaza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaza;-><init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayy;->zza(Lcom/google/android/gms/internal/zzaze;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzazc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzazc;-><init>(Lcom/google/android/gms/internal/zzaza;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaze;->zza(Lcom/google/android/gms/internal/zzazg;)V

    return-void
.end method

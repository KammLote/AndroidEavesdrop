.class final Lcom/google/android/gms/games/internal/api/zzdt;
.super Lcom/google/android/gms/games/internal/api/zzdz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzdr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzdz;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzds;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzi(Lcom/google/android/gms/internal/zzbay;)V

    return-void
.end method

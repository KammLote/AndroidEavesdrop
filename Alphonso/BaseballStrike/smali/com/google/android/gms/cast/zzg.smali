.class final Lcom/google/android/gms/cast/zzg;
.super Lcom/google/android/gms/cast/Cast$zza;


# instance fields
.field private synthetic zzaoR:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/cast/zzg;->zzaoR:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/Cast$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzaxw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzg;->zza(Lcom/google/android/gms/internal/zzaxw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaxw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzg;->zzaoR:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {v1}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/LaunchOptions;->setRelaunchIfRunning(Z)V

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/zzaxw;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/internal/zzbay;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/zzg;->zzad(I)V

    goto :goto_0
.end method

.class final Lcom/google/android/gms/nearby/messages/internal/zzas;
.super Lcom/google/android/gms/nearby/messages/internal/zzav;


# instance fields
.field private synthetic zzaVL:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzaVL:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzzX()Lcom/google/android/gms/internal/zzbdv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzas;->zzaVL:Landroid/app/PendingIntent;

    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzbe;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzcpp;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzcpp;-><init>(Lcom/google/android/gms/internal/zzbdv;)V

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/nearby/messages/internal/zzbe;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbe;)V

    return-void
.end method

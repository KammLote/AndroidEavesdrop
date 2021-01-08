.class final Lcom/google/android/gms/internal/zzcre;
.super Lcom/google/android/gms/internal/zzcrf;


# instance fields
.field private synthetic zzbAR:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqz;Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcre;->zzbAR:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcrf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcra;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcre;->zzbAR:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zzh;->zzc(Lcom/google/android/gms/internal/zzbay;[Ljava/lang/String;)V

    return-void
.end method

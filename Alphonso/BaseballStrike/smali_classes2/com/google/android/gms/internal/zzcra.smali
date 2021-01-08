.class final Lcom/google/android/gms/internal/zzcra;
.super Lcom/google/android/gms/internal/zzcrf;


# instance fields
.field private synthetic zzbAO:I

.field private synthetic zzbAP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqz;Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)V
    .locals 1

    iput p3, p0, Lcom/google/android/gms/internal/zzcra;->zzbAO:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcra;->zzbAP:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcrf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcra;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/plus/internal/zzh;

    iget v0, p0, Lcom/google/android/gms/internal/zzcra;->zzbAO:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcra;->zzbAP:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/zzh;->zza(Lcom/google/android/gms/internal/zzbay;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcra;->zza(Lcom/google/android/gms/common/internal/zzao;)V

    return-void
.end method

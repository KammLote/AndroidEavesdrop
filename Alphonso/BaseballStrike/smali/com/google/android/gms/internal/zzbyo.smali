.class final Lcom/google/android/gms/internal/zzbyo;
.super Lcom/google/android/gms/internal/zzbvi;


# instance fields
.field private synthetic zzaVN:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyo;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvf;

    new-instance v1, Lcom/google/android/gms/internal/zzbzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzh;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvf;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwq;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyo;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzbm;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzbxf;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwq;->zza(Lcom/google/android/gms/fitness/request/zzbm;)V

    return-void
.end method
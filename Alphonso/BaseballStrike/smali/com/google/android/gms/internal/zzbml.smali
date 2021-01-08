.class final Lcom/google/android/gms/internal/zzbml;
.super Lcom/google/android/gms/internal/zzbmf;


# instance fields
.field private synthetic zzaOf:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmg;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbml;->zzaOf:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbkt;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbml;->zzaOf:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbkt;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbkt;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

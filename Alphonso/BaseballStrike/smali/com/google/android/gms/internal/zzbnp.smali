.class final Lcom/google/android/gms/internal/zzbnp;
.super Lcom/google/android/gms/internal/zzbmf;


# instance fields
.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnm;

.field private synthetic zzaOE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOE:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbqn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbnm;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnp;->zzaOE:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqn;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbqn;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

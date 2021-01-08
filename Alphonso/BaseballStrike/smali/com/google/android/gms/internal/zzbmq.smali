.class final Lcom/google/android/gms/internal/zzbmq;
.super Lcom/google/android/gms/internal/zzbmf;


# instance fields
.field private synthetic zzaOj:Lcom/google/android/gms/internal/zzbmm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmm;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmq;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

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

    new-instance v1, Lcom/google/android/gms/internal/zzbkx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmq;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbmm;->zza(Lcom/google/android/gms/internal/zzbmm;)Lcom/google/android/gms/drive/zzc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbkx;-><init>(IZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbkx;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

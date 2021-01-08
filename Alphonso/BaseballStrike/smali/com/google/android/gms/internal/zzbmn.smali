.class final Lcom/google/android/gms/internal/zzbmn;
.super Lcom/google/android/gms/internal/zzblw;


# instance fields
.field private synthetic zzaOj:Lcom/google/android/gms/internal/zzbmm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmm;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzblw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbqa;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbmm;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/high16 v3, 0x20000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbmn;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbmm;->zza(Lcom/google/android/gms/internal/zzbmm;)Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbqa;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbqa;Lcom/google/android/gms/internal/zzbon;)Lcom/google/android/gms/internal/zzbnz;

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzbms;
.super Lcom/google/android/gms/internal/zzblw;


# instance fields
.field private synthetic zzaNL:I

.field private synthetic zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field private synthetic zzaOn:Lcom/google/android/gms/internal/zzbmr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmr;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbms;->zzaOn:Lcom/google/android/gms/internal/zzbmr;

    iput p3, p0, Lcom/google/android/gms/internal/zzbms;->zzaNL:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbms;->zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbms;->zzaOn:Lcom/google/android/gms/internal/zzbmr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbmr;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbms;->zzaNL:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbqa;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbms;->zzaOm:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzbqc;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbqa;Lcom/google/android/gms/internal/zzbon;)Lcom/google/android/gms/internal/zzbnz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbnz;->zzaOG:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzap;->zzH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbms;->zza(Lcom/google/android/gms/common/internal/zzao;)V

    return-void
.end method

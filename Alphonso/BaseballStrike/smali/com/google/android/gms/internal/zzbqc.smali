.class final Lcom/google/android/gms/internal/zzbqc;
.super Lcom/google/android/gms/internal/zzbks;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaPp:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveContentsResult;",
            ">;",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqc;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqc;->zzaPp:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    new-instance v1, Lcom/google/android/gms/internal/zzblv;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzblv;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzboy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzboy;->zzaOV:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqc;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    new-instance v2, Lcom/google/android/gms/internal/zzblv;

    new-instance v3, Lcom/google/android/gms/internal/zzbmm;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzboy;->zzaOg:Lcom/google/android/gms/drive/zzc;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzbmm;-><init>(Lcom/google/android/gms/drive/zzc;)V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzblv;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveContents;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzaPp:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqc;->zzaPp:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbpc;->zzaOY:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbpc;->zzaOZ:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;->onProgress(JJ)V

    :cond_0
    return-void
.end method

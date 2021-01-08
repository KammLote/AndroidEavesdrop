.class final Lcom/google/android/gms/internal/zzbmy;
.super Lcom/google/android/gms/internal/zzbne;


# instance fields
.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOv:Lcom/google/android/gms/internal/zzbmw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOv:Lcom/google/android/gms/internal/zzbmw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbne;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzblg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOv:Lcom/google/android/gms/internal/zzbmw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbmw;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbmy;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzblg;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbna;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbna;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzblg;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzbmx;
.super Lcom/google/android/gms/internal/zzbnc;


# instance fields
.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOs:I

.field private synthetic zzaOt:I

.field private synthetic zzaOu:Lcom/google/android/gms/drive/zzm;

.field private synthetic zzaOv:Lcom/google/android/gms/internal/zzbmw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmw;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOv:Lcom/google/android/gms/internal/zzbmw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOs:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOt:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOu:Lcom/google/android/gms/drive/zzm;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzble;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOv:Lcom/google/android/gms/internal/zzbmw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmw;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOs:I

    iget v4, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOt:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbmx;->zzaOu:Lcom/google/android/gms/drive/zzm;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzble;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbol;

    new-instance v2, Lcom/google/android/gms/internal/zzbmz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbmz;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzble;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

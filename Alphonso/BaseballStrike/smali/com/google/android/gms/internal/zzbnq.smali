.class final Lcom/google/android/gms/internal/zzbnq;
.super Lcom/google/android/gms/internal/zzbnx;


# instance fields
.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnm;

.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbnx;-><init>(Lcom/google/android/gms/internal/zzbnm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbnn;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbqw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbnm;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqw;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbnv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbnv;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

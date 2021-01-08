.class final Lcom/google/android/gms/internal/zzbmo;
.super Lcom/google/android/gms/internal/zzbmf;


# instance fields
.field private synthetic zzaOj:Lcom/google/android/gms/internal/zzbmm;

.field private synthetic zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private synthetic zzaOl:Lcom/google/android/gms/drive/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOl:Lcom/google/android/gms/drive/zzp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzbol;

    new-instance v0, Lcom/google/android/gms/internal/zzbkv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbmm;->zza(Lcom/google/android/gms/internal/zzbmm;)Lcom/google/android/gms/drive/zzc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzc;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOk:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbmm;->zza(Lcom/google/android/gms/internal/zzbmm;)Lcom/google/android/gms/drive/zzc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOj:Lcom/google/android/gms/internal/zzbmm;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbmm;->zza(Lcom/google/android/gms/internal/zzbmm;)Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->zzsK()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbmo;->zzaOl:Lcom/google/android/gms/drive/zzp;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkv;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IZLcom/google/android/gms/drive/zzp;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v6, v0, v1}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbkv;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

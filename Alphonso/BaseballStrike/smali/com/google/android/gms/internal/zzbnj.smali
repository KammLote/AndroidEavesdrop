.class final Lcom/google/android/gms/internal/zzbnj;
.super Lcom/google/android/gms/internal/zzbks;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic zzaOz:Lcom/google/android/gms/internal/zzbng;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/drive/DrivePreferencesApi$FileUploadPreferencesResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnj;->zzaOz:Lcom/google/android/gms/internal/zzbng;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbks;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnj;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbnh;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnj;-><init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/internal/zzbay;)V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    new-instance v1, Lcom/google/android/gms/internal/zzbnk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnj;->zzaOz:Lcom/google/android/gms/internal/zzbng;

    invoke-direct {v1, v2, p1, v3, v3}, Lcom/google/android/gms/internal/zzbnk;-><init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbnh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbpa;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    new-instance v1, Lcom/google/android/gms/internal/zzbnk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnj;->zzaOz:Lcom/google/android/gms/internal/zzbng;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbpa;->zzaOW:Lcom/google/android/gms/internal/zzbof;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzbnk;-><init>(Lcom/google/android/gms/internal/zzbng;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/FileUploadPreferences;Lcom/google/android/gms/internal/zzbnh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

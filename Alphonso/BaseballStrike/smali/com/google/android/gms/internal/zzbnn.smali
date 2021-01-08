.class final Lcom/google/android/gms/internal/zzbnn;
.super Lcom/google/android/gms/internal/zzbnx;


# instance fields
.field private synthetic zzaOC:Z

.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnm;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnn;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbnn;->zzaOC:Z

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

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzboh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnn;->zzaOD:Lcom/google/android/gms/internal/zzbnm;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbnm;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbnn;->zzaOC:Z

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzboh;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzbnv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbnv;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzboh;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

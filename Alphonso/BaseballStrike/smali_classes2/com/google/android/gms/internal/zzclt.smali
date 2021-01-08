.class final Lcom/google/android/gms/internal/zzclt;
.super Lcom/google/android/gms/internal/zzcmi;


# instance fields
.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxg:[B

.field private synthetic zzbxi:Lcom/google/android/gms/internal/zzbdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzbdv;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclt;->zzbxb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclt;->zzbxg:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzclt;->zzbxi:Lcom/google/android/gms/internal/zzbdv;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzclm;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzckl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzclt;->zzbxb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzclt;->zzbxg:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzbxi:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzcnc;

    new-instance v0, Lcom/google/android/gms/internal/zzckh;

    new-instance v1, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcli;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/zzclb;-><init>(Lcom/google/android/gms/internal/zzbdv;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzclb;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzckh;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzckh;)V

    return-void
.end method

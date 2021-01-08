.class final Lcom/google/android/gms/internal/zzcls;
.super Lcom/google/android/gms/internal/zzcmi;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxg:[B

.field private synthetic zzbxh:Lcom/google/android/gms/internal/zzbdv;

.field private synthetic zzbxi:Lcom/google/android/gms/internal/zzbdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzbdv;Lcom/google/android/gms/internal/zzbdv;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcls;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcls;->zzbxb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcls;->zzbxg:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcls;->zzbxh:Lcom/google/android/gms/internal/zzbdv;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcls;->zzbxi:Lcom/google/android/gms/internal/zzbdv;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzclm;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzckl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcls;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcls;->zzbxb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcls;->zzbxg:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcls;->zzbxh:Lcom/google/android/gms/internal/zzbdv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzbxi:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcnc;

    new-instance v0, Lcom/google/android/gms/internal/zzcos;

    new-instance v1, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcli;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v7, Lcom/google/android/gms/internal/zzclb;

    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/zzclb;-><init>(Lcom/google/android/gms/internal/zzbdv;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzclb;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/zzckt;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/zzckt;-><init>(Lcom/google/android/gms/internal/zzbdv;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzckt;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcos;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzcos;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzcmb;
.super Lcom/google/android/gms/internal/zzcmi;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxk:Lcom/google/android/gms/internal/zzbdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbdv;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmb;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmb;->zzbxb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcmb;->zzbxk:Lcom/google/android/gms/internal/zzbdv;

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

    const/4 v2, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzckl;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcmb;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcmb;->zzbxb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmb;->zzbxk:Lcom/google/android/gms/internal/zzbdv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/zzcnc;

    new-instance v0, Lcom/google/android/gms/internal/zzcos;

    new-instance v1, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcli;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/zzckn;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/zzckn;-><init>(Lcom/google/android/gms/internal/zzbdv;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzckn;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcos;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzcos;)V

    return-void
.end method
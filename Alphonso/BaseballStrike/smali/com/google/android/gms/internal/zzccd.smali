.class final Lcom/google/android/gms/internal/zzccd;
.super Lcom/google/android/gms/internal/zzccl;


# instance fields
.field private synthetic zzbiG:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcca;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzccd;->zzbiG:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzccl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcdi;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzccd;->zzbiG:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcdi;->zzai(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzccd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

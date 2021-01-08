.class final Lcom/google/android/gms/internal/zzaqn;
.super Lcom/google/android/gms/internal/zzbax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbax",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqm;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzaqn;->val$enabled:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzbax;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbax;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaqw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzd;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaqn;->val$enabled:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/account/zzd;->zzO(Z)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaqo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaqo;-><init>(Lcom/google/android/gms/internal/zzaqn;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

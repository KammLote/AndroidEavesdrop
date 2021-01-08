.class final Lcom/google/android/gms/internal/zzaqr;
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
.field private synthetic zzako:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqm;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaqr;->zzako:Landroid/accounts/Account;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaqw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaqw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaqs;-><init>(Lcom/google/android/gms/internal/zzaqr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaqr;->zzako:Landroid/accounts/Account;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/account/zzd;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaqv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaqv;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

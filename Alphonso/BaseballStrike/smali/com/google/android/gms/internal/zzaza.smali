.class Lcom/google/android/gms/internal/zzaza;
.super Lcom/google/android/gms/internal/zzbax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbax",
        "<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        "Lcom/google/android/gms/internal/zzaze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzayZ:Lcom/google/android/gms/internal/zzayv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayv;->zzc(Lcom/google/android/gms/internal/zzayv;)Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzbax;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzbax;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaza;->zza(Lcom/google/android/gms/internal/zzaze;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaze;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzazd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

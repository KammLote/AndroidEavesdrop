.class public final Lcom/google/android/gms/internal/zzazc;
.super Lcom/google/android/gms/internal/zzayz;


# instance fields
.field private synthetic zzazb:Lcom/google/android/gms/internal/zzaza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaza;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzayz;-><init>(Lcom/google/android/gms/internal/zzayv;)V

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final onError(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzayv;->zzoQ()Lcom/google/android/gms/internal/zzayn;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzaza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaza;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzayv;->zza(Lcom/google/android/gms/internal/zzayv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazc;->zzazb:Lcom/google/android/gms/internal/zzaza;

    new-instance v1, Lcom/google/android/gms/internal/zzazd;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzazd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaza;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

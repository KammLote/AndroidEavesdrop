.class final Lcom/google/android/gms/internal/kk;
.super Lcom/google/android/gms/internal/ka;


# instance fields
.field final synthetic zzbXb:Lcom/google/android/gms/internal/ki;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/kj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/ki;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/kq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->zzbWQ:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/kp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kp;-><init>(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/ki;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ki;->zzbWX:Z

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ko;-><init>(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kk;->zza(Lcom/google/android/gms/internal/kq;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ki;->zzL(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 5
    .param p1    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v2, v2, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWW:Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/ki;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ki;->zzbWX:Z

    new-instance v0, Lcom/google/android/gms/internal/km;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/km;-><init>(Lcom/google/android/gms/internal/kk;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kk;->zza(Lcom/google/android/gms/internal/kq;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzEM()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzEN()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/ks;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWT:Lcom/google/android/gms/internal/ks;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/kw;Lcom/google/android/gms/internal/ku;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/kw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ku;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWR:Lcom/google/android/gms/internal/kw;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p2, v0, Lcom/google/android/gms/internal/ki;->zzbWS:Lcom/google/android/gms/internal/ku;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/lc;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/lc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWU:Lcom/google/android/gms/internal/lc;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/kw;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/kw;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    if-ne v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWR:Lcom/google/android/gms/internal/kw;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgq(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->zzb(Lcom/google/android/gms/internal/ki;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgr(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v1, v1, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWl:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/kl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kl;-><init>(Lcom/google/android/gms/internal/kk;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kk;->zza(Lcom/google/android/gms/internal/kq;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzgs(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v0, v0, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget v2, v2, Lcom/google/android/gms/internal/ki;->zzbWH:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-object p1, v0, Lcom/google/android/gms/internal/ki;->zzbWl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ki;->zza(Lcom/google/android/gms/internal/ki;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ki;->zzbWX:Z

    new-instance v0, Lcom/google/android/gms/internal/kn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kn;-><init>(Lcom/google/android/gms/internal/kk;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kk;->zza(Lcom/google/android/gms/internal/kq;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

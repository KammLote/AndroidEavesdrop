.class final Lcom/google/android/gms/internal/ju;
.super Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ki",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/internal/lk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZK:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    const-string v0, "code cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->zzaZK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->zzaZK:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ju;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kb;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/lm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ju;->zzbWU:Lcom/google/android/gms/internal/lc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/lc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lm;->getOperation()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x445b

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ju;->zzL(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->zzbWU:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ju;->zzV(Ljava/lang/Object;)V

    goto :goto_0
.end method

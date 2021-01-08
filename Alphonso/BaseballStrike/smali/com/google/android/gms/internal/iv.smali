.class final Lcom/google/android/gms/internal/iv;
.super Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ki",
        "<",
        "Lcom/google/firebase/auth/ProviderQueryResult;",
        "Lcom/google/android/gms/internal/lk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzalO:Ljava/lang/String;
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

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iv;->zzalO:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/iv;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/iv;->zzalO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/iv;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kb;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ls;

    iget-object v1, p0, Lcom/google/android/gms/internal/iv;->zzbWT:Lcom/google/android/gms/internal/ks;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ls;-><init>(Lcom/google/android/gms/internal/ks;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iv;->zzV(Ljava/lang/Object;)V

    return-void
.end method

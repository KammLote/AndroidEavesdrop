.class final Lcom/google/android/gms/internal/iu;
.super Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ki",
        "<",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/internal/lu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ki;-><init>(I)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->zzbWK:Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->zzbWJ:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzEG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->zzbWI:Lcom/google/android/gms/internal/kk;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kb;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final zzEK()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->zzbWL:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/lu;->zzED()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iu;->zzV(Ljava/lang/Object;)V

    return-void
.end method

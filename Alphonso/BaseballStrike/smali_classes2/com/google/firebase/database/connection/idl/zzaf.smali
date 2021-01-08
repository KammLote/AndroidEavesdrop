.class final Lcom/google/firebase/database/connection/idl/zzaf;
.super Lcom/google/firebase/database/connection/idl/zzn;


# instance fields
.field private synthetic zzccn:Lcom/google/android/gms/internal/oh;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzae;Lcom/google/android/gms/internal/oh;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzccn:Lcom/google/android/gms/internal/oh;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzccn:Lcom/google/android/gms/internal/oh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oh;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final zzgF(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzccn:Lcom/google/android/gms/internal/oh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oh;->zzgF(Ljava/lang/String;)V

    return-void
.end method

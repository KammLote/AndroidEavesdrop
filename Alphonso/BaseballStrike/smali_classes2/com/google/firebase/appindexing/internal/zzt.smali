.class abstract Lcom/google/firebase/appindexing/internal/zzt;
.super Lcom/google/android/gms/internal/zzbep;

# interfaces
.implements Lcom/google/android/gms/internal/zzbay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbep",
        "<",
        "Lcom/google/android/gms/internal/zzapt;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/internal/zzbay",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbep;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/appindexing/internal/zzr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/appindexing/internal/zzt;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic setResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzt;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzt;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "User Action indexing error, please try again."

    invoke-static {p1, v1}, Lcom/google/firebase/appindexing/internal/zzaa;->zzb(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)Lcom/google/firebase/appindexing/FirebaseAppIndexingException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzapt;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzt;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapo;

    invoke-virtual {p0, v0}, Lcom/google/firebase/appindexing/internal/zzt;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzapo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zzr(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzt;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/firebase/appindexing/internal/zzaa;->zzb(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)Lcom/google/firebase/appindexing/FirebaseAppIndexingException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

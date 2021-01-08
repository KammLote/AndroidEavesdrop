.class final Lcom/google/android/gms/internal/zzaqd;
.super Lcom/google/android/gms/internal/zzapy;


# instance fields
.field private synthetic zzajZ:Lcom/google/android/gms/internal/zzaqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqd;->zzajZ:Lcom/google/android/gms/internal/zzaqc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqd;->zzajZ:Lcom/google/android/gms/internal/zzaqc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaqc;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

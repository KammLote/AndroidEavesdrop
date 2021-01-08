.class final Lcom/google/android/gms/safetynet/zzj;
.super Lcom/google/android/gms/internal/zzbep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbep",
        "<",
        "Lcom/google/android/gms/internal/zzcsm;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbep;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcsm;

    new-instance v1, Lcom/google/android/gms/safetynet/zzk;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/safetynet/zzk;-><init>(Lcom/google/android/gms/safetynet/zzj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcsm;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcrx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcrx;->zza(Lcom/google/android/gms/internal/zzcrv;)V

    return-void
.end method

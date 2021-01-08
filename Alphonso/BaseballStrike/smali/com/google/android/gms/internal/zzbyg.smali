.class final Lcom/google/android/gms/internal/zzbyg;
.super Lcom/google/android/gms/internal/zzbva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbva",
        "<",
        "Lcom/google/android/gms/fitness/result/DailyTotalResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVN:Lcom/google/android/gms/fitness/data/DataType;

.field private synthetic zzaVO:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxz;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVO:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbva;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbuz;

    new-instance v0, Lcom/google/android/gms/internal/zzbyh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbyh;-><init>(Lcom/google/android/gms/internal/zzbyg;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVO:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/fitness/request/zzf;-><init>(Lcom/google/android/gms/internal/zzbvr;Lcom/google/android/gms/fitness/data/DataType;Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuz;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbwm;->zza(Lcom/google/android/gms/fitness/request/zzf;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method

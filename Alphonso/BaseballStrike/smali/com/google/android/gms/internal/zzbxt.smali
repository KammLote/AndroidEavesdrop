.class final Lcom/google/android/gms/internal/zzbxt;
.super Lcom/google/android/gms/internal/zzbut;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbut",
        "<",
        "Lcom/google/android/gms/fitness/result/DataTypeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxr;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbxt;->zzaVD:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbut;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbus;

    new-instance v1, Lcom/google/android/gms/internal/zzbxv;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbxv;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbxs;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbus;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwi;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzr;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxt;->zzaVD:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbwa;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwi;->zza(Lcom/google/android/gms/fitness/request/zzr;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->zzC(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method

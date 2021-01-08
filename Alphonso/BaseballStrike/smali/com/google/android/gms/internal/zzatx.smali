.class final Lcom/google/android/gms/internal/zzatx;
.super Lcom/google/android/gms/internal/zzbjw;


# instance fields
.field private synthetic zzaon:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzatx;->zzaon:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbjw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbjz;

    new-instance v0, Lcom/google/android/gms/internal/zzaua;

    iget v1, p0, Lcom/google/android/gms/internal/zzatx;->zzaon:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaua;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbjz;->zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzaua;)V

    return-void
.end method

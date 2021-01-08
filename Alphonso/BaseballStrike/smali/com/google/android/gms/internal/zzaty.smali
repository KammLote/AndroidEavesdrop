.class final Lcom/google/android/gms/internal/zzaty;
.super Lcom/google/android/gms/internal/zzbjw;


# instance fields
.field private synthetic zzaon:I

.field private synthetic zzaoo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x2713

    iput v0, p0, Lcom/google/android/gms/internal/zzaty;->zzaon:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaty;->zzaoo:Ljava/util/ArrayList;

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

    iget v1, p0, Lcom/google/android/gms/internal/zzaty;->zzaon:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaty;->zzaoo:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzaua;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbjz;->zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzaua;)V

    return-void
.end method

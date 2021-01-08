.class final Lcom/google/android/gms/internal/zzblp;
.super Lcom/google/android/gms/internal/zzblw;


# instance fields
.field private synthetic zzaNL:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbln;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    const/high16 v0, 0x20000000

    iput v0, p0, Lcom/google/android/gms/internal/zzblp;->zzaNL:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzblw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    new-instance v1, Lcom/google/android/gms/internal/zzbkz;

    iget v2, p0, Lcom/google/android/gms/internal/zzblp;->zzaNL:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbkz;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/zzblu;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzblu;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbkz;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzbip;
.super Lcom/google/android/gms/internal/zzbjy;


# instance fields
.field private synthetic zzaKQ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbio;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbip;->zzaKQ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbjy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbip;->zzaKQ:Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;

    check-cast v0, Lcom/google/android/gms/internal/zzbji;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbjz;->zza(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbji;)V

    return-void
.end method

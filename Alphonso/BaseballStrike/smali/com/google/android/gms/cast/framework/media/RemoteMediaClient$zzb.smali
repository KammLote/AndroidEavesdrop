.class Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;
.super Lcom/google/android/gms/internal/zzaxr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxr",
        "<",
        "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;",
        ">;"
    }
.end annotation


# instance fields
.field zzarw:Lcom/google/android/gms/internal/zzays;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzag;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzarw:Lcom/google/android/gms/internal/zzays;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaxr;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaxw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zza(Lcom/google/android/gms/internal/zzaxw;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzaxw;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzah;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

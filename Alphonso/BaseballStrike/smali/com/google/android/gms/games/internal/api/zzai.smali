.class final Lcom/google/android/gms/games/internal/api/zzai;
.super Lcom/google/android/gms/games/internal/api/zzap;


# instance fields
.field private synthetic zzbaW:Ljava/lang/String;

.field private synthetic zzbaX:I

.field private synthetic zzbaY:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaW:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaX:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaY:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/zzap;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/zzag;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaW:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaX:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/zzai;->zzbaY:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzbay;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

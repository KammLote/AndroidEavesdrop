.class final Lcom/google/android/gms/internal/zzcdk;
.super Lcom/google/android/gms/internal/zzccx;


# instance fields
.field private zzbiT:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdk;->zzbiT:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method

.method private final zzbl(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdk;->zzbiT:Lcom/google/android/gms/internal/zzbay;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->zzbj(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/LocationStatusCodes;->zzbk(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdk;->zzbiT:Lcom/google/android/gms/internal/zzbay;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcdk;->zzbiT:Lcom/google/android/gms/internal/zzbay;

    goto :goto_0
.end method


# virtual methods
.method public final zza(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcdk;->zzbl(I)V

    return-void
.end method

.method public final zza(I[Ljava/lang/String;)V
    .locals 2

    const-string v0, "LocationClientImpl"

    const-string v1, "Unexpected call to onAddGeofencesResult"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zzb(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcdk;->zzbl(I)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzace;
.super Ljava/lang/Object;


# instance fields
.field public final zzWg:J

.field public final zzWh:Lcom/google/android/gms/internal/zzaca;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzacc;Lcom/google/android/gms/internal/zzaca;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzace;->zzWg:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzace;->zzWh:Lcom/google/android/gms/internal/zzaca;

    return-void
.end method

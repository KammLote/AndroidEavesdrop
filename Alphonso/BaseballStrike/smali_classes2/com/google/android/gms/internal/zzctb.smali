.class final Lcom/google/android/gms/internal/zzctb;
.super Lcom/google/android/gms/internal/zzcsz;


# instance fields
.field private synthetic zzbCC:Lcom/google/android/gms/internal/zzcta;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzctb;->zzbCC:Lcom/google/android/gms/internal/zzcta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcsz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzH(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctb;->zzbCC:Lcom/google/android/gms/internal/zzcta;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcta;->zza(Lcom/google/android/gms/internal/zzcta;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzctb;->zzbCC:Lcom/google/android/gms/internal/zzcta;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcta;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzcsj;
.super Lcom/google/android/gms/internal/zzcrt;


# instance fields
.field private synthetic zzbBZ:Lcom/google/android/gms/internal/zzcrz$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcrz$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsj;->zzbBZ:Lcom/google/android/gms/internal/zzcrz$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcrt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsj;->zzbBZ:Lcom/google/android/gms/internal/zzcrz$zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzcrz$zzg;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcrz$zzg;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcrz$zzd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

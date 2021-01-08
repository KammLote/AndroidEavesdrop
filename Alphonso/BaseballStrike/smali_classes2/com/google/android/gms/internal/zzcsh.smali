.class final Lcom/google/android/gms/internal/zzcsh;
.super Lcom/google/android/gms/internal/zzcrt;


# instance fields
.field private synthetic zzbBX:Lcom/google/android/gms/internal/zzcrz$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcrz$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsh;->zzbBX:Lcom/google/android/gms/internal/zzcrz$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcrt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsh;->zzbBX:Lcom/google/android/gms/internal/zzcrz$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzcrz$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcrz$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcrz$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

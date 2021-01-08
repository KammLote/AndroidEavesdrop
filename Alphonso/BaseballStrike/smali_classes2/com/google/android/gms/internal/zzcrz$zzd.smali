.class abstract Lcom/google/android/gms/internal/zzcrz$zzd;
.super Lcom/google/android/gms/internal/zzcru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcrz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcru",
        "<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zzbBW:Lcom/google/android/gms/internal/zzcrv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcru;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcsj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcsj;-><init>(Lcom/google/android/gms/internal/zzcrz$zzd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcrz$zzd;->zzbBW:Lcom/google/android/gms/internal/zzcrv;

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcrz$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzcrz$zzg;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/zzbik;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final FenceApi:Lcom/google/android/gms/awareness/FenceApi;

.field public static final SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

.field private static zzajR:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzbjz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzajS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbjz;",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbik;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzbio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbio;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbik;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    new-instance v0, Lcom/google/android/gms/internal/zzati;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzati;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbik;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    new-instance v0, Lcom/google/android/gms/internal/zzbil;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbil;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbik;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ContextManager.API"

    sget-object v2, Lcom/google/android/gms/internal/zzbik;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzbik;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbik;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

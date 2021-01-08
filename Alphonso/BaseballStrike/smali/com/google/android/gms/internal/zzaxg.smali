.class public abstract Lcom/google/android/gms/internal/zzaxg;
.super Lcom/google/android/gms/internal/zzaxf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxf",
        "<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzawx;

.field private zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawx;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxg;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxf;-><init>(Lcom/google/android/gms/internal/zzawx;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxg;->zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;

    new-instance v0, Lcom/google/android/gms/internal/zzaxh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaxh;-><init>(Lcom/google/android/gms/internal/zzaxg;Lcom/google/android/gms/internal/zzawx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxg;->zzarw:Lcom/google/android/gms/internal/zzays;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaxg;)Lcom/google/android/gms/cast/games/GameManagerClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxg;->zzaxl:Lcom/google/android/gms/cast/games/GameManagerClient;

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzaxi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaxi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaxg;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v0

    return-object v0
.end method

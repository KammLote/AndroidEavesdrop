.class final Lcom/google/android/gms/internal/zzaxc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaxd:Lcom/google/android/gms/internal/zzawx;

.field private synthetic zzaxi:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawx;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaxc;->zzaxi:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzawx;->zzc(JI)V

    :cond_0
    return-void
.end method
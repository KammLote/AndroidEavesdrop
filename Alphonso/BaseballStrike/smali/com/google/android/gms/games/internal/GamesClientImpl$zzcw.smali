.class final Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzcw"
.end annotation


# instance fields
.field private final zzbaF:Lcom/google/android/gms/internal/zzcal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$zzw;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcal;->zzN(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzcal;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcal;

    return-void
.end method


# virtual methods
.method public final getRequestIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcal;->getRequestIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestOutcome(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$zzcw;->zzbaF:Lcom/google/android/gms/internal/zzcal;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcal;->getRequestOutcome(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

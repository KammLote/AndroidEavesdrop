.class final Lcom/google/android/gms/internal/zzaxh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzays;


# instance fields
.field private synthetic zzaxj:Lcom/google/android/gms/internal/zzawx;

.field private synthetic zzaxm:Lcom/google/android/gms/internal/zzaxg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaxg;Lcom/google/android/gms/internal/zzawx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxj:Lcom/google/android/gms/internal/zzawx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 8

    if-nez p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    new-instance v1, Lcom/google/android/gms/internal/zzaxi;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaxg;->zza(Lcom/google/android/gms/internal/zzaxg;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaxi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-void

    :cond_0
    check-cast p4, Lcom/google/android/gms/internal/zzaxl;

    iget-object v0, p4, Lcom/google/android/gms/internal/zzaxl;->zzawU:Lcom/google/android/gms/internal/zzaxk;

    if-eqz v0, :cond_1

    const-string v1, "1.0.0"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxk;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzayd;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaxg;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;Lcom/google/android/gms/internal/zzaxk;)Lcom/google/android/gms/internal/zzaxk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x866

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaxk;->getVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string v7, "1.0.0"

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaxg;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaxg;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxg;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    new-instance v1, Lcom/google/android/gms/internal/zzaxi;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p4, Lcom/google/android/gms/internal/zzaxl;->zzaxv:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p3, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaxg;->zza(Lcom/google/android/gms/internal/zzaxg;)Lcom/google/android/gms/cast/games/GameManagerClient;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaxi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxg;->setResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final zzx(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxh;->zzaxm:Lcom/google/android/gms/internal/zzaxg;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x837

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaxg;->zzk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaxg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

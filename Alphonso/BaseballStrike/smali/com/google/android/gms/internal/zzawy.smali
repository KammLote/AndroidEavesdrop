.class final Lcom/google/android/gms/internal/zzawy;
.super Lcom/google/android/gms/internal/zzaxg;


# instance fields
.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzawx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawx;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/internal/zzawx;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawx;->zzb(Lcom/google/android/gms/internal/zzawx;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzawx;->getNamespace()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzawz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzawz;-><init>(Lcom/google/android/gms/internal/zzawy;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawx;->zzc(Lcom/google/android/gms/internal/zzawx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawx;->zzd(Lcom/google/android/gms/internal/zzawx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawy;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    const/16 v1, 0x44c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxf;->zzarw:Lcom/google/android/gms/internal/zzays;

    invoke-static {v0, v4, v1, v4, v2}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzays;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxf;->zzarw:Lcom/google/android/gms/internal/zzays;

    const-wide/16 v2, -0x1

    const/16 v1, 0x8

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/zzays;->zza(JILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.class final Lcom/google/android/gms/cast/framework/media/zzl;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# instance fields
.field private synthetic val$repeatMode:I

.field private synthetic zzaqZ:[Lcom/google/android/gms/cast/MediaQueueItem;

.field private synthetic zzara:I

.field private synthetic zzarb:J

.field private synthetic zzarc:Lorg/json/JSONObject;

.field private synthetic zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzaqZ:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p4, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzara:I

    iput p5, p0, Lcom/google/android/gms/cast/framework/media/zzl;->val$repeatMode:I

    iput-wide p6, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzarb:J

    iput-object p8, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzarc:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaxw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/zzl;->zza(Lcom/google/android/gms/internal/zzaxw;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaxw;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzd(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zze(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/internal/zzayo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzarw:Lcom/google/android/gms/internal/zzays;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzaqZ:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v4, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzara:I

    iget v5, p0, Lcom/google/android/gms/cast/framework/media/zzl;->val$repeatMode:I

    iget-wide v6, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzarb:J

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/zzl;->zzarc:Lorg/json/JSONObject;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/zzayo;->zza(Lcom/google/android/gms/internal/zzays;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v9

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/media/zzl;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

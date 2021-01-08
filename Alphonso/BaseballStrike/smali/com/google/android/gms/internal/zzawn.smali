.class final Lcom/google/android/gms/internal/zzawn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavU:J

.field private synthetic zzavV:Lcom/google/android/gms/internal/zzawm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawn;->zzavV:Lcom/google/android/gms/internal/zzawm;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzawn;->zzavU:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawn;->zzavV:Lcom/google/android/gms/internal/zzawm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawm;->zza(Lcom/google/android/gms/internal/zzawm;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzawn;->zzavU:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

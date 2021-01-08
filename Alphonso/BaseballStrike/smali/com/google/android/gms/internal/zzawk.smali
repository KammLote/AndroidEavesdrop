.class public final Lcom/google/android/gms/internal/zzawk;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private mIsAttached:Z

.field private final zzavB:Landroid/widget/SeekBar;

.field private final zzavQ:J

.field private final zzavR:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;JLandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzawk;->mIsAttached:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzawk;->zzavQ:J

    new-instance v0, Lcom/google/android/gms/internal/zzawl;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzawl;-><init>(Lcom/google/android/gms/internal/zzawk;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavR:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzawk;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onProgressUpdated(JJ)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzawk;->mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    long-to-int v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public final onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawk;->zzavR:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzawk;->zzavQ:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onSessionEnded()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzawk;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawk;->zzavB:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method

.method public final zzY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzawk;->mIsAttached:Z

    return-void
.end method

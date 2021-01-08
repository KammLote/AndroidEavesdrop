.class public abstract Lcom/google/android/gms/internal/zzxs;
.super Lcom/google/android/gms/internal/zzafo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mLock:Ljava/lang/Object;

.field protected final zzQP:Lcom/google/android/gms/internal/zzxx;

.field protected final zzQQ:Lcom/google/android/gms/internal/zzaff;

.field protected zzQR:Lcom/google/android/gms/internal/zzaah;

.field protected final zzQT:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzxx;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzafo;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxs;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQT:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxs;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxs;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxs;->zzQP:Lcom/google/android/gms/internal/zzxx;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxs;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    iget v0, v0, Lcom/google/android/gms/internal/zzaff;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/zzxs;->zzd(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzxv; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzxs;->zzs(I)Lcom/google/android/gms/internal/zzafe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzxu;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzxu;-><init>(Lcom/google/android/gms/internal/zzxs;Lcom/google/android/gms/internal/zzafe;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxv;->getErrorCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaS(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQR:Lcom/google/android/gms/internal/zzaah;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaah;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQR:Lcom/google/android/gms/internal/zzaah;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzxt;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzxt;-><init>(Lcom/google/android/gms/internal/zzxs;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxv;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxs;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaah;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxs;->zzQR:Lcom/google/android/gms/internal/zzaah;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract zzd(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzxv;
        }
    .end annotation
.end method

.method protected abstract zzs(I)Lcom/google/android/gms/internal/zzafe;
.end method

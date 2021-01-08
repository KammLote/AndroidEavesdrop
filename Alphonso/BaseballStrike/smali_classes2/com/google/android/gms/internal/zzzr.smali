.class final Lcom/google/android/gms/internal/zzzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzSq:Lcom/google/android/gms/internal/zzzp;

.field private synthetic zzSr:Lcom/google/android/gms/internal/zzajo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzp;Lcom/google/android/gms/internal/zzajo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzr;->zzSr:Lcom/google/android/gms/internal/zzajo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzzp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzzp;->zzb(Lcom/google/android/gms/internal/zzzp;)Lcom/google/android/gms/internal/zzaae;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaae;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzr;->zzSr:Lcom/google/android/gms/internal/zzajo;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzajo;)Lcom/google/android/gms/internal/zzaho;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzzp;->zzSp:Lcom/google/android/gms/internal/zzaho;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzzp;->zzSp:Lcom/google/android/gms/internal/zzaho;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzzp;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzr;->zzSq:Lcom/google/android/gms/internal/zzzp;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzp;->zzc(Lcom/google/android/gms/internal/zzzp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

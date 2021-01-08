.class final Lcom/google/android/gms/internal/zzcis;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbuk:Lcom/google/android/gms/internal/zzcip;

.field private synthetic zzbul:Lcom/google/android/gms/internal/zzcfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcip;Lcom/google/android/gms/internal/zzcfc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcis;->zzbul:Lcom/google/android/gms/internal/zzcfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcip;->zza(Lcom/google/android/gms/internal/zzcip;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyC()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcis;->zzbuk:Lcom/google/android/gms/internal/zzcip;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcip;->zzbua:Lcom/google/android/gms/internal/zzcic;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcis;->zzbul:Lcom/google/android/gms/internal/zzcfc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/internal/zzcfc;)V

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

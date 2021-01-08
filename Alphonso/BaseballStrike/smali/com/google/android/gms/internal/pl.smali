.class final Lcom/google/android/gms/internal/pl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbV:Lcom/google/android/gms/internal/pk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zza(Lcom/google/android/gms/internal/pf;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pf;->zza(Lcom/google/android/gms/internal/pf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    const-string v1, "websocket opened"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzc(Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/pk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pj;
.implements Lcom/google/android/gms/internal/xz;


# instance fields
.field final synthetic zzcbT:Lcom/google/android/gms/internal/pf;

.field private zzcbU:Lcom/google/android/gms/internal/xv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/xv;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/xv;->zza(Lcom/google/android/gms/internal/xz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/xv;Lcom/google/android/gms/internal/pg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/pk;-><init>(Lcom/google/android/gms/internal/pf;Lcom/google/android/gms/internal/xv;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->close()V

    return-void
.end method

.method public final connect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->connect()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ya; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v1}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v1}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v1

    const-string v2, "Error connecting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->close()V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->zzJq()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v1}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/wf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onClose()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzd(Lcom/google/android/gms/internal/pf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pn;-><init>(Lcom/google/android/gms/internal/pk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzGx()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzd(Lcom/google/android/gms/internal/pf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/pl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pl;-><init>(Lcom/google/android/gms/internal/pk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ya;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzd(Lcom/google/android/gms/internal/pf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/po;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/po;-><init>(Lcom/google/android/gms/internal/pk;Lcom/google/android/gms/internal/ya;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/yc;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yc;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v2

    const-string v3, "ws message: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzd(Lcom/google/android/gms/internal/pf;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/pm;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/pm;-><init>(Lcom/google/android/gms/internal/pk;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzgM(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pk;->zzcbU:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/xv;->zzgM(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzcuh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHQ:Lcom/google/android/gms/internal/zzcue;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcuf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcuh;-><init>(Lcom/google/android/gms/internal/zzcue;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzd(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loading failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzi(Lcom/google/android/gms/internal/zzcue;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzi(Lcom/google/android/gms/internal/zzcue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->zzCm()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzj(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/tagmanager/zzcn;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->zzCk()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcn;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logged event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to Firebase (marked as passthrough)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error logging event with measurement proxy:"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcue;->zzk(Lcom/google/android/gms/internal/zzcue;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Discarded event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (marked as non-passthrough)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuh;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-void
.end method

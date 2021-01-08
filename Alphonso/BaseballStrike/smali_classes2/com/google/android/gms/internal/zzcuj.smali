.class final Lcom/google/android/gms/internal/zzcuj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHQ:Lcom/google/android/gms/internal/zzcue;

.field private final zzbHR:Lcom/google/android/gms/internal/zzcus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v1, "Evaluating tags for event "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzb(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcvt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcvt;->zzb(Lcom/google/android/gms/internal/zzcus;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzi(Lcom/google/android/gms/internal/zzcue;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Added event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to pending queue."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to evaluate tags for event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (container failed to load)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCm()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzj(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/tagmanager/zzcn;

    move-result-object v0

    const-string v1, "app"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcus;->zzCk()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcus;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcn;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logged passthrough event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to Firebase."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Error logging event with measurement proxy:"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcue;->zzk(Lcom/google/android/gms/internal/zzcue;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "Discarded non-passthrough event "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuj;->zzbHR:Lcom/google/android/gms/internal/zzcus;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcus;->zzCj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

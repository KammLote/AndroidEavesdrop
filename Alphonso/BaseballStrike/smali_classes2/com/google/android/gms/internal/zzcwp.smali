.class final Lcom/google/android/gms/internal/zzcwp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Ljava/lang/String;

.field private zzbJo:Z

.field private synthetic zzbJp:Landroid/os/Bundle;

.field private synthetic zzbJq:Ljava/lang/String;

.field private synthetic zzbJr:J

.field private synthetic zzbJs:Lcom/google/android/gms/internal/zzcwo;

.field private synthetic zzbth:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwo;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwp;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJq:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJr:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcwp;->zzbth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJo:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzb(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/internal/zzcxh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwp;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJq:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJr:J

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcxh;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "Container failed to load: skipping  event interceptor by logging event back to Firebase directly: name = %s, origin = %s, params = %s."

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->val$name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJq:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Landroid/os/Bundle;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzc(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/tagmanager/zzcn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Landroid/os/Bundle;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJr:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcn;->logEventInternalNoInterceptor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error logging event on measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcwm;->zzd(Lcom/google/android/gms/internal/zzcwm;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJo:Z

    if-nez v0, :cond_3

    const-string v0, "Container not loaded yet: deferring event interceptor by enqueuing the event: name = %s, origin = %s, params = %s."

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->val$name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbth:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJp:Landroid/os/Bundle;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zze(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "Invalid state - not expecting to see a deferredevent during container loading."

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwm;->zzd(Lcom/google/android/gms/internal/zzcwm;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcuo;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected state:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwp;->zzbJs:Lcom/google/android/gms/internal/zzcwo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcwo;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwm;->zzd(Lcom/google/android/gms/internal/zzcwm;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcuo;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

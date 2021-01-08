.class final Lcom/google/android/gms/internal/zzcws;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJn:Lcom/google/android/gms/internal/zzcwm;

.field private synthetic zzbJu:Ljava/lang/String;

.field private synthetic zzbJv:Ljava/lang/String;

.field private synthetic zzbJw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcws;->zzbJu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcws;->zzbJv:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcws;->zzbJw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcws;->zzbJu:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Starting to load container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "Unexpected state - container loading already initiated."

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwm;->zzd(Lcom/google/android/gms/internal/zzcwm;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcuo;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwm;->zza(Lcom/google/android/gms/internal/zzcwm;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzb(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/internal/zzcxh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcws;->zzbJu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcws;->zzbJv:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcws;->zzbJw:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/zzcwm$zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcws;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/zzcwm$zzb;-><init>(Lcom/google/android/gms/internal/zzcwm;Lcom/google/android/gms/internal/zzcwn;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcxh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvc;)V

    goto :goto_0
.end method

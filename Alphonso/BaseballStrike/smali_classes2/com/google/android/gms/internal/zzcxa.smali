.class final Lcom/google/android/gms/internal/zzcxa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJE:Lcom/google/android/gms/internal/zzcvc;

.field private synthetic zzbJF:Lcom/google/android/gms/internal/zzcwz;

.field private synthetic zzbJu:Ljava/lang/String;

.field private synthetic zzbJv:Ljava/lang/String;

.field private synthetic zzbJw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJu:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Lcom/google/android/gms/internal/zzcvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwz;->zza(Lcom/google/android/gms/internal/zzcwz;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJu:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Lcom/google/android/gms/internal/zzcvc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Lcom/google/android/gms/internal/zzcvc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJu:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzcvc;->zza(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwz;->zzb(Lcom/google/android/gms/internal/zzcwz;)Lcom/google/android/gms/internal/zzcum;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJu:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJv:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcum;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcwz;->zza(Lcom/google/android/gms/internal/zzcwz;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJu:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "Fail to load container: "

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcwz;->zzc(Lcom/google/android/gms/internal/zzcwz;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error relaying callback: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcwz;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcwz;->zzc(Lcom/google/android/gms/internal/zzcwz;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_1
.end method

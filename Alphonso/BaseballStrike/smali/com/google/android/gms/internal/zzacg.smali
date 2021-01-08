.class final Lcom/google/android/gms/internal/zzacg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzUA:Lcom/google/android/gms/internal/zzabt;

.field private synthetic zzWj:Lcom/google/android/gms/internal/zzacf;

.field private synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzacf;Landroid/content/Context;Lcom/google/android/gms/internal/zzabt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacg;->zzWj:Lcom/google/android/gms/internal/zzacf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacg;->zztH:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzacg;->zzUA:Lcom/google/android/gms/internal/zzabt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzajz;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zztH:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzagy;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmo;->zza(Landroid/content/Context;ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zzWj:Lcom/google/android/gms/internal/zzacf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacf;->zza(Lcom/google/android/gms/internal/zzacf;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    const-string v1, "/loadSdkConstants"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zzUA:Lcom/google/android/gms/internal/zzabt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacf;->zze(Lcom/google/android/gms/internal/zzabt;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Unable to save SDK Core Constants."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    const-string v1, "/loadSdkConstants"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacg;->zzUA:Lcom/google/android/gms/internal/zzabt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacf;->zze(Lcom/google/android/gms/internal/zzabt;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajz;->zziw()Lcom/google/android/gms/internal/zzaka;

    move-result-object v1

    const-string v2, "/loadSdkConstants"

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacg;->zzUA:Lcom/google/android/gms/internal/zzabt;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzacf;->zze(Lcom/google/android/gms/internal/zzabt;)V

    throw v0
.end method

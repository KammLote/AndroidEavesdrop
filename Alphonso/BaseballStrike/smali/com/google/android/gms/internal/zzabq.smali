.class final Lcom/google/android/gms/internal/zzabq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUG:Lcom/google/android/gms/internal/zzaad;

.field private synthetic zzUH:Lcom/google/android/gms/internal/zzaao;

.field private synthetic zzUI:Lcom/google/android/gms/internal/zzabl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabl;Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzaao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabq;->zzUI:Lcom/google/android/gms/internal/zzabl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabq;->zzUG:Lcom/google/android/gms/internal/zzaad;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabq;->zzUH:Lcom/google/android/gms/internal/zzaao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabq;->zzUI:Lcom/google/android/gms/internal/zzabl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabq;->zzUG:Lcom/google/android/gms/internal/zzaad;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzabl;->zzc(Lcom/google/android/gms/internal/zzaad;)Lcom/google/android/gms/internal/zzaah;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaah;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabq;->zzUH:Lcom/google/android/gms/internal/zzaao;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzaao;->zza(Lcom/google/android/gms/internal/zzaah;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v2

    const-string v3, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v2, "Could not fetch ad response due to an Exception."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

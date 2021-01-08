.class final Lcom/google/android/gms/internal/zzail;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaan:Lcom/google/android/gms/internal/zzaii;

.field private synthetic zzaao:Lcom/google/android/gms/internal/zzajl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaii;Lcom/google/android/gms/internal/zzajl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzail;->zzaan:Lcom/google/android/gms/internal/zzaii;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzail;->zzaao:Lcom/google/android/gms/internal/zzajl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzail;->zzaan:Lcom/google/android/gms/internal/zzaii;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaii;->zzb(Lcom/google/android/gms/internal/zzaii;)Lcom/google/android/gms/internal/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzail;->zzaao:Lcom/google/android/gms/internal/zzajl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajl;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzv;->zzb(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while dispatching http response in getter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    const-string v2, "HttpGetter.deliverResponse.1"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

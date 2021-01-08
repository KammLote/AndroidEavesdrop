.class final Lcom/google/android/gms/internal/zzaji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaaV:Lcom/google/android/gms/internal/zzajf;

.field private synthetic zzaaW:Lcom/google/android/gms/internal/zzajk;

.field private synthetic zzaaX:Lcom/google/android/gms/internal/zzajl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzajf;Lcom/google/android/gms/internal/zzajk;Lcom/google/android/gms/internal/zzajl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaji;->zzaaV:Lcom/google/android/gms/internal/zzajf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaji;->zzaaW:Lcom/google/android/gms/internal/zzajk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaji;->zzaaX:Lcom/google/android/gms/internal/zzajl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaji;->zzaaV:Lcom/google/android/gms/internal/zzajf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaji;->zzaaW:Lcom/google/android/gms/internal/zzajk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaji;->zzaaX:Lcom/google/android/gms/internal/zzajl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajl;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzajk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajf;->zzg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaji;->zzaaV:Lcom/google/android/gms/internal/zzajf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajf;->cancel(Z)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

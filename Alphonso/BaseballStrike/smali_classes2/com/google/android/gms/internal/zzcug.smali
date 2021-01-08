.class final Lcom/google/android/gms/internal/zzcug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHQ:Lcom/google/android/gms/internal/zzcue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcug;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzc(Lcom/google/android/gms/internal/zzcue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcuk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcuk;-><init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcuf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

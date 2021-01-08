.class final Lcom/google/android/gms/internal/zzcwt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzbJn:Lcom/google/android/gms/internal/zzcwm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJn:Lcom/google/android/gms/internal/zzcwm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwm;->zzf(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcwu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwu;-><init>(Lcom/google/android/gms/internal/zzcwt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

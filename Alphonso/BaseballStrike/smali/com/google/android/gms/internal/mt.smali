.class final Lcom/google/android/gms/internal/mt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zza;


# instance fields
.field final synthetic zzbZy:Lcom/google/android/gms/internal/pv;

.field private synthetic zzbZz:Lcom/google/android/gms/internal/mq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/pv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mt;->zzbZz:Lcom/google/android/gms/internal/mq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mt;->zzbZy:Lcom/google/android/gms/internal/pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zv;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mt;->zzbZz:Lcom/google/android/gms/internal/mq;

    invoke-static {v0}, Lcom/google/android/gms/internal/mq;->zza(Lcom/google/android/gms/internal/mq;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mu;-><init>(Lcom/google/android/gms/internal/mt;Lcom/google/android/gms/internal/zv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

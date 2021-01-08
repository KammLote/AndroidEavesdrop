.class final Lcom/google/android/gms/internal/kp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbXe:Lcom/google/android/gms/internal/kq;

.field private synthetic zzbXf:Lcom/google/android/gms/internal/kk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kp;->zzbXf:Lcom/google/android/gms/internal/kk;

    iput-object p2, p0, Lcom/google/android/gms/internal/kp;->zzbXe:Lcom/google/android/gms/internal/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->zzbXf:Lcom/google/android/gms/internal/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget-object v1, v0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->zzbXf:Lcom/google/android/gms/internal/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/kp;->zzbXe:Lcom/google/android/gms/internal/kq;

    iget-object v0, p0, Lcom/google/android/gms/internal/kp;->zzbXf:Lcom/google/android/gms/internal/kk;

    iget-object v0, v0, Lcom/google/android/gms/internal/kk;->zzbXb:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->zzbWO:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/kq;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

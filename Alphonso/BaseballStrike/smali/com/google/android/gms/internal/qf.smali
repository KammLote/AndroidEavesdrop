.class public abstract Lcom/google/android/gms/internal/qf;
.super Ljava/lang/Object;


# instance fields
.field private zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzccY:Lcom/google/android/gms/internal/qg;

.field private zzccZ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/qf;->zzccZ:Z

    return-void
.end method


# virtual methods
.method public abstract zzGG()Lcom/google/android/gms/internal/vp;
.end method

.method public final zzGU()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccY:Lcom/google/android/gms/internal/qg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccY:Lcom/google/android/gms/internal/qg;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qg;->zzd(Lcom/google/android/gms/internal/qf;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccY:Lcom/google/android/gms/internal/qg;

    :cond_0
    return-void
.end method

.method public final zzGV()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qf;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/qf;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vf;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vg;
.end method

.method public final zza(Lcom/google/android/gms/internal/qg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qf;->zzccY:Lcom/google/android/gms/internal/qg;

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vg;)V
.end method

.method public abstract zza(Lcom/google/firebase/database/DatabaseError;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vi;)Z
.end method

.method public final zzaE(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qf;->zzccZ:Z

    return-void
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/qf;)Z
.end method

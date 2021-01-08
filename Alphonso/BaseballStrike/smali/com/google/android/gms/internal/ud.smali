.class public final Lcom/google/android/gms/internal/ud;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ue;


# instance fields
.field private zzbZI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    return-void
.end method

.method private final zzFv()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzFr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/tj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzFu()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vp;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzal(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vd;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/vd;

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vp;->zzIl()Lcom/google/android/gms/internal/wy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wz;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vd;-><init>(Lcom/google/android/gms/internal/wz;ZZ)V

    return-object v0
.end method

.method public final zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ud;->zzbZI:Z

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/vp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ud;->zzFv()V

    return-void
.end method

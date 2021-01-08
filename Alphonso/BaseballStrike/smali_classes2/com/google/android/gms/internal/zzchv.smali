.class final Lcom/google/android/gms/internal/zzchv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchk;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfv;->zzyH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchk;->zzwt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzac(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzchv;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchk;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcfv;->zzee(Ljava/lang/String;)V

    goto :goto_0
.end method

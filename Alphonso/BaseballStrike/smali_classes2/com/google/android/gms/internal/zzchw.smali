.class final Lcom/google/android/gms/internal/zzchw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;

.field private synthetic zzbtv:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchw;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzchw;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchw;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchk;->zzww()Lcom/google/android/gms/internal/zzcic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzchw;->zzbtv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcic;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

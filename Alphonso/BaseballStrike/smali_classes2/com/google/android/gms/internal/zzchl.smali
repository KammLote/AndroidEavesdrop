.class final Lcom/google/android/gms/internal/zzchl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$enabled:Z

.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchl;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzchl;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchl;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzchl;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzchk;Z)V

    return-void
.end method

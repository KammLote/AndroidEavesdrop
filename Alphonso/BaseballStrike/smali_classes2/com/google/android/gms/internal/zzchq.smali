.class final Lcom/google/android/gms/internal/zzchq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtt:Lcom/google/android/gms/internal/zzchk;

.field private synthetic zzbtx:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchk;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchq;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzchq;->zzbtx:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchq;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchk;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrx:Lcom/google/android/gms/internal/zzcfy;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchq;->zzbtx:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzcfy;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchq;->zzbtt:Lcom/google/android/gms/internal/zzchk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchk;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyC()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Minimum session duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzchq;->zzbtx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfm;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
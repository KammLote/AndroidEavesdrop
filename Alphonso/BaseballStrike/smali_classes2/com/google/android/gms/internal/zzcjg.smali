.class final Lcom/google/android/gms/internal/zzcjg;
.super Lcom/google/android/gms/internal/zzceq;


# instance fields
.field private synthetic zzbux:Lcom/google/android/gms/internal/zzcjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjf;Lcom/google/android/gms/internal/zzcgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjg;->zzbux:Lcom/google/android/gms/internal/zzcjf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzceq;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjg;->zzbux:Lcom/google/android/gms/internal/zzcjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjf;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyD()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Sending upload intent from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjg;->zzbux:Lcom/google/android/gms/internal/zzcjf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjf;->zza(Lcom/google/android/gms/internal/zzcjf;)V

    return-void
.end method

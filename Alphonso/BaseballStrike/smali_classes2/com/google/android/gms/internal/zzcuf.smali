.class final Lcom/google/android/gms/internal/zzcuf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHQ:Lcom/google/android/gms/internal/zzcue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcuf;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzb(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcvt;->dispatch()V

    :cond_0
    return-void
.end method

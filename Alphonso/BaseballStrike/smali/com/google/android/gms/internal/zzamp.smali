.class final Lcom/google/android/gms/internal/zzamp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzagn:Lcom/google/android/gms/internal/zzanx;

.field private synthetic zzago:Lcom/google/android/gms/internal/zzamo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamo;Lcom/google/android/gms/internal/zzanx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamp;->zzago:Lcom/google/android/gms/internal/zzamo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamp;->zzagn:Lcom/google/android/gms/internal/zzanx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamp;->zzago:Lcom/google/android/gms/internal/zzamo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamo;->zzagk:Lcom/google/android/gms/internal/zzamm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamm;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamp;->zzago:Lcom/google/android/gms/internal/zzamo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamo;->zzagk:Lcom/google/android/gms/internal/zzamm;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamm;->zzbp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamp;->zzago:Lcom/google/android/gms/internal/zzamo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamo;->zzagk:Lcom/google/android/gms/internal/zzamm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamp;->zzagn:Lcom/google/android/gms/internal/zzanx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzamm;->zza(Lcom/google/android/gms/internal/zzamm;Lcom/google/android/gms/internal/zzanx;)V

    :cond_0
    return-void
.end method

.class final Lcom/google/android/gms/internal/ow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbi:Lcom/google/android/gms/internal/oo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ow;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ow;->zzcbi:Lcom/google/android/gms/internal/oo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/oo;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ow;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zzp(Lcom/google/android/gms/internal/oo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ow;->zzcbi:Lcom/google/android/gms/internal/oo;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/oo;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ow;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zzn(Lcom/google/android/gms/internal/oo;)V

    goto :goto_0
.end method

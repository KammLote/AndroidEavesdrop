.class final Lcom/google/android/gms/internal/po;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbV:Lcom/google/android/gms/internal/pk;

.field private synthetic zzcbX:Lcom/google/android/gms/internal/ya;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pk;Lcom/google/android/gms/internal/ya;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/po;->zzcbV:Lcom/google/android/gms/internal/pk;

    iput-object p2, p0, Lcom/google/android/gms/internal/po;->zzcbX:Lcom/google/android/gms/internal/ya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbX:Lcom/google/android/gms/internal/ya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ya;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbX:Lcom/google/android/gms/internal/ya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ya;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    const-string v1, "WebSocket reached EOF."

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zze(Lcom/google/android/gms/internal/pf;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbV:Lcom/google/android/gms/internal/pk;

    iget-object v0, v0, Lcom/google/android/gms/internal/pk;->zzcbT:Lcom/google/android/gms/internal/pf;

    invoke-static {v0}, Lcom/google/android/gms/internal/pf;->zzb(Lcom/google/android/gms/internal/pf;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    const-string v1, "WebSocket error."

    iget-object v2, p0, Lcom/google/android/gms/internal/po;->zzcbX:Lcom/google/android/gms/internal/ya;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

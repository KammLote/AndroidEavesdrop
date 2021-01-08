.class final Lcom/google/android/gms/internal/op;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbh:Z

.field final synthetic zzcbi:Lcom/google/android/gms/internal/oo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/op;->zzcbh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    const-string v3, "Trying to fetch auth token"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zzb(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/oy;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v4}, Lcom/google/android/gms/internal/oo;->zzb(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/oy;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    sget-object v1, Lcom/google/android/gms/internal/oy;->zzcbr:Lcom/google/android/gms/internal/oy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/oy;)Lcom/google/android/gms/internal/oy;

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zzc(Lcom/google/android/gms/internal/oo;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v0}, Lcom/google/android/gms/internal/oo;->zzd(Lcom/google/android/gms/internal/oo;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/op;->zzcbi:Lcom/google/android/gms/internal/oo;

    invoke-static {v2}, Lcom/google/android/gms/internal/oo;->zzf(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/og;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/op;->zzcbh:Z

    new-instance v4, Lcom/google/android/gms/internal/oq;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/oq;-><init>(Lcom/google/android/gms/internal/op;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/og;->zza(ZLcom/google/android/gms/internal/oh;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

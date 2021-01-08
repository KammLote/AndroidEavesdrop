.class final Lcom/google/android/gms/internal/zzcfl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbqV:Ljava/lang/String;

.field private synthetic zzbqW:Lcom/google/android/gms/internal/zzcfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfl;->zzbqW:Lcom/google/android/gms/internal/zzcfk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfl;->zzbqV:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfl;->zzbqW:Lcom/google/android/gms/internal/zzcfk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfk;->zzboe:Lcom/google/android/gms/internal/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwG()Lcom/google/android/gms/internal/zzcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfv;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfl;->zzbqW:Lcom/google/android/gms/internal/zzcfk;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfk;->zzk(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcfv;->zzbrj:Lcom/google/android/gms/internal/zzcfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfl;->zzbqV:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfz;->zzf(Ljava/lang/String;J)V

    goto :goto_0
.end method

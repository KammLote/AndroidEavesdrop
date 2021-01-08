.class final Lcom/google/android/gms/internal/zzcih;
.super Lcom/google/android/gms/internal/zzceq;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcic;Lcom/google/android/gms/internal/zzcgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcih;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzceq;-><init>(Lcom/google/android/gms/internal/zzcgk;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcih;->zzbua:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcic;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    return-void
.end method

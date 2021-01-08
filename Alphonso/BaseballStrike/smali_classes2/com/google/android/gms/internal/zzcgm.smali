.class final Lcom/google/android/gms/internal/zzcgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbsY:Lcom/google/android/gms/internal/zzcgk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgm;->zzbsY:Lcom/google/android/gms/internal/zzcgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgm;->zzbjh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgm;->zzbsY:Lcom/google/android/gms/internal/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwz()Lcom/google/android/gms/internal/zzcem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgm;->zzbjh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcem;->zzdQ(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcef;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgm;->zzbsY:Lcom/google/android/gms/internal/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgk;->zzwF()Lcom/google/android/gms/internal/zzcfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfk;->zzyz()Lcom/google/android/gms/internal/zzcfm;

    move-result-object v0

    const-string v1, "App info was null when attempting to get app instance id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfm;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcef;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

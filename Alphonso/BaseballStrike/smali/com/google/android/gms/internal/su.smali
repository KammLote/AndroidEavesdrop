.class final Lcom/google/android/gms/internal/su;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/vh;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ue;->zzFu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tm;->zzHy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/us;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/us;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v2, Lcom/google/android/gms/internal/tr;

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/tr;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;Z)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

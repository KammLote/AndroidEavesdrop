.class final Lcom/google/android/gms/internal/sy;
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

.field private synthetic zzceS:Lcom/google/android/gms/internal/te;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sy;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sy;->zzceS:Lcom/google/android/gms/internal/te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sy;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/internal/sy;->zzceS:Lcom/google/android/gms/internal/te;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/sy;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v1}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ue;->zzi(Lcom/google/android/gms/internal/vp;)V

    new-instance v1, Lcom/google/android/gms/internal/ts;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/tw;->zzc(Lcom/google/android/gms/internal/vn;)Lcom/google/android/gms/internal/tw;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ts;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/sy;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.class final Lcom/google/android/gms/internal/sx;
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
.field private synthetic zzccI:Lcom/google/android/gms/internal/qo;

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sx;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sx;->zzccI:Lcom/google/android/gms/internal/qo;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/sx;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sx;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v1}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ue;->zzi(Lcom/google/android/gms/internal/vp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/sx;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v1, Lcom/google/android/gms/internal/ts;

    sget-object v2, Lcom/google/android/gms/internal/tw;->zzcfO:Lcom/google/android/gms/internal/tw;

    iget-object v3, p0, Lcom/google/android/gms/internal/sx;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ts;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

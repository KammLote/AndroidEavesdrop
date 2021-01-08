.class final Lcom/google/android/gms/internal/sw;
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

.field private synthetic zzceT:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Ljava/util/Map;Lcom/google/android/gms/internal/qo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sw;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sw;->zzceT:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/sw;->zzccI:Lcom/google/android/gms/internal/qo;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/sw;->zzceT:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/px;->zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/px;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sw;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v1}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sw;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ue;->zzd(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/sw;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v2, Lcom/google/android/gms/internal/tt;

    sget-object v3, Lcom/google/android/gms/internal/tw;->zzcfO:Lcom/google/android/gms/internal/tw;

    iget-object v4, p0, Lcom/google/android/gms/internal/sw;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/tt;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

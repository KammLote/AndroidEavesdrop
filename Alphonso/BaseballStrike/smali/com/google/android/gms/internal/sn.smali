.class final Lcom/google/android/gms/internal/sn;
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

.field private synthetic zzceS:Lcom/google/android/gms/internal/te;

.field private synthetic zzceT:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/qo;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sn;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn;->zzceS:Lcom/google/android/gms/internal/te;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->zzceT:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v1, p0, Lcom/google/android/gms/internal/sn;->zzceS:Lcom/google/android/gms/internal/te;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/te;)Lcom/google/android/gms/internal/vp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sn;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sn;->zzceT:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/px;->zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/px;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sn;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v3}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/sn;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ue;->zzd(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    new-instance v3, Lcom/google/android/gms/internal/tt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzIs()Lcom/google/android/gms/internal/vn;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/tw;->zzc(Lcom/google/android/gms/internal/vn;)Lcom/google/android/gms/internal/tw;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/tt;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/sn;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
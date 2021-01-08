.class final Lcom/google/android/gms/internal/sv;
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

.field private synthetic zzceP:Lcom/google/android/gms/internal/xf;

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sv;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sv;->zzccI:Lcom/google/android/gms/internal/qo;

    iput-object p3, p0, Lcom/google/android/gms/internal/sv;->zzceP:Lcom/google/android/gms/internal/xf;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/sv;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sv;->zzccI:Lcom/google/android/gms/internal/qo;

    invoke-static {v1}, Lcom/google/android/gms/internal/vp;->zzM(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/vp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sv;->zzceP:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ue;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/xf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/sv;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v1, Lcom/google/android/gms/internal/ty;

    sget-object v2, Lcom/google/android/gms/internal/tw;->zzcfO:Lcom/google/android/gms/internal/tw;

    iget-object v3, p0, Lcom/google/android/gms/internal/sv;->zzccI:Lcom/google/android/gms/internal/qo;

    iget-object v4, p0, Lcom/google/android/gms/internal/sv;->zzceP:Lcom/google/android/gms/internal/xf;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ty;-><init>(Lcom/google/android/gms/internal/tw;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

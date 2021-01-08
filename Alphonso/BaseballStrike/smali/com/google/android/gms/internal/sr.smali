.class final Lcom/google/android/gms/internal/sr;
.super Lcom/google/android/gms/internal/nr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nr",
        "<",
        "Lcom/google/android/gms/internal/wj;",
        "Lcom/google/android/gms/internal/us",
        "<",
        "Lcom/google/android/gms/internal/sk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdE:Ljava/util/List;

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;

.field private synthetic zzceW:Lcom/google/android/gms/internal/xf;

.field private synthetic zzceX:Lcom/google/android/gms/internal/tp;

.field private synthetic zzceY:Lcom/google/android/gms/internal/tu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;Lcom/google/android/gms/internal/tu;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->zzceW:Lcom/google/android/gms/internal/xf;

    iput-object p3, p0, Lcom/google/android/gms/internal/sr;->zzceX:Lcom/google/android/gms/internal/tp;

    iput-object p4, p0, Lcom/google/android/gms/internal/sr;->zzceY:Lcom/google/android/gms/internal/tu;

    iput-object p5, p0, Lcom/google/android/gms/internal/sr;->zzcdE:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nr;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/wj;

    check-cast p2, Lcom/google/android/gms/internal/us;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/sr;->zzceW:Lcom/google/android/gms/internal/xf;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceW:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/sr;->zzceX:Lcom/google/android/gms/internal/tp;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/tp;->zzb(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceY:Lcom/google/android/gms/internal/tu;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/tu;->zzc(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/tu;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/sr;->zzcdE:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v4, v2, p2, v0, v1}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;Lcom/google/android/gms/internal/us;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/tp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

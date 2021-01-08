.class final Lcom/google/android/gms/internal/nc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uv",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZK:Lcom/google/android/gms/internal/us;

.field private synthetic zzbZL:Ljava/util/List;

.field private synthetic zzbZM:Lcom/google/android/gms/internal/qo;

.field private synthetic zzbZN:Lcom/google/android/gms/internal/xf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/na;Lcom/google/android/gms/internal/us;Ljava/util/List;Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nc;->zzbZK:Lcom/google/android/gms/internal/us;

    iput-object p3, p0, Lcom/google/android/gms/internal/nc;->zzbZL:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/nc;->zzbZM:Lcom/google/android/gms/internal/qo;

    iput-object p5, p0, Lcom/google/android/gms/internal/nc;->zzbZN:Lcom/google/android/gms/internal/xf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nc;->zzbZK:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nc;->zzbZL:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/internal/yr;

    iget-object v2, p0, Lcom/google/android/gms/internal/nc;->zzbZM:Lcom/google/android/gms/internal/qo;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/qo;->zzh(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nc;->zzbZN:Lcom/google/android/gms/internal/xf;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/xf;->zzN(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/yr;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

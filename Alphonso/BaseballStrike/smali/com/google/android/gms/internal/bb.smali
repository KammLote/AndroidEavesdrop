.class public final Lcom/google/android/gms/internal/bb;
.super Lcom/google/android/gms/internal/zzcxp;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJX:Lcom/google/android/gms/internal/zzcvx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bb;->zzbJX:Lcom/google/android/gms/internal/zzcvx;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcvz;",
            "[",
            "Lcom/google/android/gms/internal/do",
            "<*>;)",
            "Lcom/google/android/gms/internal/do",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bb;->zzbJX:Lcom/google/android/gms/internal/zzcvx;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzcvx;->zzCx()Lcom/google/android/gms/internal/zzcus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcus;->zzBh()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    array-length v2, p2

    if-le v2, v1, :cond_0

    aget-object v0, p2, v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ec;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

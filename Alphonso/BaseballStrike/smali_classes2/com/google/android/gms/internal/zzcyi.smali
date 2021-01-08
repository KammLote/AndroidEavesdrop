.class final Lcom/google/android/gms/internal/zzcyi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/do",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic zzbJS:Lcom/google/android/gms/internal/dt;

.field private synthetic zzbJT:Lcom/google/android/gms/internal/zzcvz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcyg;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/zzcvz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyi;->zzbJS:Lcom/google/android/gms/internal/dt;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcyi;->zzbJT:Lcom/google/android/gms/internal/zzcvz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/google/android/gms/internal/do;

    check-cast p2, Lcom/google/android/gms/internal/do;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyi;->zzbJS:Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->zzDo()Lcom/google/android/gms/internal/zzcxn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcxn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcyi;->zzbJT:Lcom/google/android/gms/internal/zzcvz;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/do;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzcxn;->zzb(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ds;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    check-cast v0, Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->zzDn()Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

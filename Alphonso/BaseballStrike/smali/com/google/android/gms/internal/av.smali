.class public final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcxn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zzb(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ea;

    const-string v1, "5.05"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
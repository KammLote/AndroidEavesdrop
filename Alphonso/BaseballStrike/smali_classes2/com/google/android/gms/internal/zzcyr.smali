.class public final Lcom/google/android/gms/internal/zzcyr;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 5
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

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/dr;

    aget-object v3, p2, v1

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/do;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

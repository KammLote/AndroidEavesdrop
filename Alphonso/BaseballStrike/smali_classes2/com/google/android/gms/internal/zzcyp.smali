.class public final Lcom/google/android/gms/internal/zzcyp;
.super Lcom/google/android/gms/internal/zzcxp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcvz;[Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;
    .locals 6
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

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    aget-object v4, p2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/dy;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/dv;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/gms/internal/dt;

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ea;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    instance-of v3, v4, Lcom/google/android/gms/internal/dy;

    if-nez v3, :cond_2

    instance-of v3, v4, Lcom/google/android/gms/internal/dv;

    if-nez v3, :cond_2

    instance-of v3, v4, Lcom/google/android/gms/internal/dt;

    if-eqz v3, :cond_7

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ea;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcxo;->zzd(Lcom/google/android/gms/internal/do;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ea;-><init>(Ljava/lang/String;)V

    :goto_1
    instance-of v4, v0, Lcom/google/android/gms/internal/ea;

    if-eqz v4, :cond_3

    instance-of v4, v3, Lcom/google/android/gms/internal/ea;

    if-nez v4, :cond_6

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/do;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/do;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/dr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dr;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/do;)Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    goto :goto_2

    :cond_7
    move-object v3, v4

    goto :goto_1
.end method

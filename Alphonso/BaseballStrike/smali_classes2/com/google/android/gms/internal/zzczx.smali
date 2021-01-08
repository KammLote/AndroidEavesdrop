.class public final Lcom/google/android/gms/internal/zzczx;
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

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/dv;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v0, Lcom/google/android/gms/internal/dv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dv;->zzDr()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    instance-of v4, v1, Lcom/google/android/gms/internal/dr;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    check-cast v1, Lcom/google/android/gms/internal/dr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dr;->zzDm()Ljava/lang/Boolean;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Ljava/util/List;)Lcom/google/android/gms/internal/du;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/du;->zzbLp:Lcom/google/android/gms/internal/du;

    if-ne v1, v4, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    :goto_2
    return-object v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/du;->zzDq()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_3
    aget-object v1, p2, v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    :cond_4
    aget-object v1, p2, v3

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/do;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxo;->zza(Lcom/google/android/gms/internal/do;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ec;->zza(Lcom/google/android/gms/internal/zzcvz;Ljava/util/List;)Lcom/google/android/gms/internal/du;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/du;->zzbLp:Lcom/google/android/gms/internal/du;

    if-ne v1, v4, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/du;->zzDq()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/du;->zzbLs:Lcom/google/android/gms/internal/du;

    goto :goto_2
.end method

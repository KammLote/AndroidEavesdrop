.class final Lcom/google/android/gms/internal/xg;
.super Lcom/google/android/gms/internal/wl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wl;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/xf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xg;->zzg(Lcom/google/android/gms/internal/xf;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<Max Node>"

    return-object v0
.end method

.method public final zzIP()Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/xf;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/wj;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wj;->zzIL()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object p0

    goto :goto_0
.end method

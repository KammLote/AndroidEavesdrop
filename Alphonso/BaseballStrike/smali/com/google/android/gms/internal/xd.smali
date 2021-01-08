.class public final Lcom/google/android/gms/internal/xd;
.super Lcom/google/android/gms/internal/xb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xb",
        "<",
        "Lcom/google/android/gms/internal/xd;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/gms/internal/xf;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/xb;-><init>(Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/xd;->value:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/xd;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/xd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/xd;->value:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/xd;->value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/xd;->zzchQ:Lcom/google/android/gms/internal/xf;

    iget-object v2, p1, Lcom/google/android/gms/internal/xd;->zzchQ:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/xd;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/xd;->value:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/xd;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xd;->zzchQ:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final zzIG()Lcom/google/android/gms/internal/xc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xc;->zzcio:Lcom/google/android/gms/internal/xc;

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/xb;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/xd;

    iget-wide v0, p0, Lcom/google/android/gms/internal/xd;->value:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/xd;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/yu;->zzj(JJ)I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xh;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xd;->zzb(Lcom/google/android/gms/internal/xh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/xd;->value:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/yu;->zzj(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/xd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/xd;->value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/xd;-><init>(Ljava/lang/Long;Lcom/google/android/gms/internal/xf;)V

    return-object v0
.end method

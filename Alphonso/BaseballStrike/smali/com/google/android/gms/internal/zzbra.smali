.class public final Lcom/google/android/gms/internal/zzbra;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/zzbra;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaPw:J

.field public zzaPz:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcsi:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbra;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbra;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adc;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbra;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adc;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/acx;)Lcom/google/android/gms/internal/adg;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLy()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acx;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    ushr-long v2, v0, v4

    and-long/2addr v0, v6

    neg-long v0, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    ushr-long v2, v0, v4

    and-long/2addr v0, v6

    neg-long v0, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/acy;->zzd(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/acy;->zzd(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPz:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/acy;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbra;->zzaPw:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/acy;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

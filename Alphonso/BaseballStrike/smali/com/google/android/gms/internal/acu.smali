.class public final Lcom/google/android/gms/internal/acu;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/acu;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaTb:J

.field public zzcqb:I

.field public zzcrq:Ljava/lang/String;

.field public zzcrr:J

.field private zzcrs:Lcom/google/android/gms/internal/acg;

.field public zzcrt:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/acu;->zzcsi:I

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
    instance-of v2, p1, Lcom/google/android/gms/internal/acu;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/acu;

    iget v2, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    iget v3, p1, Lcom/google/android/gms/internal/acu;->zzcqb:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/acu;->zzaTb:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/acu;->zzcrr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    iget-object v3, p1, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/acg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    iget-object v1, p1, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adc;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acg;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x4d5

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adc;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/acx;)Lcom/google/android/gms/internal/adg;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLD()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/acx;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/acu;->zza(Lcom/google/android/gms/internal/acx;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/acg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/acg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzr(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/acy;->zzb(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/acy;->zzb(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzk(IZ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/acu;->zzcqb:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzaTb:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/acy;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/acu;->zzcrr:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/acy;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/acu;->zzcrs:Lcom/google/android/gms/internal/acg;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/acu;->zzcrt:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/gms/internal/acy;->zzct(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
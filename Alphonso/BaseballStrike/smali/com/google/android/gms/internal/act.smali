.class public final Lcom/google/android/gms/internal/act;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/act;",
        ">;"
    }
.end annotation


# instance fields
.field private type:I

.field private zzaTb:J

.field private zzaTc:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/act;->type:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/act;->zzcsi:I

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
    instance-of v2, p1, Lcom/google/android/gms/internal/act;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/act;

    iget v2, p0, Lcom/google/android/gms/internal/act;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/act;->type:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/act;->zzaTb:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/act;->zzaTc:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    iget-object v1, p1, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

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

    iget v1, p0, Lcom/google/android/gms/internal/act;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adc;->hashCode()I

    move-result v0

    goto :goto_0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/acx;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/act;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    iget v0, p0, Lcom/google/android/gms/internal/act;->type:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/act;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzr(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/acy;->zzb(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/acy;->zzb(IJ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/act;->type:I

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/act;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTb:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/acy;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/act;->zzaTc:J

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/acy;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
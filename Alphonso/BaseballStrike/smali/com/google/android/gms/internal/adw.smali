.class public final Lcom/google/android/gms/internal/adw;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/adw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzctp:[Lcom/google/android/gms/internal/adw;


# instance fields
.field private type:Ljava/lang/String;

.field private zzctj:[Lcom/google/android/gms/internal/adv;

.field private zzctq:Lcom/google/android/gms/internal/adu;

.field private zzkx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/adv;->zzLW()[Lcom/google/android/gms/internal/adv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    iput-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    iput-object v1, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/adw;->zzcsi:I

    return-void
.end method

.method public static zzLX()[Lcom/google/android/gms/internal/adw;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/adw;->zzctp:[Lcom/google/android/gms/internal/adw;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ade;->zzcsh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/adw;->zzctp:[Lcom/google/android/gms/internal/adw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/adw;

    sput-object v0, Lcom/google/android/gms/internal/adw;->zzctp:[Lcom/google/android/gms/internal/adw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/adw;->zzctp:[Lcom/google/android/gms/internal/adw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/adw;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/adw;

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    iget-object v3, p1, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ade;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    iget-object v3, p1, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/adu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    iget-object v1, p1, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adc;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ade;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adu;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adc;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/acx;)Lcom/google/android/gms/internal/adg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/adj;->zzb(Lcom/google/android/gms/internal/acx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/adv;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/adv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/adv;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLy()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/adv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/adv;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/adu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzl(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzkx:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctj:[Lcom/google/android/gms/internal/adv;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/adw;->zzctq:Lcom/google/android/gms/internal/adu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
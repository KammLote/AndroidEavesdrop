.class public final Lcom/google/android/gms/internal/zzcjn;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/zzcjn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbuR:[Lcom/google/android/gms/internal/zzcjn;


# instance fields
.field public zzbuS:Lcom/google/android/gms/internal/zzcjq;

.field public zzbuT:Lcom/google/android/gms/internal/zzcjo;

.field public zzbuU:Ljava/lang/Boolean;

.field public zzbuV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzcsi:I

    return-void
.end method

.method public static zzzw()[Lcom/google/android/gms/internal/zzcjn;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcjn;->zzbuR:[Lcom/google/android/gms/internal/zzcjn;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ade;->zzcsh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcjn;->zzbuR:[Lcom/google/android/gms/internal/zzcjn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzcjn;

    sput-object v0, Lcom/google/android/gms/internal/zzcjn;->zzbuR:[Lcom/google/android/gms/internal/zzcjn;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzcjn;->zzbuR:[Lcom/google/android/gms/internal/zzcjn;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcjn;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzcjn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcjo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/adc;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/adc;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjq;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjo;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adc;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/acx;)Lcom/google/android/gms/internal/adg;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzcjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcjq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcjo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcjo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLB()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzk(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzl(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuS:Lcom/google/android/gms/internal/zzcjq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuT:Lcom/google/android/gms/internal/zzcjo;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/acy;->zzct(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjn;->zzbuV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
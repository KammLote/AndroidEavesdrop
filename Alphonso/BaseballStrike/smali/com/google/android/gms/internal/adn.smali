.class public final Lcom/google/android/gms/internal/adn;
.super Lcom/google/android/gms/internal/ada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ada",
        "<",
        "Lcom/google/android/gms/internal/adn;",
        ">;"
    }
.end annotation


# instance fields
.field private body:[B

.field private zzcsL:Lcom/google/android/gms/internal/ado;

.field public zzcsM:[Lcom/google/android/gms/internal/adm;

.field private zzcsN:[B

.field private zzcsO:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ada;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    invoke-static {}, Lcom/google/android/gms/internal/adm;->zzLU()[Lcom/google/android/gms/internal/adm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    iput-object v1, p0, Lcom/google/android/gms/internal/adn;->body:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcrZ:Lcom/google/android/gms/internal/adc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/adn;->zzcsi:I

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ado;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ado;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/adj;->zzb(Lcom/google/android/gms/internal/acx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/adm;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/adm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/adm;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLy()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/gms/internal/adm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/adm;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/acx;->zza(Lcom/google/android/gms/internal/adg;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adn;->body:[B

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/acx;->zzLA()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/acy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/acy;->zza(ILcom/google/android/gms/internal/adg;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->body:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->body:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzb(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzb(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/acy;->zzr(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ada;->zza(Lcom/google/android/gms/internal/acy;)V

    return-void
.end method

.method protected final zzn()I
    .locals 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ada;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsL:Lcom/google/android/gms/internal/ado;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsM:[Lcom/google/android/gms/internal/adm;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/acy;->zzb(ILcom/google/android/gms/internal/adg;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->body:[B

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->body:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsN:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/adn;->zzcsO:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/acy;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

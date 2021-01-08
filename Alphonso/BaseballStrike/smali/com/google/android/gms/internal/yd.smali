.class final Lcom/google/android/gms/internal/yd;
.super Ljava/lang/Object;


# instance fields
.field private zzciL:Lcom/google/android/gms/internal/xz;

.field private zzcjf:Ljava/io/DataInputStream;

.field private zzcjg:Lcom/google/android/gms/internal/xv;

.field private zzcjh:[B

.field private zzcji:Lcom/google/android/gms/internal/xq;

.field private volatile zzcjj:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjf:Ljava/io/DataInputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzciL:Lcom/google/android/gms/internal/xz;

    const/16 v0, 0x70

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/yd;->zzcjj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    return-void
.end method

.method private final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjf:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method

.method private final zzc(Lcom/google/android/gms/internal/ya;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/yd;->zzcjj:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/xv;->zzb(Lcom/google/android/gms/internal/ya;)V

    return-void
.end method


# virtual methods
.method final run()V
    .locals 14

    const/16 v13, 0x9

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->zzJn()Lcom/google/android/gms/internal/xz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzciL:Lcom/google/android/gms/internal/xz;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/yd;->zzcjj:Z

    if-nez v0, :cond_13

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/yd;->read([BII)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v4, v2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    and-int/lit8 v0, v0, 0xf

    int-to-byte v5, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v6, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/gms/internal/yd;->read([BII)I

    move-result v0

    add-int v6, v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v1, 0x1

    aget-byte v7, v0, v1

    const-wide/16 v0, 0x0

    const/16 v8, 0x7e

    if-ge v7, v8, :cond_5

    int-to-long v0, v7

    :cond_4
    :goto_3
    long-to-int v6, v0

    new-array v6, v6, [B

    const/4 v7, 0x0

    long-to-int v0, v0

    invoke-direct {p0, v6, v7, v0}, Lcom/google/android/gms/internal/yd;->read([BII)I

    if-ne v5, v12, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xv;->zzJo()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ya; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ya;

    const-string v4, "IO Error"

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/yd;->zzc(Lcom/google/android/gms/internal/ya;)V

    goto :goto_0

    :cond_5
    const/16 v8, 0x7e

    if-ne v7, v8, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/yd;->read([BII)I

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_3

    :cond_6
    const/16 v8, 0x7f

    if-ne v7, v8, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    const/16 v1, 0x8

    invoke-direct {p0, v0, v6, v1}, Lcom/google/android/gms/internal/yd;->read([BII)I

    move-result v0

    add-int/2addr v0, v6

    iget-object v1, p0, Lcom/google/android/gms/internal/yd;->zzcjh:[B

    add-int/lit8 v0, v0, -0x8

    aget-byte v6, v1, v0

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x2

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x5

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v8, v0, 0x6

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long/2addr v0, v6

    goto/16 :goto_3

    :cond_7
    const/16 v0, 0xa

    if-eq v5, v0, :cond_0

    if-eq v5, v2, :cond_8

    if-eq v5, v11, :cond_8

    if-eq v5, v13, :cond_8

    if-nez v5, :cond_12

    :cond_8
    if-ne v5, v13, :cond_b

    if-eqz v4, :cond_a

    array-length v0, v6

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcjg:Lcom/google/android/gms/internal/xv;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/xv;->zzE([B)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ya; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/yd;->zzc(Lcom/google/android/gms/internal/ya;)V

    goto/16 :goto_0

    :cond_9
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "PING frame too long"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "PING must not fragment across frames"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    if-eqz v0, :cond_c

    if-eqz v5, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "Failed to continue outstanding frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    if-nez v0, :cond_d

    if-nez v5, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    if-nez v0, :cond_e

    if-ne v5, v11, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/xp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xp;-><init>()V

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/xq;->zzC([B)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "Failed to decode frame"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/xr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/xr;-><init>()V

    goto :goto_4

    :cond_10
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xq;->zzJl()Lcom/google/android/gms/internal/yc;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/yd;->zzcji:Lcom/google/android/gms/internal/xq;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/ya;

    const-string v1, "Failed to decode whole message"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/yd;->zzciL:Lcom/google/android/gms/internal/xz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/xz;->zza(Lcom/google/android/gms/internal/yc;)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ya;

    const/16 v1, 0x18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported opcode: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ya;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/ya; {:try_start_2 .. :try_end_2} :catch_2

    :cond_13
    return-void
.end method

.method final zzJu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/yd;->zzcjj:Z

    return-void
.end method

.method final zza(Ljava/io/DataInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yd;->zzcjf:Ljava/io/DataInputStream;

    return-void
.end method

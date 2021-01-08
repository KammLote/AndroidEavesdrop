.class public final Lcom/google/android/gms/internal/zzzp;
.super Lcom/google/android/gms/internal/zzafo;

# interfaces
.implements Lcom/google/android/gms/internal/zzzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzMO:Lcom/google/android/gms/internal/zzaad;

.field private zzMw:Lcom/google/android/gms/internal/zzub;

.field private zzQR:Lcom/google/android/gms/internal/zzaah;

.field private zzQS:Ljava/lang/Runnable;

.field private final zzQT:Ljava/lang/Object;

.field private final zzSm:Lcom/google/android/gms/internal/zzzo;

.field private final zzSn:Lcom/google/android/gms/internal/zzaae;

.field private final zzSo:Lcom/google/android/gms/internal/zzij;

.field zzSp:Lcom/google/android/gms/internal/zzaho;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaae;Lcom/google/android/gms/internal/zzzo;Lcom/google/android/gms/internal/zzij;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafo;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQT:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzp;->zzSm:Lcom/google/android/gms/internal/zzzo;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzp;->zzSo:Lcom/google/android/gms/internal/zzij;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzzp;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzzp;->zzd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzzp;)Lcom/google/android/gms/internal/zzaae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzaad;)Lcom/google/android/gms/internal/zziv;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzzs;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaad;->zzwp:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaad;->zzwp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzub;->zzMr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzAy:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v0, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    array-length v2, v1

    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    iget-boolean v5, v4, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-eqz v5, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zziv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/zziv;-><init>(Lcom/google/android/gms/internal/zziv;[Lcom/google/android/gms/internal/zziv;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzzs;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzzs;

    const-string v2, "Invalid ad size format from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v6, v0, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    array-length v7, v6

    move v2, v3

    :goto_4
    if-ge v2, v7, :cond_b

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/zziv;->width:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_8

    iget v0, v8, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_5
    iget v9, v8, Lcom/google/android/gms/internal/zziv;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_9

    iget v9, v8, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_6
    if-ne v4, v0, :cond_a

    if-ne v5, v1, :cond_a

    iget-boolean v0, v8, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zziv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/zziv;-><init>(Lcom/google/android/gms/internal/zziv;[Lcom/google/android/gms/internal/zziv;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzzs;

    const-string v2, "Invalid ad size number from the ad response: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    iget v0, v8, Lcom/google/android/gms/internal/zziv;->width:I

    goto :goto_5

    :cond_9
    iget v1, v8, Lcom/google/android/gms/internal/zziv;->height:I

    goto :goto_6

    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/zzzs;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzzp;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQS:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final zzd(ILjava/lang/String;)V
    .locals 12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzafq;->zzaS(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzaah;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzaff;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-wide v8, v5, Lcom/google/android/gms/internal/zzaah;->zzTs:J

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzp;->zzSo:Lcom/google/android/gms/internal/zzij;

    move v5, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzaah;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzSm:Lcom/google/android/gms/internal/zzzo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzo;->zza(Lcom/google/android/gms/internal/zzaff;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzaah;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/zzaah;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzaad;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaad;-><init>(Lcom/google/android/gms/internal/zzaae;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzQT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSp:Lcom/google/android/gms/internal/zzaho;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSp:Lcom/google/android/gms/internal/zzaho;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaho;->cancel()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzajo;)Lcom/google/android/gms/internal/zzaho;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajd;",
            "Lcom/google/android/gms/internal/zzajo",
            "<",
            "Lcom/google/android/gms/internal/zzaad;",
            ">;)",
            "Lcom/google/android/gms/internal/zzaho;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/zzzu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzzu;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzzw;->zza(Lcom/google/android/gms/internal/zzajd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaaa;

    invoke-direct {v0, v1, p2, p0}, Lcom/google/android/gms/internal/zzaaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajo;Lcom/google/android/gms/internal/zzzv;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzx;->zzgp()Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaix;->zzX(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaab;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/google/android/gms/internal/zzaab;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzajo;Lcom/google/android/gms/internal/zzzv;)V

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaah;)V
    .locals 12
    .param p1    # Lcom/google/android/gms/internal/zzaah;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, -0x2

    const/4 v8, -0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQT:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSp:Lcom/google/android/gms/internal/zzaho;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaah;->zzSV:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzafj;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEa:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTh:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaad;->zzvT:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v0, v0, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v0, v0, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    if-eq v0, v8, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v1, v1, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    const/16 v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v2, v2, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzzs; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzs;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzzs;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzzp;->zzd(ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzQS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaad;->zzvT:Ljava/lang/String;

    const-string v3, "admob"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "never_pool_slots"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "never_pool_slots"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v0, v0, Lcom/google/android/gms/internal/zzaah;->errorCode:I

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzzs;

    const-string v1, "No fill from ad server."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaah;->zzSH:Z

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzafj;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTo:Z
    :try_end_3
    .catch Lcom/google/android/gms/internal/zzzs; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_6

    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/zzub;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzub;->zzMg:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzafj;->zzz(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/zzzs; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzSW:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzGh:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzahd;->zzS(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaah;->zzSW:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v0, v0, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzp;->zzb(Lcom/google/android/gms/internal/zzaad;)Lcom/google/android/gms/internal/zziv;
    :try_end_5
    .catch Lcom/google/android/gms/internal/zzzs; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaah;->zzTy:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzafj;->zzx(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaah;->zzTL:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzafj;->zzy(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTw:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/zzaff;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzp;->zzMw:Lcom/google/android/gms/internal/zzub;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzaah;->zzTs:J

    iget-object v11, p0, Lcom/google/android/gms/internal/zzzp;->zzSo:Lcom/google/android/gms/internal/zzij;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzaah;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzij;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzSm:Lcom/google/android/gms/internal/zzzo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzzo;->zza(Lcom/google/android/gms/internal/zzaff;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzQS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "Could not parse mediation config."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/google/android/gms/internal/zzzs;

    const-string v2, "Could not parse mediation config: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzzs;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaah;->zzMg:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzafj;->zzz(Z)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/zzzs; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    move-object v10, v1

    goto :goto_4

    :cond_8
    move-object v4, v1

    goto/16 :goto_3
.end method

.method public final zzbd()V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzzq;-><init>(Lcom/google/android/gms/internal/zzzp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzQS:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzp;->zzQS:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEM:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEK:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaad;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaad;-><init>(Lcom/google/android/gms/internal/zzaae;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/internal/zzabs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaad;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaah;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzaah;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/zzajs;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzajs;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzzr;

    invoke-direct {v0, p0, v7}, Lcom/google/android/gms/internal/zzzr;-><init>(Lcom/google/android/gms/internal/zzzp;Lcom/google/android/gms/internal/zzajo;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzajl;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaev;->zzu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaev;->zzv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaev;->zzw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/zzaev;->zzh(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaad;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzp;->zzSn:Lcom/google/android/gms/internal/zzaae;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaad;-><init>(Lcom/google/android/gms/internal/zzaae;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzp;->zzMO:Lcom/google/android/gms/internal/zzaad;

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzajo;->zzf(Ljava/lang/Object;)V

    goto :goto_0
.end method

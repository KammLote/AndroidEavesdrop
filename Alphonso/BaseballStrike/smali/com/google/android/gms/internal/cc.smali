.class public final Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbEa:Ljava/lang/String;

.field private final zzbKt:Lcom/google/android/gms/internal/cn;

.field private zzbKu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cf",
            "<",
            "Lcom/google/android/gms/internal/da;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbKv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvy:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/cn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/cn;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/common/util/zze;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cy;",
            ">;",
            "Lcom/google/android/gms/internal/cn;",
            "Lcom/google/android/gms/common/util/zze;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbEa:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/cc;->zzvy:Lcom/google/android/gms/common/util/zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cn;

    iput-object p2, p0, Lcom/google/android/gms/internal/cc;->zzbKv:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/cc;)Lcom/google/android/gms/internal/cn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cn;

    return-object v0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/cm;)V
    .locals 6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cm;->zzCT()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cm;->zzCU()Lcom/google/android/gms/internal/da;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cf;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/cf;->zzak(J)V

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->zzJ(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->zzP(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/cf;

    iget-object v4, p0, Lcom/google/android/gms/internal/cc;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/google/android/gms/internal/cf;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/ck;Ljava/util/List;ILcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V
    .locals 14
    .param p5    # Lcom/google/android/gms/internal/zzcun;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ck;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/cd;",
            "Lcom/google/android/gms/internal/zzcun;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p5

    move-object/from16 v7, p4

    move/from16 v6, p3

    move-object/from16 v5, p2

    move-object v3, p1

    move-object v1, p0

    :goto_0
    if-nez v6, :cond_0

    const-string v0, "Starting to fetch a new resource"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    const-string v1, "There is no valid resource for the container: "

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/cd;->zza(Lcom/google/android/gms/internal/cl;)V

    :goto_2
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown fetching source: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v4

    iget-object v0, v1, Lcom/google/android/gms/internal/cc;->zzbKu:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/by;->zzCK()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/cc;->zzbKv:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cy;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cy;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/cc;->zzbKv:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to fetch container "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from network"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/google/android/gms/internal/cc;->mContext:Landroid/content/Context;

    const-wide/16 v12, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ce;

    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/gms/internal/ch;->zzbKB:Lcom/google/android/gms/internal/cg;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cc;ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Ljava/util/List;ILcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V

    move-object v1, v9

    move-object v2, v10

    move-wide v4, v12

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/cy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ck;JLcom/google/android/gms/internal/cb;)V

    goto/16 :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->zzCN()J

    move-result-wide v10

    :goto_5
    const-wide/32 v12, 0xdbba0

    add-long/2addr v10, v12

    iget-object v0, v1, Lcom/google/android/gms/internal/cc;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-gez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/cn;->zzfR(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Attempting to fetch container "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from a saved resource"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->zzCJ()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/ce;

    const/4 v2, 0x1

    sget-object v4, Lcom/google/android/gms/internal/ch;->zzbKB:Lcom/google/android/gms/internal/cg;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cc;ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Ljava/util/List;ILcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/internal/cn;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/cb;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ck;->zzCO()Lcom/google/android/gms/internal/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Attempting to fetch container "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from the default resource"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->zzCJ()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/by;->zzCH()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/internal/ce;

    const/4 v2, 0x2

    sget-object v4, Lcom/google/android/gms/internal/ch;->zzbKB:Lcom/google/android/gms/internal/cg;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cc;ILcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/cg;Ljava/util/List;ILcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V

    invoke-virtual {v9, v10, v11, v0}, Lcom/google/android/gms/internal/cn;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/cb;)V

    goto/16 :goto_2

    :cond_6
    move-object v9, v0

    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/cd;",
            "Lcom/google/android/gms/internal/zzcun;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v7, Lcom/google/android/gms/internal/ck;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ck;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/by;

    invoke-static {}, Lcom/google/android/gms/internal/zzcvr;->zzCv()Lcom/google/android/gms/internal/zzcvr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcvr;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcvr;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzcvr;->zzCv()Lcom/google/android/gms/internal/zzcvr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcvr;->zzCw()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/by;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ck;->zza(Lcom/google/android/gms/internal/by;)Lcom/google/android/gms/internal/ck;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, p0

    move v3, v6

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/cc;->zza(Lcom/google/android/gms/internal/ck;Ljava/util/List;ILcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V

    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1
.end method

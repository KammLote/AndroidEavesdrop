.class synthetic Lcom/inmobi/ads/ah$1;
.super Ljava/lang/Object;
.source "NativeStrandTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/inmobi/ads/ah$a;->values()[Lcom/inmobi/ads/ah$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    :try_start_0
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->a:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->b:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->c:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->g:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->e:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    :goto_6
    :try_start_7
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->i:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->j:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->k:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->l:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->n:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->o:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->p:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    :goto_f
    :try_start_10
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->q:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    :goto_10
    :try_start_11
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->r:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->s:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    :goto_12
    :try_start_13
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    :goto_13
    :try_start_14
    sget-object v0, Lcom/inmobi/ads/ah$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$a;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    .line 186
    :goto_14
    invoke-static {}, Lcom/inmobi/ads/ah$b;->values()[Lcom/inmobi/ads/ah$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    :try_start_15
    sget-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    :goto_16
    :try_start_17
    sget-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ah$b;->d:Lcom/inmobi/ads/ah$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v0, Lcom/inmobi/ads/ah$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/ah$b;->c:Lcom/inmobi/ads/ah$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    return-void

    :catch_0
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_15

    .line 200
    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_d

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    :catch_10
    move-exception v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto/16 :goto_7

    :catch_12
    move-exception v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_5

    :catch_14
    move-exception v0

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_3

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_0
.end method

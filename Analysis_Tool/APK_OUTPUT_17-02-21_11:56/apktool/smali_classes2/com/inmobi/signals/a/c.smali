.class public Lcom/inmobi/signals/a/c;
.super Ljava/lang/Object;
.source "CellularInfoUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/signals/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    move-object v0, v1

    .line 67
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/p$b;->n()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 39
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/signals/p$b;->m()I

    move-result v2

    .line 44
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/inmobi/signals/a/c;->a(II)Z

    move-result v3

    .line 45
    invoke-static {v2, v6}, Lcom/inmobi/signals/a/c;->a(II)Z

    move-result v2

    .line 47
    new-instance v4, Lcom/inmobi/signals/a/a;

    invoke-direct {v4}, Lcom/inmobi/signals/a/a;-><init>()V

    .line 48
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    if-nez v3, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v3

    .line 53
    aget v5, v3, v7

    invoke-virtual {v4, v5}, Lcom/inmobi/signals/a/a;->a(I)V

    .line 54
    aget v3, v3, v6

    invoke-virtual {v4, v3}, Lcom/inmobi/signals/a/a;->b(I)V

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/inmobi/signals/a/a;->a(Ljava/lang/String;)V

    .line 58
    :cond_2
    if-nez v2, :cond_3

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 60
    aget v2, v0, v7

    invoke-virtual {v4, v2}, Lcom/inmobi/signals/a/a;->c(I)V

    .line 61
    aget v0, v0, v6

    invoke-virtual {v4, v0}, Lcom/inmobi/signals/a/a;->d(I)V

    .line 64
    :cond_3
    const-string v0, "s-ho"

    invoke-virtual {v4}, Lcom/inmobi/signals/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "s-co"

    invoke-virtual {v4}, Lcom/inmobi/signals/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "s-iso"

    invoke-virtual {v4}, Lcom/inmobi/signals/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 245
    sparse-switch p0, :sswitch_data_0

    .line 253
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 251
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(II)Z
    .locals 1

    .prologue
    .line 71
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 77
    aput v2, v0, v1

    .line 78
    aput v2, v0, v3

    .line 80
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 89
    const/4 v1, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/a/c;->a:Ljava/lang/String;

    const-string v4, "Error while collecting cell info."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    .line 93
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/a/c;->a:Ljava/lang/String;

    const-string v4, "Error while collecting cell info."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b()Lcom/inmobi/signals/a/b;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/inmobi/signals/a/c;->g()Lcom/inmobi/signals/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/inmobi/signals/a/c;->b()Lcom/inmobi/signals/a/b;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 110
    if-eqz v0, :cond_0

    .line 111
    const-string v2, "c-sc"

    invoke-virtual {v0}, Lcom/inmobi/signals/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-object v1
.end method

.method public static d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/inmobi/signals/a/c;->e()Ljava/util/List;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/a/b;

    invoke-virtual {v0}, Lcom/inmobi/signals/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    const-string v0, "v-sc"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-object v1
.end method

.method public static e()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    .line 193
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 201
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 203
    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5

    .line 207
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_5

    .line 209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 210
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-nez v5, :cond_3

    .line 211
    new-instance v5, Lcom/inmobi/signals/a/b;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    invoke-direct {v5, v3, v1, v2, v6}, Lcom/inmobi/signals/a/b;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 214
    goto :goto_0

    .line 218
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 222
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 223
    new-instance v0, Lcom/inmobi/signals/a/b;

    invoke-direct {v0}, Lcom/inmobi/signals/a/b;-><init>()V

    .line 225
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v3

    .line 226
    invoke-virtual {v0, v3}, Lcom/inmobi/signals/a/b;->a(I)V

    .line 227
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v5

    const/16 v8, 0x63

    if-ne v5, v8, :cond_8

    .line 228
    invoke-virtual {v0, v6}, Lcom/inmobi/signals/a/b;->b(I)V

    .line 236
    :goto_2
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;)V

    .line 237
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 239
    goto/16 :goto_0

    .line 230
    :cond_8
    invoke-static {v3}, Lcom/inmobi/signals/a/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 231
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v3

    add-int/lit8 v3, v3, -0x74

    invoke-virtual {v0, v3}, Lcom/inmobi/signals/a/b;->b(I)V

    goto :goto_2

    .line 233
    :cond_9
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x71

    invoke-virtual {v0, v3}, Lcom/inmobi/signals/a/b;->b(I)V

    goto :goto_2

    .line 241
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method private static f()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    .line 118
    if-nez v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    const-string v0, "signals"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v0, v4}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 126
    :goto_1
    const-string v4, "signals"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 131
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static g()Lcom/inmobi/signals/a/b;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 135
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 136
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v7

    .line 137
    :cond_1
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 138
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v8

    .line 139
    aget v0, v8, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    const/4 v0, 0x1

    aget v0, v8, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v0, v4, :cond_4

    .line 143
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 144
    if-eqz v9, :cond_4

    move v4, v5

    move-object v0, v7

    .line 146
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 147
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 148
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 151
    :cond_2
    if-eqz v0, :cond_4

    .line 152
    new-instance v7, Lcom/inmobi/signals/a/b;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/inmobi/signals/a/b;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 158
    if-eqz v4, :cond_0

    aget v0, v8, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 162
    new-instance v0, Lcom/inmobi/signals/a/b;

    invoke-direct {v0}, Lcom/inmobi/signals/a/b;-><init>()V

    .line 163
    instance-of v5, v4, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_5

    move-object v2, v4

    .line 164
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 166
    invoke-virtual {v0, v6}, Lcom/inmobi/signals/a/b;->b(I)V

    .line 167
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inmobi/signals/a/b;->a(I)V

    .line 168
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;)V

    :goto_2
    move-object v7, v0

    .line 176
    goto/16 :goto_0

    :cond_5
    move-object v5, v4

    .line 170
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 172
    invoke-virtual {v0, v6}, Lcom/inmobi/signals/a/b;->b(I)V

    .line 173
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inmobi/signals/a/b;->a(I)V

    .line 174
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static h()Z
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "signals"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

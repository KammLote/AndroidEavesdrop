.class public Lcom/inmobi/signals/b/b;
.super Ljava/lang/Object;
.source "WifiInfoUtil.java"


# direct methods
.method private static a(B)J
    .locals 4

    .prologue
    .line 120
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 6

    .prologue
    const/4 v5, 0x6

    .line 88
    const-string v0, ":"

    .line 89
    const-string v0, "\\:"

    .line 90
    const-string v0, "\\:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    new-array v2, v5, [B

    .line 93
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 95
    :try_start_0
    aget-object v3, v1, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    const-wide/16 v0, 0x0

    .line 101
    :goto_1
    return-wide v0

    :cond_0
    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a([B)J

    move-result-wide v0

    goto :goto_1
.end method

.method private static a([B)J
    .locals 5

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    .line 106
    if-eqz p0, :cond_0

    .line 107
    array-length v2, p0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 108
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v0

    .line 109
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 110
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 111
    const/4 v2, 0x2

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 112
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 113
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 116
    :cond_0
    return-wide v0
.end method

.method public static a()Lcom/inmobi/signals/b/a;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/inmobi/signals/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_1
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->j()I

    move-result v0

    .line 30
    invoke-static {v0}, Lcom/inmobi/signals/b/b;->a(I)Z

    move-result v1

    .line 31
    invoke-static {v0}, Lcom/inmobi/signals/b/b;->b(I)Z

    move-result v0

    .line 32
    invoke-static {v1, v0}, Lcom/inmobi/signals/b/b;->a(ZZ)Lcom/inmobi/signals/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/net/wifi/ScanResult;Z)Lcom/inmobi/signals/b/a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    .line 162
    if-eqz p0, :cond_0

    .line 163
    new-instance v1, Lcom/inmobi/signals/b/a;

    invoke-direct {v1}, Lcom/inmobi/signals/b/a;-><init>()V

    .line 164
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/inmobi/signals/b/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/b/a;->a(J)V

    .line 165
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/inmobi/signals/b/a;->a(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v0}, Lcom/inmobi/signals/b/a;->a(I)V

    move-object v0, v1

    .line 168
    :cond_0
    return-object v0

    .line 165
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(ZZ)Lcom/inmobi/signals/b/a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 63
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Lcom/inmobi/signals/b/b;->a(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Lcom/inmobi/signals/b/a;

    invoke-direct {v2}, Lcom/inmobi/signals/b/a;-><init>()V

    .line 71
    invoke-static {v4}, Lcom/inmobi/signals/b/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/signals/b/a;->a(J)V

    .line 72
    if-eqz v0, :cond_2

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_2
    if-eqz p1, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/inmobi/signals/b/a;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/inmobi/signals/b/a;->a(I)V

    .line 77
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/inmobi/signals/b/a;->b(I)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->j()I

    move-result v0

    .line 144
    invoke-static {v0}, Lcom/inmobi/signals/b/b;->a(I)Z

    move-result v1

    .line 145
    invoke-static {v0}, Lcom/inmobi/signals/b/b;->b(I)Z

    move-result v2

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    if-eqz p0, :cond_1

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 150
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/inmobi/signals/b/b;->a(ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-static {v0, v2}, Lcom/inmobi/signals/b/b;->a(Landroid/net/wifi/ScanResult;Z)Lcom/inmobi/signals/b/a;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    return-object v3
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/inmobi/signals/b/b;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 1

    .prologue
    .line 124
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 84
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "_nomap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/Map;
    .locals 6
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
    .line 37
    invoke-static {}, Lcom/inmobi/signals/b/b;->a()Lcom/inmobi/signals/b/a;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v2, "c-ap-bssid"

    invoke-virtual {v0}, Lcom/inmobi/signals/b/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-object v1
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/inmobi/signals/b/b;->a(II)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v3, v0

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v3, v2

    .line 134
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 135
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v6

    const-string v7, "signals"

    invoke-static {v6, v7, v5}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method public static d()Ljava/util/Map;
    .locals 6
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
    .line 172
    invoke-static {}, Lcom/inmobi/signals/b/c;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 176
    const-string v2, "v-ap-bssid"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/b/a;

    invoke-virtual {v0}, Lcom/inmobi/signals/b/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-object v1
.end method

.method private static e()Z
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "signals"

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

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

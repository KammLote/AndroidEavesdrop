.class public Lcom/facebook/ads/internal/server/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/server/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/server/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/server/b;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/server/b;->a:Lcom/facebook/ads/internal/server/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/ads/internal/server/b;
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/server/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/ads/internal/server/b;->a:Lcom/facebook/ads/internal/server/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/server/d;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/ads/internal/server/d;

    invoke-direct {v2, p2, p3}, Lcom/facebook/ads/internal/server/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, v2, Lcom/facebook/ads/internal/server/d;->d:Ljava/lang/String;

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v0, "meta"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v4, v2, Lcom/facebook/ads/internal/server/d;->e:Lcom/facebook/ads/internal/dto/b;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/dto/b;->a(Ljava/lang/String;)V

    const-string v0, "definition"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dto/c;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/dto/c;

    move-result-object v0

    iget-object v4, v2, Lcom/facebook/ads/internal/server/d;->e:Lcom/facebook/ads/internal/dto/b;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/dto/b;->a(Lcom/facebook/ads/internal/dto/c;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/dto/c;->a()Lcom/facebook/ads/internal/server/AdPlacementType;

    move-result-object v4

    const-string v0, "ads"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ads"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/dto/a;

    invoke-direct {v1, v4}, Lcom/facebook/ads/internal/dto/a;-><init>(Lcom/facebook/ads/internal/server/AdPlacementType;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "adapter"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/dto/a;->a(Ljava/lang/String;)V

    const-string v6, "meta"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/facebook/ads/internal/dto/a;->a(Lorg/json/JSONObject;)V

    iget-object v5, v2, Lcom/facebook/ads/internal/server/d;->e:Lcom/facebook/ads/internal/dto/b;

    invoke-virtual {v5, v1}, Lcom/facebook/ads/internal/dto/b;->a(Lcom/facebook/ads/internal/dto/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "plid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/server/e;
    .locals 2

    new-instance v0, Lcom/facebook/ads/internal/server/e;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/internal/server/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/internal/server/e;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "no message in the error response"

    invoke-static {v1}, Lcom/facebook/ads/internal/dev/Debug;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/server/c;
    .locals 7

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "meta"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    move-object v3, v0

    :goto_0
    if-nez v1, :cond_2

    const-string v0, ""

    move-object v2, v0

    :goto_1
    if-nez v1, :cond_3

    const-string v0, ""

    :goto_2
    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_3
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response type unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dev/Debug;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/server/c;

    sget-object v1, Lcom/facebook/ads/internal/server/c$a;->a:Lcom/facebook/ads/internal/server/c$a;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/server/c;-><init>(Lcom/facebook/ads/internal/server/c$a;)V

    :goto_4
    return-object v0

    :cond_1
    const-string v0, "version"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    const-string v0, "srv"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string v0, "geo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_0
    const-string v6, "ads"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    goto :goto_3

    :sswitch_1
    const-string v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v4, v3, v2, v0}, Lcom/facebook/ads/internal/server/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/server/d;

    move-result-object v0

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v4, v3, v2}, Lcom/facebook/ads/internal/server/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/server/e;

    move-result-object v0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x178b0 -> :sswitch_0
        0x5c4d208 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/facebook/ads/internal/adapters/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/facebook/ads/internal/util/b$a;

.field private final b:Landroid/net/Uri;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/ads/NativeAd$Image;

.field private final i:Lcom/facebook/ads/NativeAd$Image;

.field private final j:Lcom/facebook/ads/NativeAd$Rating;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Lcom/facebook/ads/internal/util/e;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Z

.field private final r:Lcom/facebook/ads/NativeAd$Image;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/n;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/e;Ljava/lang/String;Ljava/util/Collection;ZLcom/facebook/ads/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Rating;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/util/e;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/internal/adapters/n;->z:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/n;->A:Lcom/facebook/ads/internal/util/b$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/n;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/n;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/n;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/n;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/internal/adapters/n;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/ads/internal/adapters/n;->h:Lcom/facebook/ads/NativeAd$Image;

    iput-object p8, p0, Lcom/facebook/ads/internal/adapters/n;->i:Lcom/facebook/ads/NativeAd$Image;

    iput-object p9, p0, Lcom/facebook/ads/internal/adapters/n;->j:Lcom/facebook/ads/NativeAd$Rating;

    iput-object p10, p0, Lcom/facebook/ads/internal/adapters/n;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/facebook/ads/internal/adapters/n;->l:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->m:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->n:Lcom/facebook/ads/internal/util/e;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->o:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->p:Ljava/util/Collection;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->q:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->r:Lcom/facebook/ads/NativeAd$Image;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->s:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->t:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->u:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/n;->v:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/n;
    .locals 23

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v2, "fbad_command"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "subtitle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "call_to_action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "social_context"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    move-result-object v9

    const-string v2, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    move-result-object v10

    const-string v2, "star_rating"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/NativeAd$Rating;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v11

    const-string v2, "impression_report_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "click_report_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "used_report_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "manual_imp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    const/16 v19, 0x0

    const-string v2, "ad_choices_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    move-result-object v19

    :cond_2
    const-string v2, "ad_choices_link_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v2, "request_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v2, "invalidation_behavior"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/e;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/util/e;

    move-result-object v15

    const-string v2, "invalidation_report_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string v22, "detection_strings"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/internal/util/f;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v17

    new-instance v2, Lcom/facebook/ads/internal/adapters/n;

    move-object/from16 v22, p0

    invoke-direct/range {v2 .. v22}, Lcom/facebook/ads/internal/adapters/n;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/util/e;Ljava/lang/String;Ljava/util/Collection;ZLcom/facebook/ads/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2}, Lcom/facebook/ads/internal/adapters/n;->q()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v2, v17

    goto :goto_1
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "mil"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mil"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "mil"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mil"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private p()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->y:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/o;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/n;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v4, p0, Lcom/facebook/ads/internal/adapters/n;->y:Z

    :cond_0
    return-void
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->h:Lcom/facebook/ads/NativeAd$Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->i:Lcom/facebook/ads/NativeAd$Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/util/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->n:Lcom/facebook/ads/internal/util/e;

    return-object v0
.end method

.method public a(I)V
    .locals 6

    const-wide/16 v4, 0x0

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/adapters/n;->z:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->A:Lcom/facebook/ads/internal/util/b$a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/adapters/n;->z:J

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/n;->A:Lcom/facebook/ads/internal/util/b$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/n;->t:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/b;->a(JLcom/facebook/ads/internal/util/b$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    iput-wide v4, p0, Lcom/facebook/ads/internal/adapters/n;->z:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->A:Lcom/facebook/ads/internal/util/b$a;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->x:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/facebook/ads/internal/adapters/n;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "touch"

    invoke-static {p2}, Lcom/facebook/ads/internal/util/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/util/o;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/util/o;-><init>(Ljava/util/Map;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/n;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v4, p0, Lcom/facebook/ads/internal/adapters/n;->x:Z

    const-string v0, "Click logged"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->b:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/action/b;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/a;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/adapters/n;->z:J

    invoke-virtual {v0}, Lcom/facebook/ads/internal/action/a;->a()Lcom/facebook/ads/internal/util/b$a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/n;->A:Lcom/facebook/ads/internal/util/b$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/action/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/adapters/n;->a:Ljava/lang/String;

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->w:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/n;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/o;-><init>(Ljava/util/Map;)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/n;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean v4, p0, Lcom/facebook/ads/internal/adapters/n;->w:Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->p:Ljava/util/Collection;

    return-object v0
.end method

.method public d()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->h:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public e()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->i:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/n;->p()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->j:Lcom/facebook/ads/NativeAd$Rating;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/n;->q:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->v:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->r:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/n;->s:Ljava/lang/String;

    return-object v0
.end method

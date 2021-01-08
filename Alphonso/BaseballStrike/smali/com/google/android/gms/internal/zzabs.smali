.class public final Lcom/google/android/gms/internal/zzabs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static final zzUK:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/gms/internal/zzabs;->zzUK:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaad;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaah;
    .locals 48

    :try_start_0
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "ad_base_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "ad_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "ad_size"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "ad_slot_size"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/gms/internal/zzaad;->zzSF:I

    if-eqz v4, :cond_3

    const/16 v27, 0x1

    :goto_0
    const-string v4, "ad_json"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v4, "ad_html"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    const-string v4, "body"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-wide/16 v20, -0x1

    const-string v4, "debug_dialog"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "debug_signals"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "interstitial_timeout"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v12, v8

    :goto_1
    const-string v4, "orientation"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v18, -0x1

    const-string v8, "portrait"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzahd;->zzhU()I

    move-result v18

    :cond_2
    :goto_2
    const/4 v4, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaad;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/zzabl;->zza(Lcom/google/android/gms/internal/zzaad;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzabz;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzabk;)Lcom/google/android/gms/internal/zzaah;

    move-result-object v4

    iget-object v6, v4, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    iget-wide v0, v4, Lcom/google/android/gms/internal/zzaah;->zzTs:J

    move-wide/from16 v20, v0

    :goto_3
    if-nez v7, :cond_6

    new-instance v4, Lcom/google/android/gms/internal/zzaah;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaah;-><init>(I)V

    :goto_4
    return-object v4

    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_1

    :cond_5
    const-string v8, "landscape"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzahd;->zzhT()I

    move-result v18

    goto :goto_2

    :cond_6
    const-string v5, "click_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_c

    const/4 v8, 0x0

    :goto_5
    if-eqz v5, :cond_7

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :cond_7
    const-string v5, "impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_d

    const/4 v9, 0x0

    :goto_6
    if-eqz v5, :cond_8

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_8
    const-string v5, "manual_impression_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v4, :cond_e

    const/4 v15, 0x0

    :goto_7
    if-eqz v5, :cond_9

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    :cond_9
    if-eqz v4, :cond_10

    iget v5, v4, Lcom/google/android/gms/internal/zzaah;->orientation:I

    const/4 v10, -0x1

    if-eq v5, v10, :cond_a

    iget v0, v4, Lcom/google/android/gms/internal/zzaah;->orientation:I

    move/from16 v18, v0

    :cond_a
    iget-wide v10, v4, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    if-lez v5, :cond_10

    iget-wide v10, v4, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    :goto_8
    const-string v4, "active_view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string v4, "ad_is_javascript"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v4, "ad_passback_url"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_b
    const-string v4, "mediation"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "custom_render_allowed"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v4, "content_url_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "content_vertical_opted_out"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v46

    const-string v4, "prefetch"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "refresh_interval_milliseconds"

    const-wide/16 v16, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v4, "mediation_config_cache_time_milliseconds"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v4, "gws_query_id"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "height"

    const-string v5, "fluid"

    const-string v32, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const-string v4, "native_express"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string v4, "video_start_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string v4, "video_complete_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string v4, "rewards"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaed;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v34

    const-string v4, "use_displayed_impression"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v37

    const-string v4, "auto_protection_configuration"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaaj;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaaj;

    move-result-object v38

    const-string v4, "set_cookie"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v4, "remote_ping_urls"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzabs;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v41

    const-string v4, "safe_browsing"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaep;->zzf(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaep;

    move-result-object v44

    const-string v4, "render_in_browser"

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzaad;->zzMg:Z

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v42

    new-instance v4, Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaad;->zzSH:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaad;->zzSV:Z

    move/from16 v39, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaad;->zzTh:Z

    move/from16 v47, v0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v47}, Lcom/google/android/gms/internal/zzaah;-><init>(Lcom/google/android/gms/internal/zzaad;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/zzaed;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaj;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/zzaep;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    const-string v5, "Could not parse the inline ad response: "

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzaah;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/zzaah;-><init>(I)V

    goto/16 :goto_4

    :cond_c
    :try_start_1
    iget-object v8, v4, Lcom/google/android/gms/internal/zzaah;->zzMc:Ljava/util/List;

    goto/16 :goto_5

    :cond_d
    iget-object v9, v4, Lcom/google/android/gms/internal/zzaah;->zzMd:Ljava/util/List;

    goto/16 :goto_6

    :cond_e
    iget-object v15, v4, Lcom/google/android/gms/internal/zzaah;->zzTq:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :cond_f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-wide v10, v12

    goto/16 :goto_8

    :cond_11
    move-object v7, v5

    goto/16 :goto_3
.end method

.method private static zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabj;)Lorg/json/JSONObject;
    .locals 19
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/zzabj;->zzUj:Lcom/google/android/gms/internal/zzaad;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzabj;->zzzX:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/zzabj;->zzUk:Lcom/google/android/gms/internal/zzaca;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzabj;->zzSG:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/zzabj;->zzUl:Lorg/json/JSONObject;

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v2, "extra_caps"

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzFn:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzabj;->zzSN:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "eid"

    const-string v3, ","

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabj;->zzSN:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSy:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v2, "ad_pos"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSy:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/zzafn;->zzhK()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "abf"

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v12, v3, Lcom/google/android/gms/internal/zzir;->zzzP:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_3

    const-string v2, "cust_age"

    sget-object v4, Lcom/google/android/gms/internal/zzabs;->zzUK:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    iget-wide v12, v3, Lcom/google/android/gms/internal/zzir;->zzzP:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v2, "extras"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->zzzQ:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    const-string v2, "cust_gender"

    iget v4, v3, Lcom/google/android/gms/internal/zzir;->zzzQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzzR:Ljava/util/List;

    if-eqz v2, :cond_6

    const-string v2, "kw"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzzR:Ljava/util/List;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->zzzT:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    const-string v2, "tag_for_child_directed_treatment"

    iget v4, v3, Lcom/google/android/gms/internal/zzir;->zzzT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v2, v3, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    if-eqz v2, :cond_8

    const-string v2, "adtest"

    const-string v4, "on"

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_15

    iget-boolean v2, v3, Lcom/google/android/gms/internal/zzir;->zzzU:Z

    if-eqz v2, :cond_9

    const-string v2, "d_imp_hdr"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzzV:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "ppid"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzzV:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzzW:Lcom/google/android/gms/internal/zzlt;

    if-eqz v2, :cond_15

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzzW:Lcom/google/android/gms/internal/zzlt;

    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBy:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "acolor"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBy:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->backgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "bgcolor"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->backgroundColor:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBz:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBA:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "gradientto"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBz:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gradientfrom"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBA:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBB:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "bcolor"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBB:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v2, "bthick"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBC:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBD:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_f

    const-string v11, "btype"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBE:I

    packed-switch v2, :pswitch_data_1

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_10

    const-string v11, "callbuttoncolor"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBF:Ljava/lang/String;

    if-eqz v2, :cond_11

    const-string v2, "channel"

    iget-object v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBF:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBG:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "dcolor"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBG:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBH:Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string v2, "font"

    iget-object v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBH:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBI:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "hcolor"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBI:I

    invoke-static {v11}, Lcom/google/android/gms/internal/zzabs;->zzu(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v2, "headersize"

    iget v11, v4, Lcom/google/android/gms/internal/zzlt;->zzBJ:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v4, Lcom/google/android/gms/internal/zzlt;->zzBK:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v2, "q"

    iget-object v4, v4, Lcom/google/android/gms/internal/zzlt;->zzBK:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_16

    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzzY:Ljava/lang/String;

    if-eqz v2, :cond_16

    const-string v2, "url"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzzY:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_19

    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzAa:Landroid/os/Bundle;

    if-eqz v2, :cond_17

    const-string v2, "custom_targeting"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzAa:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/util/List;

    if-eqz v2, :cond_18

    const-string v2, "category_exclusions"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/util/List;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzAc:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v2, "request_agent"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzAc:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_1a

    iget-object v2, v3, Lcom/google/android/gms/internal/zzir;->zzAd:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v2, "request_pkg"

    iget-object v4, v3, Lcom/google/android/gms/internal/zzir;->zzAd:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget v2, v3, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_1b

    const-string v2, "is_designed_for_families"

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzir;->zzAe:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v2, v2, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    if-nez v2, :cond_1f

    const-string v2, "format"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v3, v3, Lcom/google/android/gms/internal/zziv;->zzAu:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-eqz v2, :cond_1c

    const-string v2, "fluid"

    const-string v3, "height"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget v2, v2, Lcom/google/android/gms/internal/zziv;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1e

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v2, v2, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    if-eqz v2, :cond_2a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v12, v2, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    array-length v13, v12

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    :goto_2
    if-ge v4, v13, :cond_27

    aget-object v14, v12, v4

    iget-boolean v3, v14, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :pswitch_0
    const-string v2, "none"

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "dashed"

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "dotted"

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "solid"

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "dark"

    goto/16 :goto_1

    :pswitch_5
    const-string v2, "light"

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "medium"

    goto/16 :goto_1

    :cond_1f
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v11, v2, Lcom/google/android/gms/internal/zziv;->zzAw:[Lcom/google/android/gms/internal/zziv;

    array-length v12, v11

    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v18

    :goto_4
    if-ge v4, v12, :cond_1c

    aget-object v13, v11, v4

    iget-boolean v14, v13, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-nez v14, :cond_20

    if-nez v3, :cond_20

    const-string v3, "format"

    iget-object v14, v13, Lcom/google/android/gms/internal/zziv;->zzAu:Ljava/lang/String;

    invoke-virtual {v10, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_20
    iget-boolean v13, v13, Lcom/google/android/gms/internal/zziv;->zzAy:Z

    if-eqz v13, :cond_21

    if-nez v2, :cond_21

    const-string v2, "fluid"

    const-string v13, "height"

    invoke-virtual {v10, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_21
    if-eqz v3, :cond_22

    if-nez v2, :cond_1c

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_23
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_24

    const-string/jumbo v3, "|"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget v3, v14, Lcom/google/android/gms/internal/zziv;->width:I

    const/4 v15, -0x1

    if-ne v3, v15, :cond_25

    iget v3, v14, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    int-to-float v3, v3

    iget v15, v7, Lcom/google/android/gms/internal/zzaca;->zzxT:F

    div-float/2addr v3, v15

    float-to-int v3, v3

    :goto_5
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v14, Lcom/google/android/gms/internal/zziv;->height:I

    const/4 v15, -0x2

    if-ne v3, v15, :cond_26

    iget v3, v14, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    int-to-float v3, v3

    iget v14, v7, Lcom/google/android/gms/internal/zzaca;->zzxT:F

    div-float/2addr v3, v14

    float-to-int v3, v3

    :goto_6
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string v3, "Problem serializing ad request to JSON: "

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_8
    return-object v2

    :cond_25
    :try_start_1
    iget v3, v14, Lcom/google/android/gms/internal/zziv;->width:I

    goto :goto_5

    :cond_26
    iget v3, v14, Lcom/google/android/gms/internal/zziv;->height:I

    goto :goto_6

    :cond_27
    if-eqz v2, :cond_29

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    const-string/jumbo v3, "|"

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    const/4 v2, 0x0

    const-string v3, "320x50"

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v2, "sz"

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSF:I

    if-eqz v2, :cond_2c

    const-string v2, "native_version"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSF:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "native_templates"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzws:Ljava/util/List;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "native_image_orientation"

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzwl:Lcom/google/android/gms/internal/zzon;

    if-eqz v2, :cond_2e

    iget v2, v2, Lcom/google/android/gms/internal/zzon;->zzIq:I

    :goto_9
    packed-switch v2, :pswitch_data_2

    const-string v2, "not_set"

    :goto_a
    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "native_custom_templates"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSO:Ljava/util/List;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzTi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2c

    :try_start_2
    const-string v2, "native_advanced_settings"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzaad;->zzTi:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2c
    :goto_b
    :try_start_3
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzwp:Ljava/util/List;

    if-eqz v2, :cond_30

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzwp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_30

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzwp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_2f

    const-string v2, "iba"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_2e
    const/4 v2, 0x0

    goto :goto_9

    :pswitch_7
    const-string v2, "portrait"

    goto :goto_a

    :pswitch_8
    const-string v2, "landscape"

    goto :goto_a

    :pswitch_9
    const-string v2, "any"

    goto :goto_a

    :catch_1
    move-exception v2

    const-string v3, "Problem creating json from native advanced settings"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    const-string v2, "ina"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_30
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zziv;->zzAz:Z

    if-eqz v2, :cond_31

    const-string v2, "ene"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzwn:Lcom/google/android/gms/internal/zzky;

    if-eqz v2, :cond_32

    const-string v2, "is_icon_ad"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "icon_ad_expansion_behavior"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzwn:Lcom/google/android/gms/internal/zzky;

    iget v3, v3, Lcom/google/android/gms/internal/zzky;->zzAT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    const-string v2, "slotname"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzvT:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSA:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_33

    const-string v2, "vc"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSA:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v2, "ms"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzabj;->zzSB:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "seq_num"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSC:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "session_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSD:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "js"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzabj;->zzUh:Lcom/google/android/gms/internal/zzacm;

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTa:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzabj;->zzUg:Landroid/os/Bundle;

    const-string v11, "am"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVF:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "cog"

    iget-boolean v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVG:Z

    invoke-static {v12}, Lcom/google/android/gms/internal/zzabs;->zzt(Z)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "coh"

    iget-boolean v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVH:Z

    invoke-static {v12}, Lcom/google/android/gms/internal/zzabs;->zzt(Z)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/internal/zzaca;->zzVI:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34

    const-string v11, "carrier"

    iget-object v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVI:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    const-string v11, "gl"

    iget-object v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVJ:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v11, v7, Lcom/google/android/gms/internal/zzaca;->zzVK:Z

    if-eqz v11, :cond_35

    const-string v11, "simulator"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    iget-boolean v11, v7, Lcom/google/android/gms/internal/zzaca;->zzVL:Z

    if-eqz v11, :cond_36

    const-string v11, "is_sidewinder"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    const-string v11, "ma"

    iget-boolean v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVM:Z

    invoke-static {v12}, Lcom/google/android/gms/internal/zzabs;->zzt(Z)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "sp"

    iget-boolean v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVN:Z

    invoke-static {v12}, Lcom/google/android/gms/internal/zzabs;->zzt(Z)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "hl"

    iget-object v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVO:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/internal/zzaca;->zzVP:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_37

    const-string v11, "mv"

    iget-object v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVP:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v11, "muv"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVR:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v7, Lcom/google/android/gms/internal/zzaca;->zzVS:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_38

    const-string v11, "cnt"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVS:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    const-string v11, "gnt"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "pt"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVU:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "rm"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVV:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "riv"

    iget v12, v7, Lcom/google/android/gms/internal/zzaca;->zzVW:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v12, "build_build"

    iget-object v13, v7, Lcom/google/android/gms/internal/zzaca;->zzWb:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "build_device"

    iget-object v13, v7, Lcom/google/android/gms/internal/zzaca;->zzWc:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "is_charging"

    iget-boolean v14, v7, Lcom/google/android/gms/internal/zzaca;->zzVY:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "battery_level"

    iget-wide v14, v7, Lcom/google/android/gms/internal/zzaca;->zzVX:D

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v13, "battery"

    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "active_network_state"

    iget v14, v7, Lcom/google/android/gms/internal/zzaca;->zzWa:I

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "active_network_metered"

    iget-boolean v14, v7, Lcom/google/android/gms/internal/zzaca;->zzVZ:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_39

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v14, "predicted_latency_micros"

    iget v15, v2, Lcom/google/android/gms/internal/zzacm;->zzWm:I

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "predicted_down_throughput_bps"

    iget-wide v0, v2, Lcom/google/android/gms/internal/zzacm;->zzWn:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v14, "predicted_up_throughput_bps"

    iget-wide v0, v2, Lcom/google/android/gms/internal/zzacm;->zzWo:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "predictions"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_39
    const-string v2, "network"

    invoke-virtual {v11, v2, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v12, "is_browser_custom_tabs_capable"

    iget-boolean v13, v7, Lcom/google/android/gms/internal/zzaca;->zzWd:Z

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "browser"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v3, :cond_3b

    const-string v12, "android_mem_info"

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v2, "runtime_free"

    const-string v14, "runtime_free_memory"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "runtime_max"

    const-string v14, "runtime_max_memory"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "runtime_total"

    const-string v14, "runtime_total_memory"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "web_view_count"

    const-string v14, "web_view_count"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_memory_info"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    if-eqz v2, :cond_3a

    const-string v3, "debug_info_dalvik_private_dirty"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_dalvik_pss"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_dalvik_shared_dirty"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_native_private_dirty"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_native_pss"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_native_shared_dirty"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_other_private_dirty"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_other_pss"

    iget v14, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "debug_info_other_shared_dirty"

    iget v2, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "parental_controls"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v7, Lcom/google/android/gms/internal/zzaca;->zzVQ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "package_version"

    iget-object v4, v7, Lcom/google/android/gms/internal/zzaca;->zzVQ:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    const-string v3, "play_store"

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "device"

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v2, "doritos"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzabj;->zzUi:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzDO:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/internal/zzabj;->zzqk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v11, :cond_3d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzabj;->zzqk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzabj;->zzqk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    :cond_3d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_54

    const-string v11, "rdid"

    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_lat"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "idtype"

    const-string v3, "adid"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_d
    const-string v2, "pii"

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_55

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/zzabs;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_3f
    :goto_e
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_40

    const-string v2, "quality_signals"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSE:Landroid/os/Bundle;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_41

    iget-boolean v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSH:Z

    if-eqz v2, :cond_41

    const-string v2, "forceHttps"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSH:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    if-eqz v8, :cond_42

    const-string v2, "content_info"

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_56

    const-string v2, "u_sd"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzxT:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSJ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_44

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSK:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-nez v2, :cond_43

    :try_start_4
    const-string v2, "view_hierarchy"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzaad;->zzSK:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_43
    :goto_10
    :try_start_5
    const-string v2, "correlation_id"

    iget-wide v6, v5, Lcom/google/android/gms/internal/zzaad;->zzSL:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_45

    const-string v2, "request_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSM:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_46

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSQ:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "anchor"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSQ:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_47

    const-string v2, "android_app_volume"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSR:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_48

    const-string v2, "android_app_muted"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSX:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_49

    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSS:I

    if-lez v2, :cond_49

    const-string v2, "target_api"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_4a

    const-string v3, "scroll_index"

    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->zzST:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_57

    const/4 v2, -0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_4b

    const-string v2, "_activity_context"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSU:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4d

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-nez v2, :cond_4c

    :try_start_6
    const-string v2, "app_settings"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, v5, Lcom/google/android/gms/internal/zzaad;->zzSY:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4c
    :goto_12
    :try_start_7
    const-string v2, "render_in_browser"

    iget-boolean v3, v5, Lcom/google/android/gms/internal/zzaad;->zzMg:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_4e

    const-string v2, "android_num_video_cache_tasks"

    iget v3, v5, Lcom/google/android/gms/internal/zzaad;->zzSZ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzvV:Lcom/google/android/gms/internal/zzajd;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/zzabj;->zzUm:Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v7, "cl"

    const-string v8, "158551207"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "rapid_rc"

    const-string v8, "dev"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "rapid_rollup"

    const-string v8, "HEAD"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "build_meta"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v7, "mf"

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzFp:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "instant_app"

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbgz;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbgy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbgy;->zzsl()Z

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lite"

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzajd;->zzaaR:Z

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "local_service"

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "sdk_env"

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cache_state"

    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4f

    const-string v2, "gct"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTb:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_50

    iget-boolean v2, v5, Lcom/google/android/gms/internal/zzaad;->zzTc:Z

    if-eqz v2, :cond_50

    const-string v2, "de"

    const-string v3, "1"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzEa:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iget-object v2, v2, Lcom/google/android/gms/internal/zziv;->zzAu:Ljava/lang/String;

    const-string v3, "interstitial_mb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "reward_mb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_51
    const/4 v2, 0x1

    move v3, v2

    :goto_13
    iget-object v4, v5, Lcom/google/android/gms/internal/zzaad;->zzTd:Landroid/os/Bundle;

    if-eqz v4, :cond_59

    const/4 v2, 0x1

    :goto_14
    if-eqz v3, :cond_52

    if-eqz v2, :cond_52

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "interstitial_pool"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "counters"

    invoke-virtual {v10, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->versionCode:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_53

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaev;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzaev;->zzp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "gmp_app_id"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTe:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "TIME_OUT"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "sai_timeout"

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzDD:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    const-string v2, "fbs_aeid"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTg:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzCG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5d

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Lcom/google/android/gms/internal/zzmo;->zzCH:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v4, v3, :cond_5d

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v5, :cond_5c

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/android/gms/internal/zzaiv;->zzaQ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_54
    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaix;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzaix;->zzW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdid"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pdidtype"

    const-string v3, "ssaid"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_55
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget v2, v2, Lcom/google/android/gms/internal/zzir;->versionCode:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3f

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/location/Location;

    if-eqz v2, :cond_3f

    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/location/Location;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zzabs;->zza(Ljava/util/HashMap;Landroid/location/Location;)V

    goto/16 :goto_e

    :cond_56
    const-string v2, "u_sd"

    iget v3, v7, Lcom/google/android/gms/internal/zzaca;->zzxT:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v3, v7, Lcom/google/android/gms/internal/zzaca;->zzSJ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v3, v7, Lcom/google/android/gms/internal/zzaca;->zzSI:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :catch_2
    move-exception v2

    const-string v3, "Problem serializing view hierarchy to JSON"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_57
    iget v2, v5, Lcom/google/android/gms/internal/zzaad;->zzST:I

    goto/16 :goto_11

    :catch_3
    move-exception v2

    const-string v3, "Problem creating json from app settings"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_58
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_13

    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_5a
    iget-object v2, v5, Lcom/google/android/gms/internal/zzaad;->zzTf:Ljava/lang/String;

    if-nez v2, :cond_5b

    const-string v2, "fbs_aiid"

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    :cond_5b
    const-string v2, "fbs_aiid"

    iget-object v3, v5, Lcom/google/android/gms/internal/zzaad;->zzTf:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    :cond_5c
    const-string v2, "video_decoders"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzz(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzagy;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad Request JSON: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    :cond_5e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzagy;->zzj(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_8

    :cond_5f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_17

    :cond_60
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static zza(Ljava/util/HashMap;Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    const-wide v6, 0x416312d000000000L    # 1.0E7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "radius"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lat"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "long"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uule"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzaah;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ad_base_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzPi:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "ad_size"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzAx:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaah;->zzAx:Z

    if-eqz v0, :cond_11

    const-string v0, "ad_json"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTt:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "debug_dialog"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTt:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTK:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "debug_signals"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTK:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    const-string v0, "interstitial_timeout"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/zzaah;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzahd;->zzhU()I

    move-result v2

    if-ne v0, v2, :cond_12

    const-string v0, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzMc:Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v0, "click_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzMc:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzMd:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzMd:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTq:Ljava/util/List;

    if-eqz v0, :cond_8

    const-string v0, "manual_impression_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTq:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTw:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "active_view"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTw:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTu:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTv:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "ad_passback_url"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTv:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v0, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTo:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTx:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTy:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTL:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTz:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_b

    const-string v0, "refresh_interval_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTp:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_c

    const-string v0, "mediation_config_cache_time_milliseconds"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTp:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTC:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v2, "fluid"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaah;->zzAy:Z

    if-eqz v0, :cond_13

    const-string v0, "height"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzAz:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTE:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string v0, "video_start_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTE:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTF:Ljava/util/List;

    if-eqz v0, :cond_f

    const-string v0, "video_complete_urls"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTF:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzm(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->zzTD:Lcom/google/android/gms/internal/zzaed;

    if-eqz v0, :cond_10

    const-string v0, "rewards"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTD:Lcom/google/android/gms/internal/zzaed;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rb_type"

    iget-object v5, v2, Lcom/google/android/gms/internal/zzaed;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rb_amount"

    iget v2, v2, Lcom/google/android/gms/internal/zzaed;->zzWW:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    const-string v0, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTG:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->zzTH:Lcom/google/android/gms/internal/zzaaj;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaah;->zzMg:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v1

    :cond_11
    const-string v0, "ad_html"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->body:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/zzaah;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzahd;->zzhT()I

    move-result v2

    if-ne v0, v2, :cond_5

    const-string v0, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_13
    const-string v0, ""

    goto/16 :goto_2
.end method

.method private static zzm(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static zzt(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzu(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

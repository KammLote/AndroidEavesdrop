.class public Ltv/alphonso/alphonsoclient/RESTService;
.super Ljava/lang/Object;
.source "RESTService.java"


# static fields
.field public static final DELETE:I = 0x4

.field public static final EXTRA_HTTP_VERB:Ljava/lang/String; = "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

.field public static final EXTRA_PARAMS:Ljava/lang/String; = "com.AlphonsoClient.android.EXTRA_PARAMS"

.field public static final GET:I = 0x1

.field public static final POST:I = 0x2

.field public static final PUT:I = 0x3

.field public static final REST_RESULT:Ljava/lang/String; = "com.AlphonsoClient.android.REST_RESULT"

.field private static final TAG:Ljava/lang/String;

.field private static restService:Ltv/alphonso/alphonsoclient/RESTService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ltv/alphonso/alphonsoclient/RESTService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/RESTService;->restService:Ltv/alphonso/alphonsoclient/RESTService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Ljava/util/LinkedHashMap;)V
    .locals 6
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Landroid/net/Uri;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 227
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 233
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p2}, Ltv/alphonso/alphonsoclient/RESTService;->paramsToList(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 234
    .local v1, "param":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 241
    .end local v1    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v2    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v3, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI syntax was incorrect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 238
    new-instance v3, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Ltv/alphonso/alphonsoclient/RESTService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ltv/alphonso/alphonsoclient/RESTService;->restService:Ltv/alphonso/alphonsoclient/RESTService;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ltv/alphonso/alphonsoclient/RESTService;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/RESTService;-><init>()V

    sput-object v0, Ltv/alphonso/alphonsoclient/RESTService;->restService:Ltv/alphonso/alphonsoclient/RESTService;

    .line 57
    :cond_0
    sget-object v0, Ltv/alphonso/alphonsoclient/RESTService;->restService:Ltv/alphonso/alphonsoclient/RESTService;

    return-object v0
.end method

.method private static paramsToList(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v0, "formList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method private static verbToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "verb"    # I

    .prologue
    .line 247
    packed-switch p0, :pswitch_data_0

    .line 261
    const-string v0, ""

    :goto_0
    return-object v0

    .line 249
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    .line 255
    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    .line 258
    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Lorg/apache/http/client/HttpClient;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 27
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "action"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 64
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const-string v24, "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "com.AlphonsoClient.android.EXTRA_PARAMS"

    .line 66
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 68
    :cond_0
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    const-string v25, "params or HTTP verb not present in the Bundle."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v24, "com.AlphonsoClient.android.EXTRA_HTTP_VERB"

    const/16 v25, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 75
    .local v23, "verb":I
    const-string v24, "com.AlphonsoClient.android.EXTRA_PARAMS"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    .line 80
    .local v11, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    .line 84
    .local v15, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    packed-switch v23, :pswitch_data_0

    .line 159
    :goto_1
    if-eqz v15, :cond_1

    .line 161
    :try_start_0
    sget-boolean v24, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v24, :cond_3

    .line 162
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Executing request: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v23 .. v23}, Ltv/alphonso/alphonsoclient/RESTService;->verbToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "fingerprint"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 164
    sget-object v24, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual/range {v24 .. v24}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->updateStatsBeforeHttpSend()V

    .line 169
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 171
    .local v17, "response":Lorg/apache/http/HttpResponse;
    sget-boolean v24, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v24, :cond_5

    .line 172
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Executed request: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v23 .. v23}, Ltv/alphonso/alphonsoclient/RESTService;->verbToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "fingerprint"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 175
    sget-object v24, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual/range {v24 .. v24}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->updateStatsAfterHttpSend()V

    .line 178
    :cond_6
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 179
    .local v18, "responseEntity":Lorg/apache/http/HttpEntity;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    .line 180
    .local v19, "responseStatus":Lorg/apache/http/StatusLine;
    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    .line 182
    .local v22, "statusCode":I
    :goto_2
    if-eqz v18, :cond_f

    .line 183
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 184
    .local v6, "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 185
    .local v14, "reader":Ljava/io/BufferedReader;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 187
    .local v9, "line":Ljava/lang/String;
    :goto_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 188
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_3

    .line 200
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "statusCode":I
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Lorg/json/JSONException;
    :goto_4
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "JSON encoding failure. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v23 .. v23}, Ltv/alphonso/alphonsoclient/RESTService;->verbToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const-string v24, "status_code"

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 86
    .end local v3    # "e":Lorg/json/JSONException;
    :pswitch_0
    :try_start_1
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpGet;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 87
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .local v16, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Ltv/alphonso/alphonsoclient/RESTService;->attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Ljava/util/LinkedHashMap;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v15, v16

    .line 89
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 92
    :pswitch_1
    :try_start_3
    new-instance v16, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpDelete;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 93
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Ltv/alphonso/alphonsoclient/RESTService;->attachUriWithQuery(Lorg/apache/http/client/methods/HttpRequestBase;Landroid/net/Uri;Ljava/util/LinkedHashMap;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v15, v16

    .line 95
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 98
    :pswitch_2
    :try_start_5
    new-instance v16, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpPost;-><init>()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 99
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_6
    new-instance v24, Ljava/net/URI;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 101
    move-object/from16 v0, v16

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v12, v0

    .line 103
    .local v12, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "audio_clip_update"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 105
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v24, "samples"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    check-cast v24, [B

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 107
    .local v4, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v12, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .end local v4    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :goto_5
    move-object/from16 v15, v16

    .line 142
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 109
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "/audio/capture"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 111
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v24, "audio_file_contents"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    check-cast v24, [B

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 113
    .restart local v4    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v12, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_5

    .line 200
    .end local v4    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_4

    .line 117
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v12    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_8
    const/4 v10, 0x0

    .line 119
    .local v10, "locBundle":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "location"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 120
    const-string v24, "location"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "locBundle":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v10, Ljava/util/LinkedHashMap;

    .line 122
    .restart local v10    # "locBundle":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 123
    .local v7, "jobj":Lorg/json/JSONObject;
    if-eqz v10, :cond_a

    .line 124
    const-string v24, "location"

    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_a
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "jsonString":Ljava/lang/String;
    sget-boolean v24, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v24, :cond_b

    const-string v24, "fb_uid"

    .line 131
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 132
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FB Registration request message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_b
    new-instance v21, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 138
    .local v21, "se":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 139
    const-string v24, "Content-Type"

    const-string v25, "application/json"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_5

    .line 204
    .end local v7    # "jobj":Lorg/json/JSONObject;
    .end local v8    # "jsonString":Ljava/lang/String;
    .end local v10    # "locBundle":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v21    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v3

    move-object/from16 v15, v16

    .line 205
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .local v3, "e":Ljava/net/URISyntaxException;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_6
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "URI syntax was incorrect. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v23 .. v23}, Ltv/alphonso/alphonsoclient/RESTService;->verbToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const-string v24, "status_code"

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 145
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :pswitch_3
    :try_start_7
    new-instance v16, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/client/methods/HttpPut;-><init>()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 146
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :try_start_8
    new-instance v24, Ljava/net/URI;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 149
    move-object/from16 v0, v16

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    move-object v13, v0

    .line 151
    .local v13, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    if-eqz v11, :cond_c

    .line 152
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {v11}, Ltv/alphonso/alphonsoclient/RESTService;->paramsToList(Ljava/util/LinkedHashMap;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 153
    .local v5, "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v13, v5}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .end local v5    # "formEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_c
    move-object/from16 v15, v16

    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_1

    .line 180
    .end local v13    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "responseStatus":Lorg/apache/http/StatusLine;
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 190
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "sb":Ljava/lang/StringBuilder;
    .restart local v22    # "statusCode":I
    :cond_e
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 192
    const-string v24, "status_code"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v24, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v22    # "statusCode":I
    :catch_3
    move-exception v3

    goto/16 :goto_6

    .line 196
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .restart local v19    # "responseStatus":Lorg/apache/http/StatusLine;
    .restart local v22    # "statusCode":I
    :cond_f
    const-string v24, "status_code"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 208
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "responseEntity":Lorg/apache/http/HttpEntity;
    .end local v19    # "responseStatus":Lorg/apache/http/StatusLine;
    .end local v22    # "statusCode":I
    :catch_4
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    const-string v25, "A UrlEncodedFormEntity was created with an unsupported encoding."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const-string v24, "status_code"

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 212
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v3

    .line 213
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_8
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    const-string v25, "There was a problem when sending the request."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    const-string v24, "status_code"

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 216
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_6
    move-exception v3

    .line 217
    .local v3, "e":Ljava/io/IOException;
    :goto_9
    sget-object v24, Ltv/alphonso/alphonsoclient/RESTService;->TAG:Ljava/lang/String;

    const-string v25, "There was a problem when sending the request."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const-string v24, "status_code"

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 216
    .end local v3    # "e":Ljava/io/IOException;
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_7
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_9

    .line 212
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_8
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_8

    .line 208
    .end local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_9
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_7

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

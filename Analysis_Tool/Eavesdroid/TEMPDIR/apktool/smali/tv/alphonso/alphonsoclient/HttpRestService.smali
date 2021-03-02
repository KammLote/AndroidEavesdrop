.class public Ltv/alphonso/alphonsoclient/HttpRestService;
.super Ljava/lang/Object;
.source "HttpRestService.java"


# static fields
.field public static final DELETE:I = 0x4

.field public static final GET:I = 0x1

.field public static final PARAMS:Ljava/lang/String; = "tv.alphonso.alphonsoclient.HttpRestService.params"

.field public static final POST:I = 0x2

.field public static final PUT:I = 0x3

.field public static final REST_RESULT:Ljava/lang/String; = "com.AlphonsoClient.android.REST_RESULT"

.field public static final REST_RESULT_CODE:Ljava/lang/String; = "status_code"

.field private static final TAG:Ljava/lang/String;

.field public static final VERB:Ljava/lang/String; = "tv.alphonso.alphonsoclient.HttpRestService.verb"

.field private static httpRestService:Ltv/alphonso/alphonsoclient/HttpRestService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Ltv/alphonso/alphonsoclient/HttpRestService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/alphonsoclient/HttpRestService;->httpRestService:Ltv/alphonso/alphonsoclient/HttpRestService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltv/alphonso/alphonsoclient/HttpRestService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ltv/alphonso/alphonsoclient/HttpRestService;->httpRestService:Ltv/alphonso/alphonsoclient/HttpRestService;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ltv/alphonso/alphonsoclient/HttpRestService;

    invoke-direct {v0}, Ltv/alphonso/alphonsoclient/HttpRestService;-><init>()V

    sput-object v0, Ltv/alphonso/alphonsoclient/HttpRestService;->httpRestService:Ltv/alphonso/alphonsoclient/HttpRestService;

    .line 47
    :cond_0
    sget-object v0, Ltv/alphonso/alphonsoclient/HttpRestService;->httpRestService:Ltv/alphonso/alphonsoclient/HttpRestService;

    return-object v0
.end method

.method private readStream(Ljava/net/HttpURLConnection;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "con"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 231
    const/4 v4, 0x0

    .line 235
    .local v4, "reader":Ljava/io/BufferedReader;
    const/16 v7, 0x190

    if-lt p2, v7, :cond_1

    const/4 v2, 0x1

    .line 239
    .local v2, "isError":Z
    :goto_0
    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 241
    .local v1, "is":Ljava/io/InputStream;
    :goto_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 244
    .local v3, "line":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 251
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 253
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    if-eqz v4, :cond_0

    .line 261
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_4
    return-void

    .line 235
    .end local v2    # "isError":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    .restart local v2    # "isError":Z
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 249
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_5
    const-string v7, "com.AlphonsoClient.android.REST_RESULT"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    if-eqz v5, :cond_5

    .line 261
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v4, v5

    .line 266
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 263
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 266
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 263
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_4

    .line 261
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 266
    :cond_4
    :goto_6
    throw v7

    .line 263
    :catch_3
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 251
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static verbToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "verb"    # I

    .prologue
    .line 171
    packed-switch p0, :pswitch_data_0

    .line 186
    const-string v0, ""

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    .line 180
    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    .line 183
    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeStream(Ljava/net/HttpURLConnection;Ljava/util/LinkedHashMap;)V
    .locals 7
    .param p1, "con"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 195
    .local v3, "userLocationInfo":Ljava/lang/String;
    const-string v4, "user_location_info"

    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const-string v4, "user_location_info"

    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "userLocationInfo":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 198
    .restart local v3    # "userLocationInfo":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 199
    .local v0, "jobj":Lorg/json/JSONObject;
    const-string v4, "json_object"

    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    const-string v4, "json_object"

    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jobj":Lorg/json/JSONObject;
    check-cast v0, Lorg/json/JSONObject;

    .line 204
    .restart local v0    # "jobj":Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_1

    .line 206
    const-string v4, "user_location_info"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "jsonString":Ljava/lang/String;
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_2

    const-string v4, "long_poll"

    .line 213
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    sget-object v4, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewingInfo request message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_3

    const-string v4, "json_object"

    .line 216
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    sget-object v4, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserReg request message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    sget-boolean v4, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v4, :cond_4

    const-string v4, "payload"

    .line 219
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 220
    sget-object v4, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fingerprint message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    .local v2, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 225
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 226
    return-void

    .line 202
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "jobj":Lorg/json/JSONObject;
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v0    # "jobj":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method


# virtual methods
.method public handleRequest(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 54
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v7, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    .line 56
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "tv.alphonso.alphonsoclient.HttpRestService.params"

    .line 57
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 59
    :cond_0
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "params or HTTP verb not present in the Bundle."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v7, "tv.alphonso.alphonsoclient.HttpRestService.verb"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 66
    .local v6, "verb":I
    const-string v7, "tv.alphonso.alphonsoclient.HttpRestService.params"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 68
    .local v2, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 69
    .local v4, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 73
    .local v3, "responseCode":I
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 74
    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 76
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 78
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_2

    .line 79
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ltv/alphonso/alphonsoclient/HttpRestService;->verbToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 83
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v7}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->updateStatsBeforeHttpSend()V

    .line 86
    :cond_3
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v7, :cond_4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-le v7, v8, :cond_4

    .line 89
    const-string v7, "Connection"

    const-string v8, "close"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 123
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    if-eqz v7, :cond_5

    .line 126
    sget-object v7, Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;->audioCaptureContext:Ltv/alphonso/alphonsoclient/AudioCaptureCxt;

    invoke-virtual {v7}, Ltv/alphonso/alphonsoclient/AudioCaptureCxt;->updateStatsAfterHttpSend()V

    .line 129
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 131
    sget-boolean v7, Ltv/alphonso/alphonsoclient/AlphonsoClient;->debug:Z

    if-eqz v7, :cond_6

    .line 132
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http-resposne-code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_6
    const-string v7, "status_code"

    invoke-virtual {p3, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-direct {p0, v0, v3, p3}, Ltv/alphonso/alphonsoclient/HttpRestService;->readStream(Ljava/net/HttpURLConnection;ILandroid/os/Bundle;)V

    move-object v4, v5

    .line 166
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto/16 :goto_0

    .line 96
    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :pswitch_1
    const-string v7, "GET"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 138
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 140
    .end local v5    # "url":Ljava/net/URL;
    .local v1, "e":Ljava/net/SocketException;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_2
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "HTTP SocketException, no presponse from server."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v7, "status_code"

    const/16 v8, 0x3ea

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "e":Ljava/net/SocketException;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v5    # "url":Ljava/net/URL;
    :pswitch_2
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    const-string v7, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 112
    invoke-direct {p0, v0, v2}, Ltv/alphonso/alphonsoclient/HttpRestService;->writeStream(Ljava/net/HttpURLConnection;Ljava/util/LinkedHashMap;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 143
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 145
    .end local v5    # "url":Ljava/net/URL;
    .local v1, "e":Ljava/net/SocketTimeoutException;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_3
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "HTTP Timeout, no presponse from server."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v7, "status_code"

    const/16 v8, 0x3ea

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v5    # "url":Ljava/net/URL;
    :pswitch_3
    :try_start_3
    const-string v7, "PUT"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1

    .line 148
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v1

    move-object v4, v5

    .line 150
    .end local v5    # "url":Ljava/net/URL;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_4
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSON encoding failure. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ltv/alphonso/alphonsoclient/HttpRestService;->verbToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const-string v7, "status_code"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 153
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "A UrlEncodedFormEntity was created with an unsupported encoding."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    const-string v7, "status_code"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 157
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v1

    .line 159
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_6
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "There was a problem when sending the request."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const-string v7, "status_code"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 162
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_5
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    :goto_7
    sget-object v7, Ltv/alphonso/alphonsoclient/HttpRestService;->TAG:Ljava/lang/String;

    const-string v8, "There was a problem when sending the request."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    const-string v7, "status_code"

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto :goto_7

    .line 157
    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto :goto_6

    .line 153
    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto :goto_5

    .line 148
    :catch_9
    move-exception v1

    goto :goto_4

    .line 143
    :catch_a
    move-exception v1

    goto/16 :goto_3

    .line 138
    :catch_b
    move-exception v1

    goto/16 :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

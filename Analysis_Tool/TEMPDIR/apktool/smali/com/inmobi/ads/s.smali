.class Lcom/inmobi/ads/s;
.super Ljava/lang/Object;
.source "IasVastHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/ads/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bj;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "AVID"

    invoke-static {p0, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 32
    invoke-static {v0, p1}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Node;Lcom/inmobi/ads/bj;)V

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method private static a(Lorg/w3c/dom/Node;Lcom/inmobi/ads/bj;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_1
    :goto_1
    return-void

    .line 40
    :sswitch_0
    const-string v3, "AVID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "AdVerifications"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Verification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "JavaScriptResource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 42
    :pswitch_0
    const-string v0, "AdVerifications"

    invoke-static {p0, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-static {v0, p1}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Node;Lcom/inmobi/ads/bj;)V

    goto :goto_1

    .line 49
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 52
    :goto_2
    if-ge v0, v2, :cond_1

    .line 53
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 54
    invoke-static {v3, p1}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Node;Lcom/inmobi/ads/bj;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :pswitch_2
    const-string v0, "JavaScriptResource"

    invoke-static {p0, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0, p1}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Node;Lcom/inmobi/ads/bj;)V

    goto :goto_1

    .line 65
    :pswitch_3
    invoke-static {p0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    new-instance v2, Lcom/inmobi/ads/ah;

    sget-object v3, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 69
    invoke-virtual {p1, v2}, Lcom/inmobi/ads/bj;->a(Lcom/inmobi/ads/ah;)V

    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAS JavaScript URL found inside VAST : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 40
    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_1
        -0x4eaed5c5 -> :sswitch_2
        0x1ed810 -> :sswitch_0
        0x5d0eccdb -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

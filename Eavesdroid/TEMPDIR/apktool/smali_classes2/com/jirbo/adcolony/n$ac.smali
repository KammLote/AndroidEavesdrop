.class Lcom/jirbo/adcolony/n$ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ac"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:Lcom/jirbo/adcolony/n$g;

.field m:Lcom/jirbo/adcolony/n$g;

.field n:Lcom/jirbo/adcolony/n$g;

.field o:Lcom/jirbo/adcolony/n$k;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 2009
    iget-boolean v2, p0, Lcom/jirbo/adcolony/n$ac;->a:Z

    if-nez v2, :cond_1

    .line 2047
    :cond_0
    :goto_0
    return v0

    .line 2012
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v3, p0, Lcom/jirbo/adcolony/n$ac;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2015
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 2018
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 2020
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$k;->a()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 2022
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 2024
    :cond_6
    invoke-virtual {p0}, Lcom/jirbo/adcolony/n$ac;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(file not found)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 2027
    :cond_7
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2029
    sput v4, Lcom/jirbo/adcolony/a;->as:I

    .line 2030
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Video not ready due to VIEW_FILTER_ONLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2032
    :cond_8
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/jirbo/adcolony/q;->a()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2034
    sput v4, Lcom/jirbo/adcolony/a;->as:I

    .line 2035
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Video not ready due to VIEW_FILTER_WIFI"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 2037
    :cond_9
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/jirbo/adcolony/q;->b()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2039
    sput v4, Lcom/jirbo/adcolony/a;->as:I

    .line 2040
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Video not ready due to VIEW_FILTER_CELL"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 2042
    :cond_a
    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2044
    sput v4, Lcom/jirbo/adcolony/a;->as:I

    .line 2045
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Video not ready due to VIEW_FILTER_OFFLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2057
    if-nez p1, :cond_1

    .line 2087
    :cond_0
    :goto_0
    return v0

    .line 2059
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/n$ac;->a:Z

    .line 2060
    iget-boolean v2, p0, Lcom/jirbo/adcolony/n$ac;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 2062
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/n$ac;->b:I

    .line 2063
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/n$ac;->c:I

    .line 2064
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->d:Ljava/lang/String;

    .line 2065
    const-string v2, "last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->e:Ljava/lang/String;

    .line 2066
    const-string v2, "video_frame_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->f:Ljava/lang/String;

    .line 2067
    const-string v2, "audio_channels"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->g:Ljava/lang/String;

    .line 2068
    const-string v2, "audio_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->h:Ljava/lang/String;

    .line 2069
    const-string v2, "audio_sample_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->i:Ljava/lang/String;

    .line 2070
    const-string v2, "video_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->j:Ljava/lang/String;

    .line 2071
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/n$ac;->k:D

    .line 2074
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    .line 2075
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    const-string v3, "skip_video"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2078
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    .line 2079
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2081
    new-instance v2, Lcom/jirbo/adcolony/n$k;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$k;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    .line 2082
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    const-string v3, "haptic"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$k;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2084
    new-instance v2, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v2}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    .line 2085
    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    const-string v4, "image_overlay"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2087
    goto/16 :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2052
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2092
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$ac;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$ac;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    iget-object v0, p0, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 2094
    iget-object v0, p0, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 2095
    iget-object v0, p0, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$k;->b()V

    .line 2096
    iget-object v0, p0, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 2097
    return-void
.end method

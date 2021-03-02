.class Lcom/jirbo/adcolony/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static d:Ljava/lang/String;


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field O:Ljava/lang/String;

.field P:Z

.field Q:Z

.field a:Lcom/jirbo/adcolony/d;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Lcom/jirbo/adcolony/ADCData$g;

.field k:Lcom/jirbo/adcolony/ADCData$g;

.field l:Ljava/lang/String;

.field m:[Ljava/lang/String;

.field n:Lcom/jirbo/adcolony/n$ad;

.field o:Lcom/jirbo/adcolony/n$a;

.field p:D

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Z

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Lcom/jirbo/adcolony/ADCData$c;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "https://androidads23.adcolony.com/configure"

    sput-object v0, Lcom/jirbo/adcolony/c;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "2.3.6"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    .line 13
    const-string v0, "1.1.1"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->c:Ljava/lang/String;

    .line 17
    const/16 v0, 0x12c

    iput v0, p0, Lcom/jirbo/adcolony/c;->e:I

    .line 18
    iput v2, p0, Lcom/jirbo/adcolony/c;->f:I

    .line 20
    iput-boolean v2, p0, Lcom/jirbo/adcolony/c;->g:Z

    .line 21
    iput-boolean v2, p0, Lcom/jirbo/adcolony/c;->h:Z

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jirbo/adcolony/c;->p:D

    .line 38
    const-string v0, "android"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->q:Ljava/lang/String;

    .line 39
    const-string v0, "android_native"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->r:Ljava/lang/String;

    .line 42
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->s:Ljava/lang/String;

    .line 43
    const-string v0, "google"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->t:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lcom/jirbo/adcolony/c;->u:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    .line 75
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method a()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/AdColony;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/c;->f:I

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_0

    .line 116
    :try_start_0
    iget v0, p0, Lcom/jirbo/adcolony/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/c;->f:I

    .line 117
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :cond_0
    iput v2, p0, Lcom/jirbo/adcolony/c;->f:I

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->g:Lcom/jirbo/adcolony/ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ag;->a()V

    .line 128
    sget-object v0, Lcom/jirbo/adcolony/g;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->M:Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/jirbo/adcolony/g;->b:Z

    iput-boolean v0, p0, Lcom/jirbo/adcolony/c;->P:Z

    .line 130
    invoke-static {}, Lcom/jirbo/adcolony/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->v:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->M:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/c;->w:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/jirbo/adcolony/g;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->A:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 137
    invoke-static {}, Lcom/jirbo/adcolony/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->A:Ljava/lang/String;

    .line 140
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/g;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->B:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/jirbo/adcolony/g;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->C:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/jirbo/adcolony/g;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "en"

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->G:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/jirbo/adcolony/g;->n()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->H:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/jirbo/adcolony/g;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->I:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->L:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/jirbo/adcolony/g;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->E:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->F:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/g;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->J:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/g;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->K:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/jirbo/adcolony/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/jirbo/adcolony/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/jirbo/adcolony/c;->Q:Z

    .line 157
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->I:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/a;->ak:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/a;->al:Ljava/lang/String;

    .line 160
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_c

    const-string v0, "tablet"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->D:Ljava/lang/String;

    .line 163
    :goto_3
    new-instance v0, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->x:Lcom/jirbo/adcolony/ADCData$c;

    .line 164
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.market"

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->x:Lcom/jirbo/adcolony/ADCData$c;

    const-string v2, "google"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    .line 168
    :cond_3
    const-string v0, "com.amazon.venezia"

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->x:Lcom/jirbo/adcolony/ADCData$c;

    const-string v2, "amazon"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$c;

    .line 173
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/l;->f:Z

    if-eqz v0, :cond_5

    .line 175
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "sdk_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 176
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "ad_manifest_url:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    sget-object v2, Lcom/jirbo/adcolony/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 178
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "app_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 179
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "zone_ids:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->m:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 181
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "os_name:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 182
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "sdk_type:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 184
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "app_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 185
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "origin_store:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 186
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "skippable:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-boolean v2, p0, Lcom/jirbo/adcolony/c;->u:Z

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Z)Lcom/jirbo/adcolony/l;

    .line 188
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "android_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 189
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "android_id_sha1:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 190
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "available_stores:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->x:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 191
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "carrier_name:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 192
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "custom_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 193
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "device_id:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 194
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "device_manufacturer:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 195
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "device_model:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 196
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "device_type:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 197
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "imei:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 198
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "imei_sha1:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 199
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "language:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 200
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "open_udid:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 201
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v2, "os_version:"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 204
    :cond_5
    new-instance v0, Lcom/jirbo/adcolony/ADCData$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$g;-><init>()V

    .line 206
    const-string v2, "os_name"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "os_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->I:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "device_api"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->L:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "app_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "android_id_sha1"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "open_udid"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->H:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "device_type"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->D:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "ln"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "device_brand"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "device_model"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->C:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "screen_width"

    invoke-static {}, Lcom/jirbo/adcolony/g;->f()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 218
    const-string v2, "screen_height"

    invoke-static {}, Lcom/jirbo/adcolony/g;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 219
    const-string v2, "sdk_type"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "sdk_version"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "origin_store"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "available_stores"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->x:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->a(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$i;)V

    .line 223
    const-string v2, "imei_sha1"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->F:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "memory_class"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->J:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "memory_used_mb"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->K:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "advertiser_id"

    iget-object v3, p0, Lcom/jirbo/adcolony/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "limit_tracking"

    iget-boolean v3, p0, Lcom/jirbo/adcolony/c;->P:Z

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 228
    const-string v2, "immersion"

    iget-boolean v3, p0, Lcom/jirbo/adcolony/c;->Q:Z

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 230
    iput-object v0, p0, Lcom/jirbo/adcolony/c;->k:Lcom/jirbo/adcolony/ADCData$g;

    .line 234
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStorage;->a()V

    .line 235
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/o;->a()V

    .line 236
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/t;->a()V

    .line 237
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->a()V

    .line 238
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u;->a()V

    .line 240
    iput-boolean v1, p0, Lcom/jirbo/adcolony/c;->h:Z

    .line 243
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    new-instance v1, Lcom/jirbo/adcolony/n$ag;

    invoke-direct {v1}, Lcom/jirbo/adcolony/n$ag;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    .line 245
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->h()V

    .line 246
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/n$e;->i:Ljava/lang/String;

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 252
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    const-string v1, "all"

    iput-object v1, v0, Lcom/jirbo/adcolony/n$e;->j:Ljava/lang/String;

    .line 254
    :cond_9
    return-void

    .line 131
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 154
    goto/16 :goto_2

    .line 161
    :cond_c
    const-string v0, "phone"

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->D:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    const-string p1, ""

    .line 82
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 84
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 87
    aget-object v5, v4, v1

    .line 88
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 89
    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v4, p0, Lcom/jirbo/adcolony/c;->s:Ljava/lang/String;

    .line 82
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const-string v6, "store"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 94
    :cond_3
    iput-object v4, p0, Lcom/jirbo/adcolony/c;->t:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_4
    new-instance v0, Lcom/jirbo/adcolony/AdColonyException;

    const-string v1, "Origin store in client options must be set to either \'google\' or \'amazon\'"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5
    const-string v4, "skippable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/c;->u:Z

    goto :goto_1

    .line 105
    :cond_6
    aget-object v4, v4, v1

    const-string v5, "skippable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/c;->u:Z

    goto :goto_1

    .line 108
    :cond_7
    return-void
.end method

.method a(Ljava/lang/String;Lcom/jirbo/adcolony/n$a;)V
    .locals 6

    .prologue
    .line 268
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->n:Lcom/jirbo/adcolony/n$ad;

    .line 269
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->n:Lcom/jirbo/adcolony/n$ad;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/c;->n:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->k()Lcom/jirbo/adcolony/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    .line 272
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    .line 277
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    .line 279
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_enabled"

    iget-boolean v4, v1, Lcom/jirbo/adcolony/n$ac;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 280
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_filepath"

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$ac;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_width"

    iget v4, v1, Lcom/jirbo/adcolony/n$ac;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 282
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_height"

    iget v4, v1, Lcom/jirbo/adcolony/n$ac;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 283
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_duration"

    iget-wide v4, v1, Lcom/jirbo/adcolony/n$ac;->k:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 286
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 287
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 290
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_glow_button"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_icon"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "mute"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->j:Lcom/jirbo/adcolony/n$l;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "unmute"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->k:Lcom/jirbo/adcolony/n$l;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "poster_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$r;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "thumb_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->f:Lcom/jirbo/adcolony/n$s;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$s;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "advertiser_name"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "description"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "title"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "click_to_install"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$r;->c:Ljava/lang/String;

    const-string v5, "install"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 310
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "store_url"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->g:Lcom/jirbo/adcolony/n$r;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$r;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "native_engagement_enabled"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/n$q;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 313
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "native_engagement_type"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$q;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "native_engagement_command"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$q;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "native_engagement_label"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->A:Lcom/jirbo/adcolony/n$p;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$p;->h:Lcom/jirbo/adcolony/n$q;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_height"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 323
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "image_overlay_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/n$g;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 324
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "image_overlay_filepath"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "haptics_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/n$k;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 327
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "haptics_filepath"

    iget-object v1, v1, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "v4iap_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$aa;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 330
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "in_progress"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/jirbo/adcolony/c;->b()V

    goto/16 :goto_0

    .line 271
    :cond_2
    iput-object p2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    goto/16 :goto_1
.end method

.method b()V
    .locals 5

    .prologue
    .line 409
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$h;->h:Lcom/jirbo/adcolony/n$x;

    .line 410
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$h;->i:Lcom/jirbo/adcolony/n$j;

    .line 412
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    .line 413
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/n$h;->d:Z

    if-nez v3, :cond_0

    .line 415
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "end_card_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$h;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 458
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$j;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->ad:Z

    .line 421
    iget-object v0, v1, Lcom/jirbo/adcolony/n$j;->g:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/a;->ai:Ljava/lang/String;

    .line 422
    iget-object v0, v1, Lcom/jirbo/adcolony/n$j;->f:Lcom/jirbo/adcolony/n$o;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$o;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/a;->aj:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "close_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$j;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "close_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$j;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "reload_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$j;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "reload_image_down"

    iget-object v1, v1, Lcom/jirbo/adcolony/n$j;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    .line 453
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "end_card_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$h;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 454
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "load_timeout_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$h;->i:Lcom/jirbo/adcolony/n$j;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$j;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 455
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "load_timeout"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->y:Lcom/jirbo/adcolony/n$h;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$h;->i:Lcom/jirbo/adcolony/n$j;

    iget-wide v2, v2, Lcom/jirbo/adcolony/n$j;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 456
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "hardware_acceleration_disabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v2, v2, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v2, v2, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$e;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 433
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/a;->ad:Z

    .line 434
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "end_card_filepath"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "info_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "info_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "info_url"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->f:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "replay_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "replay_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->h:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "continue_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "continue_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "download_image_normal"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "download_image_down"

    iget-object v4, v0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v2, "download_url"

    iget-object v0, v0, Lcom/jirbo/adcolony/n$x;->g:Lcom/jirbo/adcolony/n$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;Lcom/jirbo/adcolony/n$a;)V

    .line 265
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->n:Lcom/jirbo/adcolony/n$ad;

    .line 340
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->n:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->k()Lcom/jirbo/adcolony/n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    .line 342
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->a:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    .line 345
    iget-object v1, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$a;->z:Lcom/jirbo/adcolony/n$ac;

    .line 347
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_enabled"

    iget-boolean v4, v1, Lcom/jirbo/adcolony/n$ac;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 348
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_filepath"

    invoke-virtual {v1}, Lcom/jirbo/adcolony/n$ac;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_width"

    iget v4, v1, Lcom/jirbo/adcolony/n$ac;->b:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 350
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_height"

    iget v4, v1, Lcom/jirbo/adcolony/n$ac;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 351
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "video_duration"

    iget-wide v4, v1, Lcom/jirbo/adcolony/n$ac;->k:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;D)V

    .line 353
    iget-wide v2, v1, Lcom/jirbo/adcolony/n$ac;->k:D

    sput-wide v2, Lcom/jirbo/adcolony/a;->q:D

    .line 356
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 357
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p0}, Lcom/jirbo/adcolony/c;->b()V

    .line 362
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->w:Lcom/jirbo/adcolony/n$c;

    .line 363
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "pre_popup_bg"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "v4vc_logo"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->l:Lcom/jirbo/adcolony/n$l;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "no_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->n:Lcom/jirbo/adcolony/n$g;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "no_button_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->n:Lcom/jirbo/adcolony/n$g;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "yes_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "yes_button_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$w;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$w;->d:Lcom/jirbo/adcolony/n$v;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$v;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "done_button_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$u;->d:Lcom/jirbo/adcolony/n$t;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v5, v5, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v4, "done_button_down"

    iget-object v2, v2, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$u;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$u;->d:Lcom/jirbo/adcolony/n$t;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->k:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->j:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->i:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_glow_button"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "browser_icon"

    iget-object v4, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$a;->v:Lcom/jirbo/adcolony/n$m;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$m;->h:Lcom/jirbo/adcolony/n$l;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$l;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->l:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "engagement_height"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->m:Lcom/jirbo/adcolony/n$g;

    iget v4, v4, Lcom/jirbo/adcolony/n$g;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;I)V

    .line 395
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "image_overlay_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/n$g;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 396
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "image_overlay_filepath"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->n:Lcom/jirbo/adcolony/n$g;

    iget-object v4, v4, Lcom/jirbo/adcolony/n$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "haptics_enabled"

    iget-object v4, v1, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/n$k;->a:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 399
    iget-object v2, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v3, "haptics_filepath"

    iget-object v1, v1, Lcom/jirbo/adcolony/n$ac;->o:Lcom/jirbo/adcolony/n$k;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "v4iap_enabled"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/n$aa;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 402
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/jirbo/adcolony/c;->j:Lcom/jirbo/adcolony/ADCData$g;

    const-string v1, "in_progress"

    iget-object v2, p0, Lcom/jirbo/adcolony/c;->o:Lcom/jirbo/adcolony/n$a;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$a;->B:Lcom/jirbo/adcolony/n$aa;

    iget-object v2, v2, Lcom/jirbo/adcolony/n$aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

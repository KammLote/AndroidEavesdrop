.class Lcom/jirbo/adcolony/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/a$b;,
        Lcom/jirbo/adcolony/a$a;
    }
.end annotation


# static fields
.field static A:Z = false

.field static B:Z = false

.field static C:Z = false

.field static D:Z = false

.field static E:Z = false

.field static F:Z = false

.field static G:I = 0x0

.field static H:D = 0.0

.field static I:Z = false

.field static J:Z = false

.field static K:Z = false

.field static L:Z = false

.field static M:Z = false

.field static N:Z = false

.field static O:Z = false

.field static P:Z = false

.field static Q:Lcom/jirbo/adcolony/AdColonyAdapter; = null

.field static R:Lcom/google/android/gms/ads/mediation/MediationBannerListener; = null

.field static S:Z = false

.field static T:Landroid/app/Activity; = null

.field static U:Z = false

.field static V:Z = false

.field static W:Z = false

.field static X:Lcom/jirbo/adcolony/h; = null

.field static Y:Lcom/jirbo/adcolony/AdColonyAd; = null

.field static Z:Lcom/jirbo/adcolony/ADCVideo; = null

.field public static final a:Z = false

.field static aa:Lcom/jirbo/adcolony/ADCVideo; = null

.field static ab:Lcom/jirbo/adcolony/a$a; = null

.field static ac:Lcom/jirbo/adcolony/a$b; = null

.field static ad:Z = false

.field static ae:Z = false

.field static af:Z = false

.field static ag:Z = false

.field static ah:I = 0x0

.field static ai:Ljava/lang/String; = null

.field static aj:Ljava/lang/String; = null

.field static ak:Ljava/lang/String; = null

.field static al:Ljava/lang/String; = null

.field static am:Ljava/lang/String; = null

.field static an:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static ao:Lcom/jirbo/adcolony/ADCData$c; = null

.field static ap:Z = false

.field static aq:Z = false

.field static ar:J = 0x0L

.field static as:I = 0x0

.field static at:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static au:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyV4VCListener;",
            ">;"
        }
    .end annotation
.end field

.field static av:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field static aw:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field static ax:Ljava/util/HashMap; = null

.field public static final b:Z = false

.field public static final c:Z = false

.field public static final d:Z = false

.field public static e:Ljava/lang/String; = null

.field public static final f:Ljava/lang/String;

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field static final k:Ljava/lang/String; = "AdColony"

.field static l:Lcom/jirbo/adcolony/d;

.field static m:Z

.field static n:I

.field static o:Z

.field static p:Z

.field static q:D

.field static r:Z

.field static s:Z

.field static t:J

.field static u:J

.field static v:Lcom/jirbo/adcolony/AdColonyAd;

.field static w:Z

.field static x:Z

.field static y:Z

.field static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    sput-object v0, Lcom/jirbo/adcolony/a;->e:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/jirbo/adcolony/a;->f:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/jirbo/adcolony/d;

    invoke-direct {v0}, Lcom/jirbo/adcolony/d;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/jirbo/adcolony/a;->n:I

    .line 87
    sput-boolean v2, Lcom/jirbo/adcolony/a;->D:Z

    .line 88
    sput-boolean v2, Lcom/jirbo/adcolony/a;->E:Z

    .line 89
    sput-boolean v3, Lcom/jirbo/adcolony/a;->F:Z

    .line 90
    sput v2, Lcom/jirbo/adcolony/a;->G:I

    .line 91
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/jirbo/adcolony/a;->H:D

    .line 92
    sput-boolean v2, Lcom/jirbo/adcolony/a;->I:Z

    .line 93
    sput-boolean v2, Lcom/jirbo/adcolony/a;->J:Z

    .line 94
    sput-boolean v2, Lcom/jirbo/adcolony/a;->K:Z

    .line 95
    sput-boolean v2, Lcom/jirbo/adcolony/a;->L:Z

    .line 96
    sput-boolean v3, Lcom/jirbo/adcolony/a;->M:Z

    .line 99
    sput-boolean v2, Lcom/jirbo/adcolony/a;->P:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->an:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->ao:Lcom/jirbo/adcolony/ADCData$c;

    .line 133
    sput v2, Lcom/jirbo/adcolony/a;->as:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->at:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->au:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->av:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    return-void
.end method

.method static a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 229
    sput p0, Lcom/jirbo/adcolony/a;->n:I

    .line 231
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    if-gtz p0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/jirbo/adcolony/l;->f:Z

    .line 232
    sget-object v3, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    if-gt p0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/jirbo/adcolony/l;->f:Z

    .line 233
    sget-object v3, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const/4 v0, 0x2

    if-gt p0, v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/jirbo/adcolony/l;->f:Z

    .line 234
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const/4 v3, 0x3

    if-gt p0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v0, Lcom/jirbo/adcolony/l;->f:Z

    .line 235
    if-gtz p0, :cond_1

    const-string v0, "DEVELOPER LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 236
    :cond_1
    if-gt p0, v1, :cond_2

    const-string v0, "DEBUG LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->c(Ljava/lang/String;)V

    .line 237
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 231
    goto :goto_0

    :cond_4
    move v0, v2

    .line 232
    goto :goto_1

    :cond_5
    move v0, v2

    .line 233
    goto :goto_2
.end method

.method static a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 246
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    if-gt v0, p0, :cond_0

    .line 248
    packed-switch p0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 252
    :pswitch_0
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :pswitch_1
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :pswitch_2
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sput-object p0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    .line 147
    new-instance v0, Lcom/jirbo/adcolony/a$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$a;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->ab:Lcom/jirbo/adcolony/a$a;

    .line 148
    new-instance v0, Lcom/jirbo/adcolony/a$b;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$b;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->ac:Lcom/jirbo/adcolony/a$b;

    .line 151
    sget-boolean v0, Lcom/jirbo/adcolony/a;->s:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/adcolony/p$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/p$a;-><init>()V

    goto :goto_0
.end method

.method static a(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0

    .prologue
    .line 330
    sput-object p0, Lcom/jirbo/adcolony/a;->v:Lcom/jirbo/adcolony/AdColonyAd;

    .line 331
    return-void
.end method

.method static a(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method static a(Lcom/jirbo/adcolony/j;)V
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/j;)V

    .line 438
    return-void
.end method

.method static a(Ljava/lang/RuntimeException;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->U:Z

    .line 217
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->e(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 219
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->U:Z

    .line 211
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->e(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0, p1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "AdColony methods used before initialization, Activity reference is null. Disabling AdColony until next launch."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 182
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 183
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Landroid/app/Activity;

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    sput-boolean v1, Lcom/jirbo/adcolony/a;->x:Z

    .line 158
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Landroid/app/Activity;)V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->X:Lcom/jirbo/adcolony/h;

    .line 160
    invoke-static {}, Lcom/jirbo/adcolony/g;->i()Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    .line 162
    sget-boolean v0, Lcom/jirbo/adcolony/a;->U:Z

    if-eqz v0, :cond_0

    .line 165
    sput-boolean v1, Lcom/jirbo/adcolony/a;->U:Z

    .line 166
    sput-boolean v1, Lcom/jirbo/adcolony/a;->w:Z

    .line 167
    new-instance v0, Lcom/jirbo/adcolony/d;

    invoke-direct {v0}, Lcom/jirbo/adcolony/d;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    .line 169
    :cond_0
    return-void
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 239
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/jirbo/adcolony/a;->U:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->w:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/jirbo/adcolony/a;->w:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->U:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/a;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e()V
    .locals 0

    .prologue
    .line 223
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    .line 224
    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    :cond_0
    return-void
.end method

.method static f()Z
    .locals 1

    .prologue
    .line 241
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static g(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 242
    sget v1, Lcom/jirbo/adcolony/a;->n:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static h()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 294
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    return-void

    .line 295
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->av:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/jirbo/adcolony/a;->ax:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/jirbo/adcolony/a;->ax:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 299
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/jirbo/adcolony/d;->b(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    .line 307
    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 309
    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v7, 0x12c

    invoke-direct {v2, v5, v1, v7, v8}, Lcom/jirbo/adcolony/AdColonyNativeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 310
    invoke-virtual {v2, v8}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->b(Z)Z

    move-result v2

    move v5, v2

    .line 314
    :goto_1
    if-eq v3, v5, :cond_2

    .line 317
    sget-object v1, Lcom/jirbo/adcolony/a;->ax:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 320
    :goto_2
    sget-object v1, Lcom/jirbo/adcolony/a;->av:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 322
    sget-object v1, Lcom/jirbo/adcolony/a;->av:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;->onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V

    .line 320
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 304
    :cond_3
    sget-object v2, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v4}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    move v2, v1

    goto :goto_0

    .line 312
    :cond_4
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_1
.end method

.method static i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

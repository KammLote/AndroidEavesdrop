.class public final Lcom/inmobi/rendering/a/a;
.super Ljava/lang/Object;
.source "Click.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field a:I

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:J

.field f:I

.field g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZIJJ)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/inmobi/rendering/a/a;->a:I

    .line 41
    iput-object p2, p0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    .line 43
    iput-wide p7, p0, Lcom/inmobi/rendering/a/a;->d:J

    .line 44
    iput-wide p9, p0, Lcom/inmobi/rendering/a/a;->e:J

    .line 45
    iput p6, p0, Lcom/inmobi/rendering/a/a;->f:I

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-boolean p4, p0, Lcom/inmobi/rendering/a/a;->i:Z

    .line 48
    iput-boolean p5, p0, Lcom/inmobi/rendering/a/a;->h:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZZI)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v2, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 30
    invoke-direct/range {v1 .. v11}, Lcom/inmobi/rendering/a/a;-><init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 12

    .prologue
    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v2, v0, v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    .line 26
    invoke-direct/range {v1 .. v11}, Lcom/inmobi/rendering/a/a;-><init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 5

    .prologue
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/rendering/a/a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

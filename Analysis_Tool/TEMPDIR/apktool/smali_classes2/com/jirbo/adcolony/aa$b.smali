.class Lcom/jirbo/adcolony/aa$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:D


# direct methods
.method constructor <init>(D)V
    .locals 3

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/aa$b;->a:D

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/aa$b;->a(D)V

    .line 213
    return-void
.end method


# virtual methods
.method a(D)V
    .locals 5

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jirbo/adcolony/aa$b;->a:D

    .line 218
    return-void
.end method

.method a()Z
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/jirbo/adcolony/aa$b;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()D
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 228
    iget-wide v4, p0, Lcom/jirbo/adcolony/aa$b;->a:D

    sub-double v2, v4, v2

    .line 229
    cmpg-double v4, v2, v0

    if-gtz v4, :cond_0

    .line 230
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/jirbo/adcolony/aa$b;->b()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/aa;->a(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

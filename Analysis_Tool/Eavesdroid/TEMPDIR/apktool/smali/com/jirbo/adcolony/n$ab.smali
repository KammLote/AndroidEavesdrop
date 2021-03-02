.class Lcom/jirbo/adcolony/n$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ab"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1371
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1377
    :goto_0
    return v0

    .line 1373
    :cond_0
    iput v0, p0, Lcom/jirbo/adcolony/n$ab;->a:I

    .line 1374
    iput v0, p0, Lcom/jirbo/adcolony/n$ab;->b:I

    .line 1375
    iput v0, p0, Lcom/jirbo/adcolony/n$ab;->c:I

    .line 1377
    const/4 v0, 0x1

    goto :goto_0
.end method

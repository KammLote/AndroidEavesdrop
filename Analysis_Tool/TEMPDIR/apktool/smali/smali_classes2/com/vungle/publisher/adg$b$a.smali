.class public abstract Lcom/vungle/publisher/adg$b$a;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adg$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/vungle/publisher/dx",
        "<*>;>",
        "Lcom/vungle/publisher/adb",
        "<",
        "Lcom/vungle/publisher/adg$b;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method

.method protected static a([Lcom/vungle/publisher/dx;)[Lcom/vungle/publisher/adg$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[",
            "Lcom/vungle/publisher/adg$b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    .line 77
    if-nez p0, :cond_0

    move v2, v0

    .line 78
    :goto_0
    if-lez v2, :cond_2

    .line 79
    new-array v2, v2, [Lcom/vungle/publisher/adg$b;

    .line 81
    array-length v6, p0

    move v3, v0

    move v4, v0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, p0, v3

    .line 82
    add-int/lit8 v5, v4, 0x1

    if-eqz v7, :cond_3

    new-instance v0, Lcom/vungle/publisher/adg$b;

    invoke-direct {v0}, Lcom/vungle/publisher/adg$b;-><init>()V

    iget-object v8, v7, Lcom/vungle/publisher/dx;->b:Lcom/vungle/publisher/ko;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/vungle/publisher/adg$b;->a:Ljava/lang/String;

    iget-wide v8, v7, Lcom/vungle/publisher/dx;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lcom/vungle/publisher/adg$b;->b:Ljava/lang/Long;

    iget-object v7, v7, Lcom/vungle/publisher/dx;->d:Ljava/lang/String;

    iput-object v7, v0, Lcom/vungle/publisher/adg$b;->c:Ljava/lang/String;

    :goto_2
    aput-object v0, v2, v4

    .line 81
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v5

    goto :goto_1

    .line 77
    :cond_0
    array-length v2, p0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 85
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Lcom/vungle/publisher/adg$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/vungle/publisher/adg$b;

    invoke-direct {v0}, Lcom/vungle/publisher/adg$b;-><init>()V

    return-object v0
.end method

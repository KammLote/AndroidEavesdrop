.class public final Lcom/vungle/publisher/ik$a;
.super Lcom/vungle/publisher/dx$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dx$a",
        "<",
        "Lcom/vungle/publisher/ie;",
        "Lcom/vungle/publisher/ik;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ik;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/dx$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/vungle/publisher/dx$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final a(Landroid/database/Cursor;)Lcom/vungle/publisher/ko;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/vungle/publisher/it;

    const-string v1, "event"

    invoke-static {p1, v1}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/it;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dx$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 23
    new-array v0, p1, [Lcom/vungle/publisher/ik;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/vungle/publisher/dx$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/ik$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ik;

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/vungle/publisher/dx$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

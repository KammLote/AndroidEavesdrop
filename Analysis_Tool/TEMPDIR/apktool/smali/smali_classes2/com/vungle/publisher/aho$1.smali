.class final Lcom/vungle/publisher/aho$1;
.super Ljava/lang/ThreadLocal;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/vungle/publisher/aho$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aho;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aho;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vungle/publisher/aho$1;->a:Lcom/vungle/publisher/aho;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/vungle/publisher/aho$a;

    invoke-direct {v0}, Lcom/vungle/publisher/aho$a;-><init>()V

    return-object v0
.end method

.class public final Lcom/vungle/publisher/abz;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/abt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/abw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/xr;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/abz;->a:Lcom/vungle/publisher/abt$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/abt$a;->d()Lcom/vungle/publisher/abt;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/abz;->b:Lcom/vungle/publisher/abw;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method

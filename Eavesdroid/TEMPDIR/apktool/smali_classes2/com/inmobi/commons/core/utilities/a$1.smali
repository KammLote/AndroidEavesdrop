.class Lcom/inmobi/commons/core/utilities/a$1;
.super Ljava/lang/Object;
.source "ApplicationFocusChangeObserver.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/core/utilities/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/utilities/a;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/utilities/a;)V
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/inmobi/commons/core/utilities/a$1;->a:Lcom/inmobi/commons/core/utilities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/inmobi/commons/core/utilities/a$a;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->d()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/a$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    :cond_0
    return-void
.end method

.method b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->c:Ljava/lang/ref/WeakReference;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/a$1;->b:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    if-eqz p3, :cond_1

    .line 114
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 114
    :sswitch_0
    const-string v3, "onActivityStarted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "onActivityResumed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "onActivityStopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :pswitch_0
    aget-object v0, p3, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/utilities/a$1;->b(Landroid/app/Activity;)V

    goto :goto_1

    .line 120
    :pswitch_1
    aget-object v0, p3, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/utilities/a$1;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 114
    :sswitch_data_0
    .sparse-switch
        0xba973e9 -> :sswitch_1
        0x59297693 -> :sswitch_0
        0x59edc7df -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

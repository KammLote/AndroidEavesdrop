.class Lcom/moat/analytics/mobile/inm/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/i;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    iget-object v0, v0, Lcom/moat/analytics/mobile/inm/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/i;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    iget-object v0, v0, Lcom/moat/analytics/mobile/inm/i;->d:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/i;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/inm/i;->c()V

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/j;->a:Lcom/moat/analytics/mobile/inm/i;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/i;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

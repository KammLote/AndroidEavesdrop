.class Lcom/moat/analytics/mobile/inm/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/s;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/s;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/t;->a:Lcom/moat/analytics/mobile/inm/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/t;->a:Lcom/moat/analytics/mobile/inm/s;

    iget-object v0, v0, Lcom/moat/analytics/mobile/inm/s;->a:Lcom/moat/analytics/mobile/inm/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/n;->g(Lcom/moat/analytics/mobile/inm/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.class Lcom/facebook/ads/internal/server/a$2;
.super Lcom/facebook/ads/internal/http/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/server/a;->b()Lcom/facebook/ads/internal/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/server/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/server/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/http/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Facebook Ads SDK req start delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/server/a;->d(Lcom/facebook/ads/internal/server/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dev/Debug;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->e(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/dto/d;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->b(Lcom/facebook/ads/internal/dto/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Facebook Ads SDK req complete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/server/a;->d(Lcom/facebook/ads/internal/server/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dev/Debug;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/http/a;)Lcom/facebook/ads/internal/http/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/server/a;->e(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/dto/d;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->b(Lcom/facebook/ads/internal/dto/d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/server/a;->d(Lcom/facebook/ads/internal/server/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Facebook Ads SDK req failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dev/Debug;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a$2;->a:Lcom/facebook/ads/internal/server/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/http/a;)Lcom/facebook/ads/internal/http/a;

    return-void
.end method

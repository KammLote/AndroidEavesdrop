.class Lcom/inmobi/rendering/a$4;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Lcom/inmobi/rendering/InMobiAdActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/inmobi/rendering/a$4;->l:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/rendering/a$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/inmobi/rendering/a$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/inmobi/rendering/a$4;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/inmobi/rendering/a$4;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/inmobi/rendering/a$4;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/inmobi/rendering/a$4;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/inmobi/rendering/a$4;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/inmobi/rendering/a$4;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/inmobi/rendering/a$4;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)V
    .locals 12

    .prologue
    .line 832
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$4;->l:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/rendering/a$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/rendering/a$4;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/inmobi/rendering/a$4;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/inmobi/rendering/a$4;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/inmobi/rendering/a$4;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/inmobi/rendering/a$4;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/inmobi/rendering/a$4;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/inmobi/rendering/a$4;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/inmobi/rendering/a$4;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    iget-object v1, p0, Lcom/inmobi/rendering/a$4;->l:Lcom/inmobi/rendering/a;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/a$4;->a:Ljava/lang/String;

    const-string v3, "Unexpected error"

    const-string v4, "createCalendarEvent"

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not create calendar event; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling createCalendarEvent() request from creative; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 843
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$4;->l:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$4;->a:Ljava/lang/String;

    const-string v2, "Permission denied by user."

    const-string v3, "createCalendarEvent"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

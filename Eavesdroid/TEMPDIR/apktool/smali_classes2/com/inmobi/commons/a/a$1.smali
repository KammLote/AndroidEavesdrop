.class final Lcom/inmobi/commons/a/a$1;
.super Ljava/lang/Object;
.source "SdkContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/a/a;->a(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/inmobi/commons/a/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/commons/a/a$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inmobi/commons/a/a$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/a/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inmobi/commons/a/a$1;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/inmobi/commons/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/io/File;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/a/a$1;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/io/File;)V

    goto :goto_0
.end method

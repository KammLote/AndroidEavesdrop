.class Lcom/mopub/network/ScribeRequestManager$2;
.super Ljava/lang/Object;
.source "ScribeRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/ScribeRequestManager;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/network/ScribeRequestManager;

.field final synthetic val$volleyError:Lcom/mopub/volley/VolleyError;


# direct methods
.method constructor <init>(Lcom/mopub/network/ScribeRequestManager;Lcom/mopub/volley/VolleyError;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/network/ScribeRequestManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/network/ScribeRequestManager$2;->this$0:Lcom/mopub/network/ScribeRequestManager;

    iput-object p2, p0, Lcom/mopub/network/ScribeRequestManager$2;->val$volleyError:Lcom/mopub/volley/VolleyError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/mopub/network/ScribeRequestManager$2;->this$0:Lcom/mopub/network/ScribeRequestManager;

    iget-object v1, v1, Lcom/mopub/network/ScribeRequestManager;->mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

    iget-object v2, p0, Lcom/mopub/network/ScribeRequestManager$2;->val$volleyError:Lcom/mopub/volley/VolleyError;

    invoke-virtual {v1, v2}, Lcom/mopub/network/BackoffPolicy;->backoff(Lcom/mopub/volley/VolleyError;)V

    .line 50
    iget-object v1, p0, Lcom/mopub/network/ScribeRequestManager$2;->this$0:Lcom/mopub/network/ScribeRequestManager;

    invoke-virtual {v1}, Lcom/mopub/network/ScribeRequestManager;->makeRequestInternal()V
    :try_end_0
    .catch Lcom/mopub/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/mopub/volley/VolleyError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to Scribe events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/network/ScribeRequestManager$2;->val$volleyError:Lcom/mopub/volley/VolleyError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/mopub/network/ScribeRequestManager$2;->this$0:Lcom/mopub/network/ScribeRequestManager;

    invoke-virtual {v1}, Lcom/mopub/network/ScribeRequestManager;->clearRequest()V

    goto :goto_0
.end method

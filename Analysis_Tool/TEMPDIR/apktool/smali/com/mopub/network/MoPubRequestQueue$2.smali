.class Lcom/mopub/network/MoPubRequestQueue$2;
.super Ljava/lang/Object;
.source "MoPubRequestQueue.java"

# interfaces
.implements Lcom/mopub/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/MoPubRequestQueue;->cancel(Lcom/mopub/volley/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/network/MoPubRequestQueue;

.field final synthetic val$request:Lcom/mopub/volley/Request;


# direct methods
.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/network/MoPubRequestQueue;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$2;->this$0:Lcom/mopub/network/MoPubRequestQueue;

    iput-object p2, p0, Lcom/mopub/network/MoPubRequestQueue$2;->val$request:Lcom/mopub/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/mopub/volley/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "_request":Lcom/mopub/volley/Request;, "Lcom/mopub/volley/Request<*>;"
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$2;->val$request:Lcom/mopub/volley/Request;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

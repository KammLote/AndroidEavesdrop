.class Lcom/dumadugames/honeyquest/Honey$3;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;

.field final synthetic val$moreSkus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$3;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iput-object p2, p0, Lcom/dumadugames/honeyquest/Honey$3;->val$moreSkus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/dumadu/iab/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$500()Lcom/dumadu/iab/util/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dumadugames/honeyquest/Honey$3;->val$moreSkus:Ljava/util/List;

    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$400()Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dumadu/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method

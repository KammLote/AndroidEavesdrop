.class Lcom/dumadu/iab/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadu/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadu/iab/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/dumadu/iab/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadu/iab/util/IabHelper;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/dumadu/iab/util/IabHelper$2;->this$0:Lcom/dumadu/iab/util/IabHelper;

    iput-boolean p2, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$listener:Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 593
    new-instance v3, Lcom/dumadu/iab/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/dumadu/iab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 594
    .local v3, "result":Lcom/dumadu/iab/util/IabResult;
    const/4 v1, 0x0

    .line 596
    .local v1, "inv":Lcom/dumadu/iab/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/dumadu/iab/util/IabHelper$2;->this$0:Lcom/dumadu/iab/util/IabHelper;

    iget-boolean v6, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/dumadu/iab/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/dumadu/iab/util/Inventory;
    :try_end_0
    .catch Lcom/dumadu/iab/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    :goto_0
    iget-object v5, p0, Lcom/dumadu/iab/util/IabHelper$2;->this$0:Lcom/dumadu/iab/util/IabHelper;

    invoke-virtual {v5}, Lcom/dumadu/iab/util/IabHelper;->flagEndAsync()V

    .line 604
    move-object v4, v3

    .line 605
    .local v4, "result_f":Lcom/dumadu/iab/util/IabResult;
    move-object v2, v1

    .line 606
    .local v2, "inv_f":Lcom/dumadu/iab/util/Inventory;
    iget-object v5, p0, Lcom/dumadu/iab/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/dumadu/iab/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/dumadu/iab/util/IabHelper$2$1;-><init>(Lcom/dumadu/iab/util/IabHelper$2;Lcom/dumadu/iab/util/IabResult;Lcom/dumadu/iab/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void

    .line 598
    .end local v2    # "inv_f":Lcom/dumadu/iab/util/Inventory;
    .end local v4    # "result_f":Lcom/dumadu/iab/util/IabResult;
    :catch_0
    move-exception v0

    .line 599
    .local v0, "ex":Lcom/dumadu/iab/util/IabException;
    invoke-virtual {v0}, Lcom/dumadu/iab/util/IabException;->getResult()Lcom/dumadu/iab/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method

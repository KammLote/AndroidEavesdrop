.class Lcom/augmentedreality/gp/baseball/Baseball$2;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/augmentedreality/gp/baseball/Baseball;

.field final synthetic val$moreSkus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$2;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iput-object p2, p0, Lcom/augmentedreality/gp/baseball/Baseball$2;->val$moreSkus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/dumadu/iab/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$400()Lcom/dumadu/iab/util/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/augmentedreality/gp/baseball/Baseball$2;->val$moreSkus:Ljava/util/List;

    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$300()Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dumadu/iab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method

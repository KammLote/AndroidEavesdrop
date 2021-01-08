.class final Lcom/augmentedreality/gp/baseball/Baseball$11;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/augmentedreality/gp/baseball/Baseball;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/dumadu/iab/util/IabResult;Lcom/dumadu/iab/util/Inventory;)V
    .locals 2
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;
    .param p2, "inv"    # Lcom/dumadu/iab/util/Inventory;

    .prologue
    .line 1162
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    const-string v1, "com.baseball.removeads"

    invoke-virtual {p2, v1}, Lcom/dumadu/iab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/dumadu/iab/util/Purchase;

    move-result-object v0

    .line 1166
    .local v0, "purchase":Lcom/dumadu/iab/util/Purchase;
    if-eqz v0, :cond_0

    .line 1167
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/augmentedreality/gp/baseball/Baseball;->access$102(Z)Z

    .line 1168
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1200()V

    goto :goto_0
.end method

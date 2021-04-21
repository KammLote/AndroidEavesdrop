.class final Lcom/dumadugames/honeyquest/Honey$12;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dumadugames/honeyquest/Honey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/dumadu/iab/util/IabResult;Lcom/dumadu/iab/util/Inventory;)V
    .locals 2
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;
    .param p2, "inv"    # Lcom/dumadu/iab/util/Inventory;

    .prologue
    .line 1131
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    const-string v1, "com.honeyquest.removeads"

    invoke-virtual {p2, v1}, Lcom/dumadu/iab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/dumadu/iab/util/Purchase;

    move-result-object v0

    .line 1135
    .local v0, "purchase":Lcom/dumadu/iab/util/Purchase;
    if-eqz v0, :cond_0

    .line 1136
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$102(Z)Z

    .line 1137
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$1300()V

    goto :goto_0
.end method

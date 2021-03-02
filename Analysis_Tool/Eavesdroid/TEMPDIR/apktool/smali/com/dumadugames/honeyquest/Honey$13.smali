.class final Lcom/dumadugames/honeyquest/Honey$13;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/dumadu/iab/util/IabResult;Lcom/dumadu/iab/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;
    .param p2, "info"    # Lcom/dumadu/iab/util/Purchase;

    .prologue
    .line 1147
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$1400()V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.removeads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$102(Z)Z

    .line 1153
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$1300()V

    goto :goto_0

    .line 1154
    :cond_2
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.coins5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1155
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.coins18000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1156
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.coins40000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1157
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.honey10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1158
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.honey25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1159
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.honeyquest.honey60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    :cond_3
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$500()Lcom/dumadu/iab/util/IabHelper;

    move-result-object v0

    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$1500()Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/dumadu/iab/util/IabHelper;->consumeAsync(Lcom/dumadu/iab/util/Purchase;Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method

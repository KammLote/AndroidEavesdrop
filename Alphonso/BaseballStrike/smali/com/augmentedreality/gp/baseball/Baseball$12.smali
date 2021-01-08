.class final Lcom/augmentedreality/gp/baseball/Baseball$12;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/dumadu/iab/util/IabResult;Lcom/dumadu/iab/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/dumadu/iab/util/IabResult;
    .param p2, "info"    # Lcom/dumadu/iab/util/Purchase;

    .prologue
    .line 1178
    invoke-virtual {p1}, Lcom/dumadu/iab/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1300()V

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.removeads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$102(Z)Z

    .line 1184
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1200()V

    goto :goto_0

    .line 1185
    :cond_2
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.coins1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1186
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.coins3450"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1187
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.coins6500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1188
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.coins15000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1189
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.tickets40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1190
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.tickets130"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1191
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.tickets250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1192
    invoke-virtual {p2}, Lcom/dumadu/iab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baseball.tickets550"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    :cond_3
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$400()Lcom/dumadu/iab/util/IabHelper;

    move-result-object v0

    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1400()Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/dumadu/iab/util/IabHelper;->consumeAsync(Lcom/dumadu/iab/util/Purchase;Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method

.class final Lcom/augmentedreality/gp/baseball/Baseball$13;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Lcom/dumadu/iab/util/IabHelper$OnConsumeFinishedListener;


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
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/dumadu/iab/util/Purchase;Lcom/dumadu/iab/util/IabResult;)V
    .locals 1
    .param p1, "purchase"    # Lcom/dumadu/iab/util/Purchase;
    .param p2, "result"    # Lcom/dumadu/iab/util/IabResult;

    .prologue
    .line 1203
    invoke-virtual {p2}, Lcom/dumadu/iab/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1200()V

    .line 1208
    :goto_0
    return-void

    .line 1206
    :cond_0
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1300()V

    goto :goto_0
.end method

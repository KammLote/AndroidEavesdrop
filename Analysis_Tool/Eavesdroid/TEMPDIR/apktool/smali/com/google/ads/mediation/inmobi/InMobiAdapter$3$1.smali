.class Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;->onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;->this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;->this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    iget-object v2, v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v2, v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;->this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    iget-object v3, v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v3, v3, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;->this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    iget-object v2, v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v2, v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :cond_0
    :goto_0
    return v1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "InMobiAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reward value should be of type integer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3$1;->this$1:Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;

    iget-object v0, v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$3;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v0, v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->key:Ljava/lang/String;

    return-object v0
.end method

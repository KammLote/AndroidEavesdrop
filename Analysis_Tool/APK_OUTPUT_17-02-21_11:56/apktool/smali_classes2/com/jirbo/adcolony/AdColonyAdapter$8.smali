.class Lcom/jirbo/adcolony/AdColonyAdapter$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyV4VCListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$8;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V
    .locals 5
    .param p1, "reward"    # Lcom/jirbo/adcolony/AdColonyV4VCReward;

    .prologue
    .line 522
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "onAdColonyV4VCReward"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 523
    sget-object v0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "onRewarded"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 526
    sget-object v0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->f:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    sget-object v1, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    new-instance v2, Lcom/jirbo/adcolony/AdColonyReward;

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyV4VCReward;->amount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/jirbo/adcolony/AdColonyReward;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    .line 528
    :cond_0
    return-void
.end method

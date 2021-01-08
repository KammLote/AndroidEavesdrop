.class public Lcom/jirbo/adcolony/AdColonyReward;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyReward;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/jirbo/adcolony/AdColonyReward;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyReward;->b:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyReward;->a:Ljava/lang/String;

    return-object v0
.end method

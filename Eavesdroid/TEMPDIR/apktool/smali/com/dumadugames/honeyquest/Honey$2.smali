.class Lcom/dumadugames/honeyquest/Honey$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "Honey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$2;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 174
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$2;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$300(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 175
    return-void
.end method

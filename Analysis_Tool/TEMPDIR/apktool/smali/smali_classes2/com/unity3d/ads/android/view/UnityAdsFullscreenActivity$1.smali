.class Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;
.super Ljava/lang/Object;
.source "UnityAdsFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->onCloseAdsView(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity$1;->this$0:Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/view/UnityAdsFullscreenActivity;->finish()V

    .line 358
    return-void
.end method

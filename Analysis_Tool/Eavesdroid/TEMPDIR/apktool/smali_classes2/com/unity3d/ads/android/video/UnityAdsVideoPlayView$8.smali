.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->enableSkippingFromSkipText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$8;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onVideoSkip()V

    .line 332
    return-void
.end method

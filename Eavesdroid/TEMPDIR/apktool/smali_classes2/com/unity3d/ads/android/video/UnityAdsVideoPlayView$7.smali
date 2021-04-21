.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->createView()V
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
    .line 306
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1200(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 311
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$7;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$1300(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 313
    :cond_0
    return-void
.end method

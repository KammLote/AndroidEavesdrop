.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->startVideo()V
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
    .line 202
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$100(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/UnityAdsVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoView;->start()V

    .line 206
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$3;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->setKeepScreenOn(Z)V

    .line 207
    return-void
.end method

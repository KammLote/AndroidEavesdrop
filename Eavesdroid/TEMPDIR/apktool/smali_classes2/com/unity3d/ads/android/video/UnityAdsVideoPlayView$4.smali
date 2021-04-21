.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$4;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 234
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$4;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$4;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$400(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/ads/android/video/IUnityAdsVideoPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 238
    return-void
.end method

.class Lcom/unity3d/ads/android/view/UnityAdsMainView$3;
.super Ljava/lang/Object;
.source "UnityAdsMainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/android/view/UnityAdsMainView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/view/UnityAdsMainView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/view/UnityAdsMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/android/view/UnityAdsMainView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView$3;->this$0:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMainView$3;->this$0:Lcom/unity3d/ads/android/view/UnityAdsMainView;

    invoke-static {v0}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->access$000(Lcom/unity3d/ads/android/view/UnityAdsMainView;)V

    .line 169
    return-void
.end method

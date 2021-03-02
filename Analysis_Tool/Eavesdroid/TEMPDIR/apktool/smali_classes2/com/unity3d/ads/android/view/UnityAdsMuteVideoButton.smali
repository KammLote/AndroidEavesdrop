.class public Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;
.super Landroid/widget/RelativeLayout;
.source "UnityAdsMuteVideoButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;
    }
.end annotation


# instance fields
.field private _layout:Landroid/widget/RelativeLayout;

.field private _state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    sget-object v0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->UnMuted:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    .line 29
    return-void
.end method


# virtual methods
.method public setLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    .line 33
    return-void
.end method

.method public setState(Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;)V
    .locals 6
    .param p1, "state"    # Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    iput-object p1, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    .line 39
    iget-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/unity3d/ads/android/R$id;->unityAdsMuteButtonSpeakerX:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "muted":Landroid/view/View;
    iget-object v2, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_layout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/unity3d/ads/android/R$id;->unityAdsMuteButtonSpeakerWaves:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "unmuted":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 43
    sget-object v2, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$1;->$SwitchMap$com$unity3d$ads$android$view$UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState:[I

    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v3}, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton;->_state:Lcom/unity3d/ads/android/view/UnityAdsMuteVideoButton$UnityAdsMuteVideoButtonState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 59
    .end local v0    # "muted":Landroid/view/View;
    .end local v1    # "unmuted":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0    # "muted":Landroid/view/View;
    .restart local v1    # "unmuted":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

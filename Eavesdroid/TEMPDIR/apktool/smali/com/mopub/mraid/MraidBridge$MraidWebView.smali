.class public Lcom/mopub/mraid/MraidBridge$MraidWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MraidWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    }
.end annotation


# instance fields
.field private mIsVisible:Z

.field private mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 263
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 264
    .local v0, "newIsVisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    if-eq v0, v1, :cond_0

    .line 265
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    .line 266
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    iget-boolean v2, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mIsVisible:Z

    invoke-interface {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;->onVisibilityChanged(Z)V

    .line 270
    :cond_0
    return-void

    .line 263
    .end local v0    # "newIsVisible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$MraidWebView;->mOnVisibilityChangedListener:Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;

    .line 258
    return-void
.end method

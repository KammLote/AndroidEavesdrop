.class public interface abstract Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onDrawnToSurface(Landroid/view/Surface;)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onVideoSizeChanged(IIIF)V
.end method

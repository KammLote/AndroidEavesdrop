.class Lcom/inmobi/ads/NativeStrandVideoView$4;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandVideoView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$4;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$4;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0, v2, v2}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V

    .line 321
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

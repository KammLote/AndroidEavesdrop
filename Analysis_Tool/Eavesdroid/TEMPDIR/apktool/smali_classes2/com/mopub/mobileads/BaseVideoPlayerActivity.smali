.class public Lcom/mopub/mobileads/BaseVideoPlayerActivity;
.super Landroid/app/Activity;
.source "BaseVideoPlayerActivity.java"


# static fields
.field public static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field public static final VIDEO_URL:Ljava/lang/String; = "video_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "intentVideoPlayerActivity":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v1, "video_view_class_name"

    const-string v2, "mraid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method

.method public static createIntentNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeVideoId"    # J
    .param p3, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intentVideoPlayerActivity":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const-string v1, "video_view_class_name"

    const-string v2, "native"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "native_video_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string v1, "native_vast_video_config"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;J)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
    .param p2, "broadcastIdentifier"    # J

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intentVideoPlayerActivity":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    const-string v1, "video_view_class_name"

    const-string v2, "vast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "vast_video_config"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method public static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, "intentVideoPlayerActivity":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeVideoId"    # J
    .param p3, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "intentVideoPlayerActivity":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
    .param p2, "broadcastIdentifier"    # J

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->createIntentVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;J)Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, "intentVideoPlayerActivity":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 87
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 90
    :cond_0
    return-void
.end method

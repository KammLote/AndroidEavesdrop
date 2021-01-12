.class public abstract Lcom/jirbo/adcolony/ADCVideo;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCVideo$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:Z

.field static e:Z

.field static f:Z

.field static g:Z

.field static h:Z

.field static i:Z


# instance fields
.field A:I

.field B:D

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Z

.field F:Z

.field G:Z

.field H:Lcom/jirbo/adcolony/e;

.field I:Lcom/jirbo/adcolony/ad;

.field J:Lcom/jirbo/adcolony/AdColonyAd;

.field K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

.field L:Ljava/lang/String;

.field M:Z

.field N:Z

.field O:Ljava/lang/String;

.field P:Landroid/widget/VideoView;

.field Q:Landroid/widget/FrameLayout;

.field R:Landroid/widget/FrameLayout;

.field S:Landroid/widget/FrameLayout;

.field T:Landroid/graphics/Rect;

.field U:Lcom/jirbo/adcolony/ADCImage;

.field V:Lcom/jirbo/adcolony/ADCVideo$a;

.field W:Ljava/io/FileInputStream;

.field X:Landroid/telephony/PhoneStateListener;

.field Y:Z

.field Z:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:D

.field r:D

.field s:J

.field t:J

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Z

    .line 91
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Z

    .line 102
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Z

    .line 103
    const-string v0, "Your purchase will begin shortly!"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->T:Landroid/graphics/Rect;

    .line 124
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->Y:Z

    .line 125
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->Z:Z

    .line 846
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 129
    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 130
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 131
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 132
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 133
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 804
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Ljava/lang/String;

    .line 805
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 806
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    .line 808
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 810
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 813
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 814
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 816
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 818
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 820
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 822
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$3;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 832
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$4;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$4;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 840
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 841
    return-void
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 474
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 475
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 477
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 478
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 480
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->A:I

    .line 482
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->A:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 485
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 487
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 488
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    .line 490
    sget-boolean v3, Lcom/jirbo/adcolony/a;->m:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    if-ge v3, v4, :cond_0

    .line 492
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 493
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 494
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    .line 495
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    .line 498
    :cond_0
    sget-boolean v1, Lcom/jirbo/adcolony/a;->L:Z

    if-eqz v1, :cond_1

    .line 500
    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    .line 501
    const/4 v0, 0x1

    .line 503
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    sput-boolean v2, Lcom/jirbo/adcolony/a;->ap:Z

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/a;->Y:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    .line 146
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 332
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "haptics_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    .line 153
    const-string v0, "haptics_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Ljava/lang/String;

    .line 154
    const-string v0, "in_progress"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-nez v0, :cond_4

    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Ljava/lang/String;

    .line 158
    const-string v0, "video_duration"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    iput-wide v6, p0, Lcom/jirbo/adcolony/ADCVideo;->B:D

    .line 206
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_1

    .line 210
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;->GetNewSDKInstance(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/HapticContentSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->openHaptics(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    .line 223
    :cond_1
    const-string v0, "video_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/jirbo/adcolony/a;->af:Z

    .line 224
    const-string v0, "end_card_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/jirbo/adcolony/a;->ae:Z

    .line 225
    const-string v0, "load_timeout_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->ag:Z

    .line 226
    const-string v0, "load_timeout"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/a;->ah:I

    move v3, v2

    .line 228
    :goto_5
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 230
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 232
    sget-object v0, Lcom/jirbo/adcolony/a;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 233
    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ag:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->U:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_2
    iget-object v5, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->f:Ljava/lang/String;

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 223
    goto :goto_3

    :cond_6
    move v0, v2

    .line 224
    goto :goto_4

    .line 238
    :cond_7
    const-string v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v3, Lcom/jirbo/adcolony/AdColonyIAPEngagement;->AUTOMATIC:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->A:Lcom/jirbo/adcolony/AdColonyIAPEngagement;

    .line 241
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->v:Z

    .line 242
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    const-string v3, "product_id"

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/jirbo/adcolony/AdColonyAd;->n:Ljava/lang/String;

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->u:Z

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 248
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->requestWindowFeature(I)Z

    .line 251
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v5}, Landroid/view/Window;->setFlags(II)V

    .line 254
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-nez v0, :cond_a

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_9

    .line 260
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    .line 315
    :goto_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setVolumeControlStream(I)V

    .line 318
    new-instance v0, Lcom/jirbo/adcolony/e;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    .line 319
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    .line 321
    new-instance v0, Lcom/jirbo/adcolony/ad;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    .line 322
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    .line 323
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCVideo$a;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Lcom/jirbo/adcolony/ADCVideo$a;

    .line 324
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    const-string v1, "browser_icon"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Lcom/jirbo/adcolony/ADCImage;

    .line 327
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->A:Z

    .line 330
    sput-object p0, Lcom/jirbo/adcolony/a;->Z:Lcom/jirbo/adcolony/ADCVideo;

    .line 331
    sput-object p0, Lcom/jirbo/adcolony/a;->aa:Lcom/jirbo/adcolony/ADCVideo;

    goto/16 :goto_0

    .line 265
    :cond_9
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 272
    :cond_a
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 273
    if-eqz v3, :cond_b

    if-eq v3, v4, :cond_b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_c

    :cond_b
    move v0, v4

    :goto_7
    sput v0, Lcom/jirbo/adcolony/a;->G:I

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 282
    sget v0, Lcom/jirbo/adcolony/a;->G:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 273
    :cond_c
    const/4 v0, 0x7

    goto :goto_7

    .line 287
    :cond_d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 289
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getRequestedOrientation()I

    .line 290
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 291
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 292
    packed-switch v0, :pswitch_data_0

    .line 304
    const/16 v1, 0x8

    .line 309
    :goto_8
    :pswitch_0
    sput v1, Lcom/jirbo/adcolony/a;->G:I

    .line 310
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto/16 :goto_6

    :pswitch_1
    move v1, v2

    .line 299
    goto :goto_8

    .line 301
    :pswitch_2
    const/16 v1, 0x9

    .line 302
    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_8

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 441
    sget-boolean v0, Lcom/jirbo/adcolony/a;->ap:Z

    if-nez v0, :cond_0

    .line 450
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/v;->H:Z

    .line 451
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 458
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->aa:Z

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I

    .line 461
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->x:Z

    .line 462
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyAd;->a()V

    .line 464
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 793
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 734
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    invoke-virtual {v0, p1, p2}, Lcom/jirbo/adcolony/v;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 783
    :goto_0
    return v0

    .line 738
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 740
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_3

    .line 742
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 745
    sput-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 746
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 747
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 774
    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget v0, v0, Lcom/jirbo/adcolony/ad;->t:I

    if-nez v0, :cond_1

    .line 751
    sput-boolean v1, Lcom/jirbo/adcolony/a;->ap:Z

    .line 752
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->g()V

    goto :goto_1

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    if-eqz v0, :cond_5

    .line 759
    sget-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    iget-object v0, v0, Lcom/jirbo/adcolony/v;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCImage;

    .line 761
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCImage;->a()V

    goto :goto_2

    .line 763
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/v;->I:Lcom/jirbo/adcolony/v;

    .line 764
    sput-boolean v3, Lcom/jirbo/adcolony/v;->H:Z

    .line 765
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 766
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Z

    goto :goto_1

    .line 768
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->O:Z

    if-eqz v0, :cond_1

    .line 770
    sput-boolean v1, Lcom/jirbo/adcolony/a;->ap:Z

    .line 771
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->h()V

    goto :goto_1

    .line 776
    :cond_6
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    move v0, v1

    .line 779
    goto :goto_0

    .line 783
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 669
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    .line 671
    sget-object v0, Lcom/jirbo/adcolony/a;->Q:Lcom/jirbo/adcolony/AdColonyAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->p:Z

    if-nez v0, :cond_0

    .line 677
    :cond_0
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_6

    .line 679
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->b:I

    .line 682
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 691
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_2

    .line 693
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 694
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 695
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->t:J

    .line 697
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->r:D

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:J

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->r:D

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Z:Z

    if-nez v0, :cond_7

    .line 702
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 704
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Z

    .line 705
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v7}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 706
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->pause()I

    .line 714
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_5

    .line 716
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ad;->A:Z

    .line 717
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->I:Z

    .line 718
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->H:Z

    .line 719
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/ad;->J:Z

    .line 720
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput v6, v0, Lcom/jirbo/adcolony/ad;->u:I

    .line 721
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput v6, v0, Lcom/jirbo/adcolony/ad;->t:I

    .line 722
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    .line 725
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 726
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 727
    return-void

    .line 687
    :cond_6
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->b:I

    goto/16 :goto_0

    .line 710
    :cond_7
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->a:I

    goto :goto_1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 340
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "duration, actual_duration = "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->B:D

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/l;->a(D)Lcom/jirbo/adcolony/l;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/l;->b(I)Lcom/jirbo/adcolony/l;

    .line 341
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->B:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->B:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 342
    :goto_0
    if-nez v0, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 352
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 341
    goto :goto_0

    .line 349
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 350
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 360
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 363
    invoke-static {}, Lcom/jirbo/adcolony/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideo;->p:Z

    .line 366
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 372
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->b()Z

    .line 374
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Z

    if-eqz v0, :cond_7

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Z

    .line 379
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_7

    .line 381
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    const/16 v1, 0x14

    iput v1, v0, Lcom/jirbo/adcolony/ad;->m:I

    .line 384
    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    const/16 v1, 0x19

    iput v1, v0, Lcom/jirbo/adcolony/ad;->m:I

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->y:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->z:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget v5, v5, Lcom/jirbo/adcolony/ad;->m:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    :cond_7
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->V:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 405
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 406
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 411
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->W:Ljava/io/FileInputStream;

    .line 412
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->W:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideo;->onWindowFocusChanged(Z)V

    .line 430
    :cond_9
    sget-boolean v0, Lcom/jirbo/adcolony/a;->af:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->a()V

    .line 433
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->d()V

    goto/16 :goto_0

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 401
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->s:J

    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to play video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video_filepath"

    invoke-static {v1}, Lcom/jirbo/adcolony/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->e(Ljava/lang/String;)V

    .line 419
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideo;->p:Z

    .line 420
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 421
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/ad;->c(Z)V

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "has_focus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-eqz p1, :cond_11

    .line 517
    sput-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    .line 518
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_d

    .line 520
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    .line 524
    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    if-eqz v0, :cond_2

    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 525
    :cond_2
    sput v4, Lcom/jirbo/adcolony/ADCVideo;->c:I

    .line 526
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->a:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->seekTo(I)V

    .line 529
    :cond_3
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_a

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 532
    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$1;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    .line 539
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 540
    :cond_4
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/jirbo/adcolony/v;->H:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Z:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_9

    .line 549
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/ad;->S:Z

    .line 550
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 554
    :cond_6
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Z

    .line 556
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Z

    if-eqz v0, :cond_c

    .line 559
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->play()I

    .line 563
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 565
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-object v1, v0, Lcom/jirbo/adcolony/ad;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->o:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 568
    :cond_8
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Z

    .line 575
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->requestFocus()Z

    .line 578
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 544
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    goto :goto_1

    .line 565
    :cond_b
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAd;->y:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->aq:Ljava/lang/String;

    goto :goto_2

    .line 570
    :cond_c
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_9

    .line 572
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->resume()I

    goto :goto_3

    .line 582
    :cond_d
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_10

    .line 584
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    if-eqz v0, :cond_e

    .line 586
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 587
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0

    .line 591
    :cond_e
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 592
    :cond_f
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 595
    :cond_10
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->invalidate()V

    goto/16 :goto_0

    .line 603
    :cond_11
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Z:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_13

    .line 605
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Lcom/immersion/hapticmediasdk/HapticContentSDK;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/HapticContentSDK;->pause()I

    .line 606
    :cond_12
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 607
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->pause()V

    .line 608
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Z

    .line 610
    :cond_13
    sput-boolean v5, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    goto/16 :goto_0
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 3
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ad;->Q:Z

    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/a;->aj:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    const-string v2, "<script type=\"text/javascript\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v0, "</script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 655
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "OutOfMemoryError - disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 656
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ad;->c(Z)V

    .line 660
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto :goto_0

    .line 636
    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    const-string v2, "<script (type=\"text/javascript\")?((\\s)*src=\"mraid.js\"){1}></script>"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->p:Ljava/lang/String;

    .line 637
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    iput-object p1, v0, Lcom/jirbo/adcolony/ad;->ah:Lcom/jirbo/adcolony/ADCDownload;

    .line 641
    :cond_4
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCVideo$2;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

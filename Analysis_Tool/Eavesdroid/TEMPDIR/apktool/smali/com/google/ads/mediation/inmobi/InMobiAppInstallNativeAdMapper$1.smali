.class Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;
.super Ljava/lang/Object;
.source "InMobiAppInstallNativeAdMapper.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/ImageDownloaderAsyncTask$DrawableDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->mapAppInstallAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

.field final synthetic val$finalIconScale:Ljava/lang/Double;

.field final synthetic val$finalIconUri:Landroid/net/Uri;

.field final synthetic val$finalImageScale:Ljava/lang/Double;

.field final synthetic val$finalImageUri:Landroid/net/Uri;

.field final synthetic val$finalInMobiadapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

.field final synthetic val$finalMediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;Landroid/net/Uri;Ljava/lang/Double;Landroid/net/Uri;Ljava/lang/Double;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalIconUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalIconScale:Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalImageUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalImageScale:Ljava/lang/Double;

    iput-object p6, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalMediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iput-object p7, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalInMobiadapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailure()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalMediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalInMobiadapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    .line 154
    return-void
.end method

.method public onDownloadSuccess(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "drawableMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const-string v3, "icon_key"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 137
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    new-instance v4, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalIconUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalIconScale:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-virtual {v3, v4}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 139
    const-string v3, "image_key"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 140
    .local v1, "imageDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "imagesList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    new-instance v3, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalImageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalImageScale:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v1, v4, v6, v7}, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    invoke-virtual {v3, v2}, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 143
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalMediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalInMobiadapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalMediationNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAppInstallNativeAdMapper$1;->val$finalInMobiadapter:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    goto :goto_0
.end method

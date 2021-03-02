.class public Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "InMobiNativeMappedImage.java"


# instance fields
.field private inMobiDrawable:Landroid/graphics/drawable/Drawable;

.field private inMobiScale:D

.field private inmobiImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "scale"    # D

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inmobiImageUri:Landroid/net/Uri;

    .line 24
    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    .line 25
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inmobiImageUri:Landroid/net/Uri;

    return-object v0
.end method

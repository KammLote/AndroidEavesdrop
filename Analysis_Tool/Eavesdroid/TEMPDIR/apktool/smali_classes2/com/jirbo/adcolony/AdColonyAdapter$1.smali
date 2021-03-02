.class Lcom/jirbo/adcolony/AdColonyAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$1;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$1;->b:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyAdapter;->a(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

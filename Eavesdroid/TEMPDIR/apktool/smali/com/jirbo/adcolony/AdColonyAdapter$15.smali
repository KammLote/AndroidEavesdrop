.class Lcom/jirbo/adcolony/AdColonyAdapter$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyAdapter;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$15;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$15;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$15;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 359
    return-void
.end method
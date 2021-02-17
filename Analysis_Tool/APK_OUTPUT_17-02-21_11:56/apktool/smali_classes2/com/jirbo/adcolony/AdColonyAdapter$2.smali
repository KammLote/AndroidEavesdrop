.class Lcom/jirbo/adcolony/AdColonyAdapter$2;
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
    .line 425
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$2;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$2;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyAdapter;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$2;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 430
    return-void
.end method

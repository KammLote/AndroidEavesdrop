.class Lcom/jirbo/adcolony/AdColonyAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
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
    .line 533
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$9;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$9;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$9;->a:Lcom/jirbo/adcolony/AdColonyAdapter;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAdapter;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyAdapter;->a(Ljava/lang/String;I)V

    .line 538
    return-void
.end method

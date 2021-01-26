.class public Ltv/alphonso/service/client/AlphonsoAdBanner;
.super Landroid/widget/RelativeLayout;
.source "AlphonsoAdBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInflatedView:Landroid/view/View;

.field private mResultData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Ltv/alphonso/service/client/AlphonsoAdBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/AlphonsoAdBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mInflatedView:Landroid/view/View;

    .line 17
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    .line 23
    sget-object v1, Ltv/alphonso/service/client/AlphonsoAdBanner;->TAG:Ljava/lang/String;

    const-string v2, "Instantiating AlphonsoAdBanner."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v1, "layout_inflater"

    .line 26
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Ltv/alphonso/service/R$layout;->alphonso_ad_banner:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mInflatedView:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public setResultData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 32
    sget-object v2, Ltv/alphonso/service/client/AlphonsoAdBanner;->TAG:Ljava/lang/String;

    const-string v3, "AlphonsoAdBanner: setting title."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    .line 36
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mInflatedView:Landroid/view/View;

    sget v3, Ltv/alphonso/service/R$id;->alphonso_ad_banner_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 38
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "brand"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "brand"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Default content entry for "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "title"

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Default content entry for "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 47
    const-string v2, "Default content entry for "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, "prefixLength":I
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    .end local v0    # "prefixLength":I
    :cond_2
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoAdBanner;->mResultData:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.class Lcom/mopub/mobileads/MoPubView$1;
.super Landroid/content/BroadcastReceiver;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubView;->registerScreenStateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubView;->access$000(Lcom/mopub/mobileads/MoPubView;)I

    move-result v1

    invoke-static {v1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubView;->access$100(Lcom/mopub/mobileads/MoPubView;I)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MoPubView;->access$100(Lcom/mopub/mobileads/MoPubView;I)V

    goto :goto_0
.end method

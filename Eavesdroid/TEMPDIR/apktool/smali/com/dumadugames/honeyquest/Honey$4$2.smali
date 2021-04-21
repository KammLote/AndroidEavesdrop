.class Lcom/dumadugames/honeyquest/Honey$4$2;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dumadugames/honeyquest/Honey$4;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dumadugames/honeyquest/Honey$4;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$4$2;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 229
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$2;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$300(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v1, p0, Lcom/dumadugames/honeyquest/Honey$4$2;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v1, v1, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v1}, Lcom/dumadugames/honeyquest/Honey;->access$300(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 234
    return-void
.end method

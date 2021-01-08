.class Lcom/augmentedreality/gp/baseball/Baseball$3$1;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/augmentedreality/gp/baseball/Baseball$3;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$1;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 237
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 239
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    return-void
.end method

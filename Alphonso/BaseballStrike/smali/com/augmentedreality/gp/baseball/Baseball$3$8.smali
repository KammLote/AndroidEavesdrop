.class Lcom/augmentedreality/gp/baseball/Baseball$3$8;
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
    .line 311
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$8;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$8;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    const-string v1, "Please Wait"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$8;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->setupAlphonsoService()V

    .line 317
    return-void
.end method

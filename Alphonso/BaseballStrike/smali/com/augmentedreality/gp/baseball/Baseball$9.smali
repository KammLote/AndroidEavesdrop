.class Lcom/augmentedreality/gp/baseball/Baseball$9;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->showAlphonsoCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/augmentedreality/gp/baseball/Baseball;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p1, "this$0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$9;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1048
    const-string v0, "callback"

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$9;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1051
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$9;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$700(Lcom/augmentedreality/gp/baseball/Baseball;)V

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$9;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    .line 1055
    return-void
.end method

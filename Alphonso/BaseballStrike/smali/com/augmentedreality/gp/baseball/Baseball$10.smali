.class Lcom/augmentedreality/gp/baseball/Baseball$10;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1058
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$10;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1061
    const-string v0, "callback"

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$10;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1064
    return-void
.end method

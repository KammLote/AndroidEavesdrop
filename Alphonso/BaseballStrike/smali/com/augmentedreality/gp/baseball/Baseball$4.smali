.class Lcom/augmentedreality/gp/baseball/Baseball$4;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->nativeExitPopup()V
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
    .line 521
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$4;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$002(Z)Z

    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 525
    invoke-static {}, Lcom/augmentedreality/gp/baseball/Baseball;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$4;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$200(Lcom/augmentedreality/gp/baseball/Baseball;)V

    .line 528
    :cond_0
    return-void
.end method

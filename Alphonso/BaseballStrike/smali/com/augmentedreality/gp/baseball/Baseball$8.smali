.class Lcom/augmentedreality/gp/baseball/Baseball$8;
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
    .line 1039
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$8;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$8;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->requestMicPermission()V

    .line 1043
    return-void
.end method

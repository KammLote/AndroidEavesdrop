.class Lcom/dumadugames/honeyquest/Honey$10;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->showAlphonsoCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$10;->this$0:Lcom/dumadugames/honeyquest/Honey;

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

    .line 1012
    const-string v0, "callback"

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$10;->this$0:Lcom/dumadugames/honeyquest/Honey;

    const-string v1, "AlphonsoService cannot be instantiated without microphone permissions."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$10;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$800(Lcom/dumadugames/honeyquest/Honey;)V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$10;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-virtual {v0, v2}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    .line 1019
    return-void
.end method

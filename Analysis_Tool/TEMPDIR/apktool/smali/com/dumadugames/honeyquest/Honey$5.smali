.class Lcom/dumadugames/honeyquest/Honey$5;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->nativeExitPopup()V
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
    .line 484
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$5;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$002(Z)Z

    .line 487
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 488
    invoke-static {}, Lcom/dumadugames/honeyquest/Honey;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$5;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$200(Lcom/dumadugames/honeyquest/Honey;)V

    .line 491
    :cond_0
    return-void
.end method

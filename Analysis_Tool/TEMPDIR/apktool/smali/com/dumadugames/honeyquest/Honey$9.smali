.class Lcom/dumadugames/honeyquest/Honey$9;
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
    .line 1000
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$9;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$9;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-virtual {v0}, Lcom/dumadugames/honeyquest/Honey;->requestMicPermission()V

    .line 1005
    return-void
.end method

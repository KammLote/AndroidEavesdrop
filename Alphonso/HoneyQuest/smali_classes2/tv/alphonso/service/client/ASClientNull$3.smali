.class Ltv/alphonso/service/client/ASClientNull$3;
.super Ljava/lang/Object;
.source "ASClientNull.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/client/ASClientNull;->onInit(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/client/ASClientNull;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/client/ASClientNull;

    .prologue
    .line 75
    iput-object p1, p0, Ltv/alphonso/service/client/ASClientNull$3;->this$0:Ltv/alphonso/service/client/ASClientNull;

    iput-object p2, p0, Ltv/alphonso/service/client/ASClientNull$3;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    iget-object v0, p0, Ltv/alphonso/service/client/ASClientNull$3;->this$0:Ltv/alphonso/service/client/ASClientNull;

    iget-object v1, p0, Ltv/alphonso/service/client/ASClientNull$3;->val$params:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ltv/alphonso/service/client/ASClientNull;->access$000(Ltv/alphonso/service/client/ASClientNull;Landroid/os/Bundle;Z)V

    .line 80
    return-void
.end method
.class final Lcom/vungle/publisher/oe$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/oe;->a(Landroid/content/Context;Lcom/vungle/publisher/a;Lcom/vungle/publisher/oe$a;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/oe$a;

.field final synthetic b:Lcom/vungle/publisher/oe;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/oe;Lcom/vungle/publisher/oe$a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vungle/publisher/oe$3;->b:Lcom/vungle/publisher/oe;

    iput-object p2, p0, Lcom/vungle/publisher/oe$3;->a:Lcom/vungle/publisher/oe$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 52
    const-string v0, "VungleAd"

    const-string v1, "cancel click"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/oe$3;->a:Lcom/vungle/publisher/oe$a;

    invoke-interface {v0}, Lcom/vungle/publisher/oe$a;->c()V

    .line 54
    return-void
.end method

.class Lcom/inmobi/rendering/RenderView$6$7;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/RenderView$6;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/rendering/RenderView$6;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$6$7;->c:Lcom/inmobi/rendering/RenderView$6;

    iput-object p2, p0, Lcom/inmobi/rendering/RenderView$6$7;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/inmobi/rendering/RenderView$6$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6$7;->a:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$6$7;->b:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 1651
    return-void
.end method

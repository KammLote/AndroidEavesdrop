.class Lcom/inmobi/rendering/RenderView$6$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/RenderView$6;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/RenderView$6;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView$6;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$6$4;->a:Lcom/inmobi/rendering/RenderView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1577
    const/4 v0, 0x1

    return v0
.end method

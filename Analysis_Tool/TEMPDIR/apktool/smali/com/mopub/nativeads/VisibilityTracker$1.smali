.class Lcom/mopub/nativeads/VisibilityTracker$1;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/VisibilityTracker;-><init>(Landroid/app/Activity;Ljava/util/Map;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/VisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/VisibilityTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/nativeads/VisibilityTracker;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mopub/nativeads/VisibilityTracker$1;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mopub/nativeads/VisibilityTracker$1;->this$0:Lcom/mopub/nativeads/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/VisibilityTracker;->scheduleVisibilityCheck()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
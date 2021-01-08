.class final Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "MediaRouteButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    .line 547
    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 577
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 587
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .prologue
    .line 581
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 582
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 551
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 552
    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 562
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 557
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 567
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;
    .param p2, "info"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    .line 572
    return-void
.end method

.class public final Lcom/vungle/publisher/gf;
.super Lcom/vungle/publisher/kr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gf$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/gf$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/kr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/vungle/publisher/gf;->d:Lcom/vungle/publisher/gf$a;

    return-object v0
.end method

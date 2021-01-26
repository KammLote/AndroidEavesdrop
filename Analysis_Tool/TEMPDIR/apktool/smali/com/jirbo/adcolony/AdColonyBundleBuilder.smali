.class public Lcom/jirbo/adcolony/AdColonyBundleBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "zone_id"

    sget-object v2, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "show_pre_popup"

    sget-boolean v2, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    const-string v1, "show_post_popup"

    sget-boolean v2, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    return-object v0
.end method

.method public static setShowPostPopup(Z)V
    .locals 0
    .param p0, "show_post_popup"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->c:Z

    .line 24
    return-void
.end method

.method public static setShowPrePopup(Z)V
    .locals 0
    .param p0, "show_pre_popup"    # Z

    .prologue
    .line 18
    sput-boolean p0, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->b:Z

    .line 19
    return-void
.end method

.method public static setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 13
    sput-object p0, Lcom/jirbo/adcolony/AdColonyBundleBuilder;->a:Ljava/lang/String;

    .line 14
    return-void
.end method

.class Lcom/jirbo/adcolony/ADCVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideo;->on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo$2;->a:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$2;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$2;->a:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->I:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->c()V

    .line 650
    :cond_0
    return-void
.end method

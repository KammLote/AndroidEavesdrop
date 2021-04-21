.class Lcom/dumadugames/honeyquest/Honey$4$3;
.super Ljava/lang/Object;
.source "Honey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dumadugames/honeyquest/Honey$4;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/dumadugames/honeyquest/Honey$4;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$4$3;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4$3;->this$1:Lcom/dumadugames/honeyquest/Honey$4;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$300(Lcom/dumadugames/honeyquest/Honey;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 243
    return-void
.end method

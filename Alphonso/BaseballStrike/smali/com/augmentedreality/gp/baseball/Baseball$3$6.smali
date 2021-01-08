.class Lcom/augmentedreality/gp/baseball/Baseball$3$6;
.super Ljava/lang/Object;
.source "Baseball.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/augmentedreality/gp/baseball/Baseball$3;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$6;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3$6;->this$1:Lcom/augmentedreality/gp/baseball/Baseball$3;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->requestLocationPermission()V

    .line 298
    return-void
.end method

.class Lcom/augmentedreality/gp/baseball/Baseball$3;
.super Landroid/os/Handler;
.source "Baseball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/augmentedreality/gp/baseball/Baseball;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball;)V
    .locals 0
    .param p1, "this$0"    # Lcom/augmentedreality/gp/baseball/Baseball;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$1;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$1;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$2;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$2;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$3;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$3;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$4;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$4;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 284
    :pswitch_4
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$5;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$5;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 293
    :pswitch_5
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$6;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$6;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 302
    :pswitch_6
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$7;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$7;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 311
    :pswitch_7
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$8;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$8;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 321
    :pswitch_8
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$9;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$9;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 330
    :pswitch_9
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$10;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$10;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 340
    :pswitch_a
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$11;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$11;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 358
    :pswitch_b
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$3;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    new-instance v1, Lcom/augmentedreality/gp/baseball/Baseball$3$12;

    invoke-direct {v1, p0}, Lcom/augmentedreality/gp/baseball/Baseball$3$12;-><init>(Lcom/augmentedreality/gp/baseball/Baseball$3;)V

    invoke-virtual {v0, v1}, Lcom/augmentedreality/gp/baseball/Baseball;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_b
    .end packed-switch
.end method

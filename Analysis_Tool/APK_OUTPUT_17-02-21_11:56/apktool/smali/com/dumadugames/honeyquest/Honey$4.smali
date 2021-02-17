.class Lcom/dumadugames/honeyquest/Honey$4;
.super Landroid/os/Handler;
.source "Honey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$1;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$1;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$2;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$2;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$3;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$3;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$4;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$4;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 263
    :pswitch_4
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$5;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$5;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 272
    :pswitch_5
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$6;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$6;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 281
    :pswitch_6
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$7;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$7;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 290
    :pswitch_7
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$8;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$8;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 299
    :pswitch_8
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$9;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$9;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :pswitch_9
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$10;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$10;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 318
    :pswitch_a
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$11;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$11;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 336
    :pswitch_b
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$4;->this$0:Lcom/dumadugames/honeyquest/Honey;

    new-instance v1, Lcom/dumadugames/honeyquest/Honey$4$12;

    invoke-direct {v1, p0}, Lcom/dumadugames/honeyquest/Honey$4$12;-><init>(Lcom/dumadugames/honeyquest/Honey$4;)V

    invoke-virtual {v0, v1}, Lcom/dumadugames/honeyquest/Honey;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 211
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

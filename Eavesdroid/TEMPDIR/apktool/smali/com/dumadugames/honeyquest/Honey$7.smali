.class Lcom/dumadugames/honeyquest/Honey$7;
.super Landroid/os/ResultReceiver;
.source "Honey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dumadugames/honeyquest/Honey;->getResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dumadugames/honeyquest/Honey;


# direct methods
.method constructor <init>(Lcom/dumadugames/honeyquest/Honey;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dumadugames/honeyquest/Honey;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 730
    if-nez p1, :cond_1

    .line 732
    invoke-static {v2}, Lcom/dumadugames/honeyquest/Honey;->access$1102(Z)Z

    .line 733
    const-string v0, "callback"

    const-string v1, "AlphonsoService initialization SUCCESS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-static {v0}, Lcom/dumadugames/honeyquest/Honey;->access$1200(Lcom/dumadugames/honeyquest/Honey;)V

    .line 738
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 740
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-virtual {v0, v3}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    .line 758
    :goto_0
    return-void

    .line 749
    :cond_1
    const-string v0, "callback"

    const-string v1, "AlphonsoService initialization failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    iget-object v0, v0, Lcom/dumadugames/honeyquest/Honey;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 751
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 752
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 753
    sget-object v0, Lcom/dumadugames/honeyquest/Honey;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 756
    :cond_2
    iget-object v0, p0, Lcom/dumadugames/honeyquest/Honey$7;->this$0:Lcom/dumadugames/honeyquest/Honey;

    invoke-virtual {v0, v2}, Lcom/dumadugames/honeyquest/Honey;->setOptoutOption(Z)V

    goto :goto_0
.end method

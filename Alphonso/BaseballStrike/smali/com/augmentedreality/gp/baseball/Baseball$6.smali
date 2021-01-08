.class Lcom/augmentedreality/gp/baseball/Baseball$6;
.super Landroid/os/ResultReceiver;
.source "Baseball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/augmentedreality/gp/baseball/Baseball;->getResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/augmentedreality/gp/baseball/Baseball;


# direct methods
.method constructor <init>(Lcom/augmentedreality/gp/baseball/Baseball;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/augmentedreality/gp/baseball/Baseball;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 780
    if-nez p1, :cond_1

    .line 782
    invoke-static {v3}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1002(Z)Z

    .line 783
    const-string v0, "callback"

    const-string v1, "AlphonsoService initialization SUCCESS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iput-boolean v2, v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsoFlag:Z

    .line 787
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-static {v0}, Lcom/augmentedreality/gp/baseball/Baseball;->access$1100(Lcom/augmentedreality/gp/baseball/Baseball;)V

    .line 789
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 791
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 792
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0, v2}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    .line 810
    :goto_0
    return-void

    .line 800
    :cond_1
    const-string v0, "callback"

    const-string v1, "AlphonsoService initialization failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iput-boolean v2, v0, Lcom/augmentedreality/gp/baseball/Baseball;->alphonsoFlag:Z

    .line 802
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    iget-object v0, v0, Lcom/augmentedreality/gp/baseball/Baseball;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 803
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 804
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optout_Click_temp"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 805
    sget-object v0, Lcom/augmentedreality/gp/baseball/Baseball;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/augmentedreality/gp/baseball/Baseball$6;->this$0:Lcom/augmentedreality/gp/baseball/Baseball;

    invoke-virtual {v0, v3}, Lcom/augmentedreality/gp/baseball/Baseball;->setOptoutOption(Z)V

    goto :goto_0
.end method

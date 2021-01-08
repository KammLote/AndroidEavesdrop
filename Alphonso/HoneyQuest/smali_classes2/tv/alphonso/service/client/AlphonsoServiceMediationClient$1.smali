.class Ltv/alphonso/service/client/AlphonsoServiceMediationClient$1;
.super Landroid/os/ResultReceiver;
.source "AlphonsoServiceMediationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->getResultReceiver()Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;


# direct methods
.method constructor <init>(Ltv/alphonso/service/client/AlphonsoServiceMediationClient;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/client/AlphonsoServiceMediationClient;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 97
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient$1;->this$0:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 107
    :try_start_0
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlphonsoService initialization SUCCESS."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    invoke-static {v1}, Ltv/alphonso/service/client/ASAPI;->start(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlphonsoService initialization failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

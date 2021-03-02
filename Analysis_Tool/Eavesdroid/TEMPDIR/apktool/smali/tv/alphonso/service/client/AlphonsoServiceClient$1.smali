.class Ltv/alphonso/service/client/AlphonsoServiceClient$1;
.super Ljava/lang/Object;
.source "AlphonsoServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/client/AlphonsoServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/client/AlphonsoServiceClient;


# direct methods
.method constructor <init>(Ltv/alphonso/service/client/AlphonsoServiceClient;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/client/AlphonsoServiceClient;

    .prologue
    .line 630
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceClient$1;->this$0:Ltv/alphonso/service/client/AlphonsoServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 634
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceClient$1;->this$0:Ltv/alphonso/service/client/AlphonsoServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mService:Landroid/os/Messenger;

    .line 638
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 640
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 644
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    if-eqz v0, :cond_0

    .line 645
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceClient;->mFSM:Ltv/alphonso/service/client/ASClientFSM;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltv/alphonso/service/client/ASClientFSM;->processEvent(ILandroid/os/Bundle;)V

    .line 646
    :cond_0
    return-void
.end method

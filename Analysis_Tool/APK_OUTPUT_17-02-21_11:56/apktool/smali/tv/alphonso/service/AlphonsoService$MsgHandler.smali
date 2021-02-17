.class public Ltv/alphonso/service/AlphonsoService$MsgHandler;
.super Landroid/os/Handler;
.source "AlphonsoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/AlphonsoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ltv/alphonso/service/AlphonsoService;


# direct methods
.method public constructor <init>(Ltv/alphonso/service/AlphonsoService;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    .line 355
    iput-object p1, p0, Ltv/alphonso/service/AlphonsoService$MsgHandler;->this$0:Ltv/alphonso/service/AlphonsoService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 360
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Ltv/alphonso/service/AlphonsoService$MsgHandler;->this$0:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mFSM:Ltv/alphonso/service/ASFSM;

    invoke-virtual {v0, p1}, Ltv/alphonso/service/ASFSM;->processEvent(Landroid/os/Message;)V

    .line 362
    :cond_0
    return-void
.end method

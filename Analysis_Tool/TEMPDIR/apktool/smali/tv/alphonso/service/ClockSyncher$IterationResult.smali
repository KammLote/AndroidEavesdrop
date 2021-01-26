.class Ltv/alphonso/service/ClockSyncher$IterationResult;
.super Ljava/lang/Object;
.source "ClockSyncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/ClockSyncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IterationResult"
.end annotation


# instance fields
.field public mClockSkew:J

.field public mRtt:J

.field final synthetic this$0:Ltv/alphonso/service/ClockSyncher;


# direct methods
.method constructor <init>(Ltv/alphonso/service/ClockSyncher;)V
    .locals 0
    .param p1, "this$0"    # Ltv/alphonso/service/ClockSyncher;

    .prologue
    .line 19
    iput-object p1, p0, Ltv/alphonso/service/ClockSyncher$IterationResult;->this$0:Ltv/alphonso/service/ClockSyncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Ltv/alphonso/service/ClockSyncher$Results;
.super Ljava/lang/Object;
.source "ClockSyncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/service/ClockSyncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Results"
.end annotation


# instance fields
.field private mClockSkew:J

.field private mCurrIteration:I

.field private mResults:[Ltv/alphonso/service/ClockSyncher$IterationResult;

.field private mSmallestRTT:J

.field final synthetic this$0:Ltv/alphonso/service/ClockSyncher;


# direct methods
.method constructor <init>(Ltv/alphonso/service/ClockSyncher;)V
    .locals 4
    .param p1, "this$0"    # Ltv/alphonso/service/ClockSyncher;

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    iput-object p1, p0, Ltv/alphonso/service/ClockSyncher$Results;->this$0:Ltv/alphonso/service/ClockSyncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mCurrIteration:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mResults:[Ltv/alphonso/service/ClockSyncher$IterationResult;

    .line 30
    iput-wide v2, p0, Ltv/alphonso/service/ClockSyncher$Results;->mSmallestRTT:J

    .line 31
    iput-wide v2, p0, Ltv/alphonso/service/ClockSyncher$Results;->mClockSkew:J

    return-void
.end method

.method static synthetic access$000(Ltv/alphonso/service/ClockSyncher$Results;)I
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;

    .prologue
    .line 25
    iget v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mCurrIteration:I

    return v0
.end method

.method static synthetic access$002(Ltv/alphonso/service/ClockSyncher$Results;I)I
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Ltv/alphonso/service/ClockSyncher$Results;->mCurrIteration:I

    return p1
.end method

.method static synthetic access$008(Ltv/alphonso/service/ClockSyncher$Results;)I
    .locals 2
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;

    .prologue
    .line 25
    iget v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mCurrIteration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ltv/alphonso/service/ClockSyncher$Results;->mCurrIteration:I

    return v0
.end method

.method static synthetic access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;

    .prologue
    .line 25
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mResults:[Ltv/alphonso/service/ClockSyncher$IterationResult;

    return-object v0
.end method

.method static synthetic access$102(Ltv/alphonso/service/ClockSyncher$Results;[Ltv/alphonso/service/ClockSyncher$IterationResult;)[Ltv/alphonso/service/ClockSyncher$IterationResult;
    .locals 0
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;
    .param p1, "x1"    # [Ltv/alphonso/service/ClockSyncher$IterationResult;

    .prologue
    .line 25
    iput-object p1, p0, Ltv/alphonso/service/ClockSyncher$Results;->mResults:[Ltv/alphonso/service/ClockSyncher$IterationResult;

    return-object p1
.end method

.method static synthetic access$200(Ltv/alphonso/service/ClockSyncher$Results;)J
    .locals 2
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;

    .prologue
    .line 25
    iget-wide v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mSmallestRTT:J

    return-wide v0
.end method

.method static synthetic access$202(Ltv/alphonso/service/ClockSyncher$Results;J)J
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Ltv/alphonso/service/ClockSyncher$Results;->mSmallestRTT:J

    return-wide p1
.end method

.method static synthetic access$300(Ltv/alphonso/service/ClockSyncher$Results;)J
    .locals 2
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;

    .prologue
    .line 25
    iget-wide v0, p0, Ltv/alphonso/service/ClockSyncher$Results;->mClockSkew:J

    return-wide v0
.end method

.method static synthetic access$302(Ltv/alphonso/service/ClockSyncher$Results;J)J
    .locals 1
    .param p0, "x0"    # Ltv/alphonso/service/ClockSyncher$Results;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Ltv/alphonso/service/ClockSyncher$Results;->mClockSkew:J

    return-wide p1
.end method

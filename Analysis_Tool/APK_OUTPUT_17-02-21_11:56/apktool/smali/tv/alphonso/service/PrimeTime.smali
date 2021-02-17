.class public final Ltv/alphonso/service/PrimeTime;
.super Ljava/lang/Object;
.source "PrimeTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltv/alphonso/service/PrimeTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field asFSMBeginEvent:I

.field asFSMEndEvent:I

.field begin:Ljava/lang/String;

.field captureCount:I

.field captureScenarioSleepInterval:J

.field captureScenarioSleepIntervalInhibiterIncrement:D

.field captureScenarioSleepIntervalLivetv:J

.field captureScenarioSleepIntervalMax:J

.field end:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/service/PrimeTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/PrimeTime;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ltv/alphonso/service/PrimeTime$1;

    invoke-direct {v0}, Ltv/alphonso/service/PrimeTime$1;-><init>()V

    sput-object v0, Ltv/alphonso/service/PrimeTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    .line 69
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    .line 70
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    .line 71
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    .line 72
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    .line 73
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ltv/alphonso/service/PrimeTime$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Ltv/alphonso/service/PrimeTime$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ltv/alphonso/service/PrimeTime;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copy(Ltv/alphonso/service/PrimeTime;)V
    .locals 2
    .param p1, "pt"    # Ltv/alphonso/service/PrimeTime;

    .prologue
    .line 100
    iget-object v0, p1, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 102
    iget v0, p1, Ltv/alphonso/service/PrimeTime;->captureCount:I

    iput v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    .line 103
    iget-wide v0, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    .line 104
    iget-wide v0, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    .line 105
    iget-wide v0, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    .line 106
    iget-wide v0, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    .line 107
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public isEqual(Ltv/alphonso/service/PrimeTime;)Z
    .locals 4
    .param p1, "pt"    # Ltv/alphonso/service/PrimeTime;

    .prologue
    .line 85
    iget-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    iget v1, p1, Ltv/alphonso/service/PrimeTime;->captureCount:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    iget-wide v2, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    iget-wide v2, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    iget-wide v2, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    iget-wide v2, p1, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Ltv/alphonso/service/PrimeTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Ltv/alphonso/service/PrimeTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; captureScenarioSleepInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Ltv/alphonso/service/PrimeTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureScenarioSleepIntervalMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; captureScenarioSleepIntervalLivetv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Ltv/alphonso/service/PrimeTime;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureScenarioSleepIntervalInhibiterIncrement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 112
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    .line 115
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    .line 116
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    .line 117
    iput-wide v2, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    .line 118
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    iget-object v0, p0, Ltv/alphonso/service/PrimeTime;->begin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Ltv/alphonso/service/PrimeTime;->end:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget v0, p0, Ltv/alphonso/service/PrimeTime;->captureCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalMax:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalLivetv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-wide v0, p0, Ltv/alphonso/service/PrimeTime;->captureScenarioSleepIntervalInhibiterIncrement:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 37
    return-void
.end method

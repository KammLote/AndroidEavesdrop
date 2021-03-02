.class public Ltv/alphonso/dbutil/pojo/Items;
.super Ljava/lang/Object;
.source "Items.java"


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;


# instance fields
.field private acrType:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private live_feed_offset:J

.field private logo:Ljava/lang/String;

.field private match_offset:J

.field private start_ts:J

.field private time:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "acr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "brand"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "logo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "start_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "match_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "live_feed_offset"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/dbutil/pojo/Items;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->acrType:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveFeedOffset()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Ltv/alphonso/dbutil/pojo/Items;->live_feed_offset:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchOffset()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Ltv/alphonso/dbutil/pojo/Items;->match_offset:J

    return-wide v0
.end method

.method public getStartTS()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Ltv/alphonso/dbutil/pojo/Items;->start_ts:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Ltv/alphonso/dbutil/pojo/Items;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ltv/alphonso/dbutil/pojo/Items;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAcrType(Ljava/lang/String;)V
    .locals 0
    .param p1, "acrType"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->acrType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->brand:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->date:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->duration:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setLiveFeedOffset(J)V
    .locals 1
    .param p1, "live_feed_offset"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Ltv/alphonso/dbutil/pojo/Items;->live_feed_offset:J

    .line 107
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->logo:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMatchOffset(J)V
    .locals 1
    .param p1, "match_offset"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Ltv/alphonso/dbutil/pojo/Items;->match_offset:J

    .line 99
    return-void
.end method

.method public setStartTS(J)V
    .locals 1
    .param p1, "start_ts"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Ltv/alphonso/dbutil/pojo/Items;->start_ts:J

    .line 91
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->time:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Ltv/alphonso/dbutil/pojo/Items;->timestamp:J

    .line 83
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Ltv/alphonso/dbutil/pojo/Items;->title:Ljava/lang/String;

    .line 27
    return-void
.end method

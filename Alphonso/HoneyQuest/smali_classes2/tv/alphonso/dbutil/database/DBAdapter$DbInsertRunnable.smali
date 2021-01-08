.class Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;
.super Ljava/lang/Object;
.source "DBAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/alphonso/dbutil/database/DBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DbInsertRunnable"
.end annotation


# instance fields
.field public acrType:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public cxt:Landroid/content/Context;

.field public date:Ljava/lang/String;

.field public duration:J

.field public live_feed_offset:J

.field public logo:Ljava/lang/String;

.field public match_offset:J

.field public start_ts:J

.field public time:Ljava/lang/String;

.field public timestamp:J

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->cxt:Landroid/content/Context;

    .line 171
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->title:Ljava/lang/String;

    .line 172
    iput-wide v2, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->duration:J

    .line 173
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->acrType:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->logo:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->brand:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->date:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->time:Ljava/lang/String;

    .line 178
    iput-wide v2, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->timestamp:J

    .line 179
    iput-wide v2, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->start_ts:J

    .line 180
    iput-wide v2, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->match_offset:J

    .line 181
    iput-wide v2, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->live_feed_offset:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 186
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->cxt:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 188
    invoke-static {}, Ltv/alphonso/dbutil/database/DBAdapter;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Context is null, can\'t insert record into DB."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->cxt:Landroid/content/Context;

    invoke-static {v7}, Ltv/alphonso/dbutil/database/DBAdapter;->getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;

    move-result-object v0

    .line 194
    .local v0, "db":Ltv/alphonso/dbutil/database/DBAdapter;
    new-instance v1, Ltv/alphonso/dbutil/pojo/Items;

    invoke-direct {v1}, Ltv/alphonso/dbutil/pojo/Items;-><init>()V

    .line 196
    .local v1, "item":Ltv/alphonso/dbutil/pojo/Items;
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setTitle(Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->date:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setDate(Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->time:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setTime(Ljava/lang/String;)V

    .line 199
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->timestamp:J

    invoke-virtual {v1, v8, v9}, Ltv/alphonso/dbutil/pojo/Items;->setTimestamp(J)V

    .line 200
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->start_ts:J

    invoke-virtual {v1, v8, v9}, Ltv/alphonso/dbutil/pojo/Items;->setStartTS(J)V

    .line 202
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->match_offset:J

    invoke-virtual {v1, v8, v9}, Ltv/alphonso/dbutil/pojo/Items;->setMatchOffset(J)V

    .line 203
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->live_feed_offset:J

    invoke-virtual {v1, v8, v9}, Ltv/alphonso/dbutil/pojo/Items;->setLiveFeedOffset(J)V

    .line 205
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 206
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->duration:J

    div-long v4, v8, v12

    .line 207
    .local v4, "seconds":J
    iget-wide v8, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->duration:J

    rem-long v2, v8, v12

    .line 209
    .local v2, "milliSeconds":J
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v6, "str":Ljava/lang/StringBuffer;
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v7, "s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setDuration(Ljava/lang/String;)V

    .line 217
    .end local v2    # "milliSeconds":J
    .end local v4    # "seconds":J
    .end local v6    # "str":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->acrType:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 218
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->acrType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setAcrType(Ljava/lang/String;)V

    .line 221
    :cond_2
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->logo:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 222
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->logo:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setLogo(Ljava/lang/String;)V

    .line 228
    :goto_1
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->brand:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 229
    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->brand:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setBrand(Ljava/lang/String;)V

    .line 236
    :goto_2
    invoke-virtual {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->getNumRecords()J

    move-result-wide v8

    iget-object v7, p0, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->cxt:Landroid/content/Context;

    invoke-static {v7}, Ltv/alphonso/utils/PreferencesManager;->getDBMAxRecords(Landroid/content/Context;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 238
    invoke-virtual {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->deleteOldestRecord()V

    .line 241
    :cond_3
    invoke-virtual {v0, v1}, Ltv/alphonso/dbutil/database/DBAdapter;->insert(Ltv/alphonso/dbutil/pojo/Items;)V

    goto/16 :goto_0

    .line 225
    :cond_4
    const-string v7, "profile_adicon"

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setLogo(Ljava/lang/String;)V

    goto :goto_1

    .line 232
    :cond_5
    const-string v7, ""

    invoke-virtual {v1, v7}, Ltv/alphonso/dbutil/pojo/Items;->setBrand(Ljava/lang/String;)V

    goto :goto_2
.end method

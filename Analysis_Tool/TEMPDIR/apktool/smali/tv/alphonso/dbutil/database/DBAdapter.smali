HTTP

.class public Ltv/alphonso/dbutil/database/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;,
        Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACR_TYPE:Ljava/lang/String; = "acr"

.field public static final APP_MATCH_DURATION:Ljava/lang/String; = "app_match_duration"

.field public static final BRAND:Ljava/lang/String; = "brand"

.field private static DATABASE_NAME:Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x4

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final LIVE_FEED_OFFSET:Ljava/lang/String; = "live_feed_offset"

.field public static final LOGO:Ljava/lang/String; = "logo"

.field public static final MATCH_OFFSET:Ljava/lang/String; = "match_offset"

.field public static final START_TS:Ljava/lang/String; = "start_ts"

.field public static final TABLE_NAME_HISTORY:Ljava/lang/String; = "History"

.field private static final TAG:Ljava/lang/String;

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Ltv/alphonso/dbutil/database/DBAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    .line 22
    sput-object v1, Ltv/alphonso/dbutil/database/DBAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 40
    sput-object v1, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "label":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v3, Ltv/alphonso/dbutil/database/DBAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 69
    new-instance v3, Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;

    sget-object v4, Ltv/alphonso/dbutil/database/DBAdapter;->DATABASE_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v3, p1, v4, v5, v6}, Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v3, p0, Ltv/alphonso/dbutil/database/DBAdapter;->mOpenHelper:Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;

    .line 71
    iput-object p1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Ltv/alphonso/dbutil/database/DBAdapter;->open()Ltv/alphonso/dbutil/database/DBAdapter;

    .line 73
    return-void

    .line 61
    .end local v2    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createAndInsertDBRecord(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "acrType"    # Ljava/lang/String;
    .param p5, "logo"    # Ljava/lang/String;
    .param p6, "brand"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;
    .param p9, "timestamp"    # J
    .param p11, "start_ts"    # J
    .param p13, "match_offset"    # J
    .param p15, "live_feed_offset"    # J

    .prologue
    .line 255
    new-instance v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;

    invoke-direct {v3}, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;-><init>()V

    .line 256
    .local v3, "task":Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;
    iput-object p0, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->cxt:Landroid/content/Context;

    .line 257
    iput-object p1, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->title:Ljava/lang/String;

    .line 258
    iput-wide p2, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->duration:J

    .line 259
    iput-object p4, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->acrType:Ljava/lang/String;

    .line 260
    iput-object p5, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->logo:Ljava/lang/String;

    .line 261
    iput-object p6, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->brand:Ljava/lang/String;

    .line 262
    iput-object p7, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->date:Ljava/lang/String;

    .line 263
    iput-object p8, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->time:Ljava/lang/String;

    .line 264
    iput-wide p9, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->timestamp:J

    .line 265
    move-wide/from16 v0, p11

    iput-wide v0, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->start_ts:J

    .line 266
    move-wide/from16 v0, p13

    iput-wide v0, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->match_offset:J

    .line 267
    move-wide/from16 v0, p15

    iput-wide v0, v3, Ltv/alphonso/dbutil/database/DBAdapter$DbInsertRunnable;->live_feed_offset:J

    .line 269
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    .local v2, "shortLivedThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 271
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Ltv/alphonso/dbutil/database/DBAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ltv/alphonso/dbutil/database/DBAdapter;

    invoke-direct {v0, p0}, Ltv/alphonso/dbutil/database/DBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    .line 46
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    invoke-virtual {v0}, Ltv/alphonso/dbutil/database/DBAdapter;->createTables()V

    .line 48
    :cond_0
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->singletonObject:Ltv/alphonso/dbutil/database/DBAdapter;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    :cond_0
    const-string v0, "dbadapter"

    const-string v1, "********* DB Adapter Close***************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public createTables()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "dbadapter"

    const-string v1, "******************OnCreate*****************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->mOpenHelper:Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;->access$100(Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    return-void
.end method

.method public deleteAllEntries()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteAllEntries() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "History"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public deleteNOldestRecords(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM History where _id in (select _id from History order by _id LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public deleteOldestRecord()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 305
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    const-string v1, "deleteOldestRecord() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "History"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 308
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 311
    .local v10, "rowId":J
    sget-object v0, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOldestRecord() id of oldest record: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "History"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    .end local v10    # "rowId":J
    :cond_0
    return-void
.end method

.method public deleteTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public dropTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public getAllRecords()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 335
    const-string v1, "SELECT  * FROM History"

    .line 336
    .local v1, "selectQuery":Ljava/lang/String;
    iget-object v2, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 338
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    return-object v0
.end method

.method public getAllRecordsFromTimestamp(J)Landroid/database/Cursor;
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM History WHERE TIMESTAMP > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "selectQuery":Ljava/lang/String;
    iget-object v2, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 348
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltv/alphonso/dbutil/database/DBAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNumRecords()J
    .locals 4

    .prologue
    .line 327
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM History"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public insert(Ltv/alphonso/dbutil/pojo/Items;)V
    .locals 5
    .param p1, "item"    # Ltv/alphonso/dbutil/pojo/Items;

    .prologue
    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "date"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "time"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "duration"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "acr"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getAcrType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "brand"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "logo"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "timestamp"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 289
    const-string v1, "start_ts"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getStartTS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 290
    const-string v1, "match_offset"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getMatchOffset()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v1, "live_feed_offset"

    invoke-virtual {p1}, Ltv/alphonso/dbutil/pojo/Items;->getLiveFeedOffset()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "History"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 294
    return-void
.end method

.method public open()Ltv/alphonso/dbutil/database/DBAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->mOpenHelper:Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object p0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->mOpenHelper:Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;

    invoke-virtual {v1}, Ltv/alphonso/dbutil/database/DBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public updateMatchDurationOfIdRecord(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v0, "cv":Landroid/content/ContentValues;
    sget-object v1, Ltv/alphonso/dbutil/database/DBAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMatchDurationOfIdRecord() of record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "start_ts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "app_match_duration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v1, "start_ts"

    const-string v2, "start_ts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    const-string v1, "app_match_duration"

    const-string v2, "app_match_duration"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Ltv/alphonso/dbutil/database/DBAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "History"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start_ts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "start_ts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    return-void
.end method

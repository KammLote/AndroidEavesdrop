.class public Lcom/mopub/mraid/MraidNativeCommandHandler;
.super Ljava/lang/Object;
.source "MraidNativeCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidNativeCommandHandler$MoPubMediaScannerConnectionClient;,
        Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;,
        Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;
    }
.end annotation


# static fields
.field public static final ANDROID_CALENDAR_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/event"

.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final MAX_NUMBER_DAYS_IN_MONTH:I = 0x1f

.field static final MIME_TYPE_HEADER:Ljava/lang/String; = "Content-Type"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mraid/MraidNativeCommandHandler;->DATE_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dayNumberToDayOfMonthString(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 396
    if-eqz p1, :cond_0

    const/16 v1, -0x1f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "dayOfMonth":Ljava/lang/String;
    return-object v0

    .line 399
    .end local v0    # "dayOfMonth":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid day of month "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private dayNumberToDayOfWeekString(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 365
    packed-switch p1, :pswitch_data_0

    .line 388
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid day of week "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :pswitch_0
    const-string v0, "SU"

    .line 390
    .local v0, "dayOfWeek":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 370
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_1
    const-string v0, "MO"

    .line 371
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_2
    const-string v0, "TU"

    .line 374
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_3
    const-string v0, "WE"

    .line 377
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 379
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_4
    const-string v0, "TH"

    .line 380
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_5
    const-string v0, "FR"

    .line 383
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_6
    const-string v0, "SA"

    .line 386
    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static isCalendarAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    .local v0, "calendarIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {p0, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    .line 151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStorePictureSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 144
    invoke-static {p0, v0}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "result":Ljava/util/Date;
    sget-object v3, Lcom/mopub/mraid/MraidNativeCommandHandler;->DATE_FORMATS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 269
    .local v0, "DATE_FORMAT":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    if-eqz v1, :cond_1

    .line 277
    .end local v0    # "DATE_FORMAT":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 273
    .restart local v0    # "DATE_FORMAT":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 267
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, "rule":Ljava/lang/StringBuilder;
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    .local v0, "frequency":Ljava/lang/String;
    const/4 v1, -0x1

    .line 285
    .local v1, "interval":I
    const-string v5, "interval"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    const-string v5, "interval"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    :cond_0
    const-string v5, "daily"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    const-string v5, "FREQ=DAILY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    if-eq v1, v6, :cond_1

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTERVAL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .end local v0    # "frequency":Ljava/lang/String;
    .end local v1    # "interval":I
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 293
    .restart local v0    # "frequency":Ljava/lang/String;
    .restart local v1    # "interval":I
    :cond_2
    const-string v5, "weekly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 294
    const-string v5, "FREQ=WEEKLY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    if-eq v1, v6, :cond_3

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTERVAL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    const-string v5, "daysInWeek"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    const-string v5, "daysInWeek"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mopub/mraid/MraidNativeCommandHandler;->translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "weekdays":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 301
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid "

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BYDAY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 305
    .end local v4    # "weekdays":Ljava/lang/String;
    :cond_5
    const-string v5, "monthly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 306
    const-string v5, "FREQ=MONTHLY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    if-eq v1, v6, :cond_6

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTERVAL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_6
    const-string v5, "daysInMonth"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    const-string v5, "daysInMonth"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mopub/mraid/MraidNativeCommandHandler;->translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "monthDays":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 313
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 315
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BYMONTHDAY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 318
    .end local v2    # "monthDays":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private showUserDialog(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "failureListener"    # Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;

    .prologue
    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "alertDialogDownloadImage":Landroid/app/AlertDialog$Builder;
    const-string v1, "Save Image"

    .line 428
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Download image to Picture gallery?"

    .line 429
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    const/4 v3, 0x0

    .line 430
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Okay"

    new-instance v3, Lcom/mopub/mraid/MraidNativeCommandHandler$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler$2;-><init>(Lcom/mopub/mraid/MraidNativeCommandHandler;Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    .line 431
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 437
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 439
    return-void
.end method

.method private translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v2, "validatedParamsMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "description"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "start"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing start and description fields"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_1
    const-string v3, "title"

    const-string v4, "description"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v3, "start"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "start"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 224
    const-string v3, "start"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 225
    .local v1, "startDateTime":Ljava/util/Date;
    if-eqz v1, :cond_6

    .line 226
    const-string v3, "beginTime"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "end"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "end"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 235
    const-string v3, "end"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 236
    .local v0, "endDateTime":Ljava/util/Date;
    if-eqz v0, :cond_8

    .line 237
    const-string v3, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v0    # "endDateTime":Ljava/util/Date;
    :cond_2
    const-string v3, "location"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    const-string v3, "eventLocation"

    const-string v4, "location"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    const-string v3, "summary"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    const-string v3, "description"

    const-string v4, "summary"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    const-string v3, "transparency"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    const-string v4, "availability"

    const-string v3, "transparency"

    .line 254
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "transparent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 252
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_5
    const-string v3, "rrule"

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-object v2

    .line 228
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    .end local v1    # "startDateTime":Ljava/util/Date;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: start is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .restart local v0    # "endDateTime":Ljava/util/Date;
    .restart local v1    # "startDateTime":Ljava/util/Date;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v0    # "endDateTime":Ljava/util/Date;
    :cond_9
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v4, "daysResult":Ljava/lang/StringBuilder;
    const/16 v5, 0x3f

    new-array v3, v5, [Z

    .line 347
    .local v3, "daysAlreadyCounted":[Z
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "days":[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v2, v5

    .line 350
    .local v0, "day":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, "dayNumber":I
    add-int/lit8 v7, v1, 0x1f

    aget-boolean v7, v3, v7

    if-nez v7, :cond_0

    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->dayNumberToDayOfMonthString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v7, v1, 0x1f

    const/4 v8, 0x1

    aput-boolean v8, v3, v7

    .line 349
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "dayNumber":I
    :cond_1
    array-length v5, v2

    if-nez v5, :cond_2

    .line 357
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 359
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x7

    const/4 v5, 0x0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v4, "daysResult":Ljava/lang/StringBuilder;
    new-array v3, v10, [Z

    .line 327
    .local v3, "daysAlreadyCounted":[Z
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "days":[Ljava/lang/String;
    array-length v7, v2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v2, v6

    .line 330
    .local v0, "day":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, "dayNumber":I
    if-ne v1, v10, :cond_0

    move v1, v5

    .line 332
    :cond_0
    aget-boolean v8, v3, v1

    if-nez v8, :cond_1

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->dayNumberToDayOfWeekString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const/4 v8, 0x1

    aput-boolean v8, v3, v1

    .line 329
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "dayNumber":I
    :cond_2
    array-length v5, v2

    if-nez v5, :cond_3

    .line 338
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 340
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method createCalendarEvent(Landroid/content/Context;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 77
    .local v0, "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 81
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 90
    .end local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "no calendar app installed"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 92
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    const-string v6, "Action is unsupported on this device - no calendar app installed"

    invoke-direct {v5, v6}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 83
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 94
    .end local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create calendar: invalid parameters "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 96
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    invoke-direct {v5, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_2
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 97
    .end local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "key":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "could not create calendar event"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 99
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    invoke-direct {v5, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v5, 0x10000000

    :try_start_3
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    return-void

    .line 102
    .end local v0    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 103
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    const-string v6, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-direct {v5, v6}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "failureListener"    # Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;

    .prologue
    .line 406
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;

    new-instance v1, Lcom/mopub/mraid/MraidNativeCommandHandler$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler$1;-><init>(Lcom/mopub/mraid/MraidNativeCommandHandler;Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    invoke-direct {v0, p1, v1}, Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;-><init>(Landroid/content/Context;Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask$DownloadImageAsyncTaskListener;)V

    .line 421
    .local v0, "downloadImageAsyncTask":Lcom/mopub/mraid/MraidNativeCommandHandler$DownloadImageAsyncTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method isInlineVideoAvailable(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v4

    sget-object v5, Lcom/mopub/common/util/VersionCode;->HONEYCOMB_MR1:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v4, v5}, Lcom/mopub/common/util/VersionCode;->isBelow(Lcom/mopub/common/util/VersionCode;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    move-object v0, p2

    .line 185
    .local v0, "tempView":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v4

    invoke-static {v4, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-nez v4, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 204
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x1000000

    invoke-static {v4, v5}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 207
    goto :goto_0

    .line 195
    .end local v1    # "window":Landroid/view/Window;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "tempView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "tempView":Landroid/view/View;
    goto :goto_1
.end method

.method isSmsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "smsIntent":Landroid/content/Intent;
    const-string v1, "sms:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 139
    invoke-static {p1, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTelAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "telIntent":Landroid/content/Intent;
    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    invoke-static {p1, v0}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method storePicture(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "failureListener"    # Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    const-string v1, "Error downloading file  - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->showUserDialog(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v0, "Downloading image to Picture gallery..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->downloadImage(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    goto :goto_0
.end method

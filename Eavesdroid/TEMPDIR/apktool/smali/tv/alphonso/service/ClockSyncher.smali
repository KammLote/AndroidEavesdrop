.class public Ltv/alphonso/service/ClockSyncher;
.super Ljava/lang/Object;
.source "ClockSyncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/alphonso/service/ClockSyncher$Results;,
        Ltv/alphonso/service/ClockSyncher$IterationResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

.field private mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

.field private mApplyClockOffsetToFP:Z

.field private mContext:Landroid/content/Context;

.field public mDebug:Z

.field private mNumSavedIterations:I

.field private mPollInterval:I

.field private mReceiver:Landroid/os/ResultReceiver;

.field private mResult:Ltv/alphonso/service/ClockSyncher$Results;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Ltv/alphonso/service/ClockSyncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ltv/alphonso/alphonsoclient/AlphonsoClient;Ltv/alphonso/audiocaptureservice/AudioCaptureService;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Ltv/alphonso/alphonsoclient/AlphonsoClient;
    .param p3, "acs"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p4, "pollInterval"    # I
    .param p5, "numSavedIterations"    # I
    .param p6, "debug"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v2, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    .line 37
    iput v2, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    .line 40
    iput-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    .line 41
    iput-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 42
    iput-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 43
    iput-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mReceiver:Landroid/os/ResultReceiver;

    .line 45
    new-instance v0, Ltv/alphonso/service/ClockSyncher$Results;

    invoke-direct {v0, p0}, Ltv/alphonso/service/ClockSyncher$Results;-><init>(Ltv/alphonso/service/ClockSyncher;)V

    iput-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    .line 49
    iput-boolean v2, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    .line 59
    iput-object p1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Ltv/alphonso/service/ClockSyncher;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 61
    iput-object p3, p0, Ltv/alphonso/service/ClockSyncher;->mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 62
    invoke-virtual {p0, p4}, Ltv/alphonso/service/ClockSyncher;->setPollInterval(I)V

    .line 63
    invoke-virtual {p0, p5}, Ltv/alphonso/service/ClockSyncher;->setNumSavedIterations(I)V

    .line 64
    iput-boolean p6, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    .line 66
    invoke-virtual {p0}, Ltv/alphonso/service/ClockSyncher;->processClockSyncPollTimerExpiry()V

    .line 68
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendClockSkewToACS(J)V
    .locals 5
    .param p1, "clockSkew"    # J

    .prologue
    .line 302
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "clock_skew"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x15

    iput v2, v0, Landroid/os/Message;->what:I

    .line 307
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 309
    iget-boolean v2, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v2, :cond_0

    .line 310
    sget-object v2, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending ACS_CLOCK_SKEW message to AudioCaptureService."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method private startClockSyncPollTimer()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-boolean v2, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v2, :cond_0

    .line 318
    sget-object v2, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting ClockSyncPollTimer with mPollInterval: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 321
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-class v3, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "CLOCK_SYNC_POLL_TIMER_EXPIRY"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v2, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v3, 0x1b

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v7, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 326
    .local v6, "pi":Landroid/app/PendingIntent;
    iget v2, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    .line 328
    .local v4, "interval":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 329
    return-void
.end method

.method private stopClockSyncPollTimer()V
    .locals 6

    .prologue
    .line 334
    iget-boolean v3, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v3, :cond_0

    .line 335
    sget-object v3, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    const-string v4, "Stopping ClockSyncPollTimer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 338
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-class v4, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "CLOCK_SYNC_POLL_TIMER_EXPIRY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v3, "tv.alphonso.service.AlphonsoService.EVENT"

    const/16 v4, 0x1b

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 342
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 343
    return-void
.end method

.method private updateSmallestRtt(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 292
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v1}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v1

    aget-object v1, v1, p1

    iget-wide v2, v1, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/service/ClockSyncher$Results;->access$202(Ltv/alphonso/service/ClockSyncher$Results;J)J

    .line 293
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v1}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v1

    aget-object v1, v1, p1

    iget-wide v2, v1, Ltv/alphonso/service/ClockSyncher$IterationResult;->mClockSkew:J

    invoke-static {v0, v2, v3}, Ltv/alphonso/service/ClockSyncher$Results;->access$302(Ltv/alphonso/service/ClockSyncher$Results;J)J

    .line 295
    iget-boolean v0, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v0}, Ltv/alphonso/service/ClockSyncher$Results;->access$300(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ltv/alphonso/service/ClockSyncher;->sendClockSkewToACS(J)V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ltv/alphonso/service/ClockSyncher;->stopClockSyncPollTimer()V

    .line 75
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->removeMessages(I)V

    .line 76
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->removeMessages(I)V

    .line 78
    iput-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    .line 79
    iput-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    .line 80
    iput-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    .line 81
    iput-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mACS:Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .line 82
    return-void
.end method

.method public getApplyClockOffsetToFP()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    return v0
.end method

.method public getClockSkew()J
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v0}, Ltv/alphonso/service/ClockSyncher$Results;->access$300(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClockSkewInfo()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 361
    iget v4, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    new-array v3, v4, [J

    .line 362
    .local v3, "rttArray":[J
    iget v4, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    new-array v0, v4, [J

    .line 364
    .local v0, "clockSkewArray":[J
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v1, "clockSkewInfo":Landroid/os/Bundle;
    const-string v4, "min_rtt_clock_skew_bundle"

    invoke-virtual {p0}, Ltv/alphonso/service/ClockSyncher;->getMinRTTClockSkew()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 367
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    if-ge v2, v4, :cond_0

    .line 369
    iget-object v4, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v4}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v4

    aget-object v4, v4, v2

    iget-wide v4, v4, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    aput-wide v4, v3, v2

    .line 370
    iget-object v4, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v4}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v4

    aget-object v4, v4, v2

    iget-wide v4, v4, Ltv/alphonso/service/ClockSyncher$IterationResult;->mClockSkew:J

    aput-wide v4, v0, v2

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_0
    const-string v4, "rtt_array"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 374
    const-string v4, "clock_skew_array"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 376
    return-object v1
.end method

.method public getMinRTTClockSkew()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "min_rtt"

    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v2}, Ltv/alphonso/service/ClockSyncher$Results;->access$200(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 354
    const-string v1, "min_rtt_clock_skew"

    iget-object v2, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v2}, Ltv/alphonso/service/ClockSyncher$Results;->access$300(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 356
    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ltv/alphonso/service/ClockSyncher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltv/alphonso/service/ClockSyncher$1;-><init>(Ltv/alphonso/service/ClockSyncher;Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mReceiver:Landroid/os/ResultReceiver;

    .line 226
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public processClockSyncPollTimerExpiry()V
    .locals 6

    .prologue
    .line 136
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v1, "params":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 140
    .local v2, "serverAddr":Ljava/lang/StringBuffer;
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewInsecureServer(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :goto_0
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v3, "server_addr"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "com.alphonsoclient.android.EXTRA_ALPHONSO_RESULT_RECEIVER"

    invoke-virtual {p0}, Ltv/alphonso/service/ClockSyncher;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v3, v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0xe

    iput v3, v0, Landroid/os/Message;->what:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    iget-boolean v3, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v3, :cond_0

    .line 157
    sget-object v3, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending CLOCK_SYNC_POLL_REQEUST message to AlphonsoClient; serverAddr: ."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v3, p0, Ltv/alphonso/service/ClockSyncher;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v3, v3, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    return-void

    .line 143
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public processConfigChange(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 164
    iget-boolean v0, p0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prov-Server config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const-string v0, "clock_sync_poll_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "clock_sync_poll_interval"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    if-eq v0, v1, :cond_1

    .line 169
    const-string v0, "clock_sync_poll_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ClockSyncher;->setPollInterval(I)V

    .line 171
    :cond_1
    const-string v0, "save_n_clock_offset_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "save_n_clock_offset_values"

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    if-eq v0, v1, :cond_2

    .line 173
    const-string v0, "save_n_clock_offset_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ClockSyncher;->setNumSavedIterations(I)V

    .line 175
    :cond_2
    const-string v0, "add_clock_offset_to_fprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "add_clock_offset_to_fprint"

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    if-eq v0, v1, :cond_3

    .line 177
    const-string v0, "add_clock_offset_to_fprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/service/ClockSyncher;->setApplyClockOffsetToFP(Z)V

    .line 179
    :cond_3
    const-string v0, "clock_skew_server_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "clock_skew_server_name"

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-string v1, "clock_skew_server_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setClockSkewServerName(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_4
    const-string v0, "clock_skew_server_port"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "clock_skew_server_port"

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewServerPort(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 185
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-string v1, "clock_skew_server_port"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setClockSkewServerPort(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :cond_5
    const-string v0, "clock_skew_insecure_server"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "clock_skew_insecure_server"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ltv/alphonso/utils/PreferencesManager;->getClockSkewInsecureServer(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 189
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    const-string v1, "clock_skew_insecure_server"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setClockSkewInsecureServer(Landroid/content/Context;Z)V

    .line 190
    :cond_6
    return-void
.end method

.method public processServerResponse(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 232
    const-string v14, "device_request_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v4, v14

    .line 234
    .local v4, "deviceRequestTime":J
    const-string v14, "server_reflect_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 235
    .local v12, "serverTime":D
    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    .line 237
    double-to-long v10, v12

    .line 239
    .local v10, "serverReflectTime":J
    const-string v14, "device_response_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 241
    .local v6, "deviceResponseTime":J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v14, :cond_0

    .line 242
    sget-object v14, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "deviceRequestTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; serverReflectTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; deviceResponseTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v15

    aget-object v14, v14, v15

    sub-long v16, v6, v4

    move-wide/from16 v0, v16

    iput-wide v0, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v15

    aget-object v14, v14, v15

    sub-long v16, v10, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v18

    aget-object v15, v15, v18

    iget-wide v0, v15, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mClockSkew:J

    .line 248
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v14, :cond_1

    .line 250
    sget-object v14, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCurrIteration: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v14, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCurrClockSkew: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v17

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-wide v0, v0, Ltv/alphonso/service/ClockSyncher$IterationResult;->mClockSkew:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; mCurrRTT: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v17

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-wide v0, v0, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$200(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    .line 255
    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v15

    aget-object v14, v14, v15

    iget-wide v14, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$200(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ltv/alphonso/service/ClockSyncher;->updateSmallestRtt(I)V

    .line 278
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Ltv/alphonso/service/ClockSyncher;->mDebug:Z

    if-eqz v14, :cond_7

    .line 280
    sget-object v14, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Committed mClockSkew: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$300(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; mSmallestRTT: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$200(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    array-length v14, v14

    if-ge v8, v14, :cond_7

    .line 282
    sget-object v14, Ltv/alphonso/service/ClockSyncher;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mResults["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v16

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget-wide v0, v0, Ltv/alphonso/service/ClockSyncher$IterationResult;->mClockSkew:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v16

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget-wide v0, v0, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    .end local v8    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-wide v2, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    .line 262
    .local v2, "currSmallestRtt":J
    const/4 v9, 0x0

    .line 263
    .local v9, "smallestRttIdx":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    if-ge v8, v14, :cond_6

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    aget-object v14, v14, v8

    iget-wide v14, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    .line 266
    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    aget-object v14, v14, v8

    iget-wide v14, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    cmp-long v14, v14, v2

    if-gez v14, :cond_5

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v14

    aget-object v14, v14, v8

    iget-wide v2, v14, Ltv/alphonso/service/ClockSyncher$IterationResult;->mRtt:J

    .line 269
    move v9, v8

    .line 263
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 272
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$200(Ltv/alphonso/service/ClockSyncher$Results;)J

    move-result-wide v14

    cmp-long v14, v2, v14

    if-eqz v14, :cond_3

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ltv/alphonso/service/ClockSyncher;->updateSmallestRtt(I)V

    goto/16 :goto_0

    .line 285
    .end local v2    # "currSmallestRtt":J
    .end local v8    # "i":I
    .end local v9    # "smallestRttIdx":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v14}, Ltv/alphonso/service/ClockSyncher$Results;->access$008(Ltv/alphonso/service/ClockSyncher$Results;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    move-object/from16 v0, p0

    iget-object v15, v0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$000(Ltv/alphonso/service/ClockSyncher$Results;)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    invoke-static {v14, v15}, Ltv/alphonso/service/ClockSyncher$Results;->access$002(Ltv/alphonso/service/ClockSyncher$Results;I)I

    .line 287
    return-void
.end method

.method public setApplyClockOffsetToFP(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    .line 124
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Ltv/alphonso/service/ClockSyncher;->mApplyClockOffsetToFP:Z

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setClockSyncApplyFP(Landroid/content/Context;Z)V

    .line 125
    return-void
.end method

.method public setNumSavedIterations(I)V
    .locals 6
    .param p1, "numSavedIterations"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 105
    iget v1, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    if-eq v1, p1, :cond_1

    .line 107
    iput p1, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    .line 108
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    iget v2, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    invoke-static {v1, v2}, Ltv/alphonso/utils/PreferencesManager;->setClockSyncSavedIterations(Landroid/content/Context;I)V

    .line 110
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ltv/alphonso/service/ClockSyncher$Results;->access$002(Ltv/alphonso/service/ClockSyncher$Results;I)I

    .line 111
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    iget v2, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    new-array v2, v2, [Ltv/alphonso/service/ClockSyncher$IterationResult;

    invoke-static {v1, v2}, Ltv/alphonso/service/ClockSyncher$Results;->access$102(Ltv/alphonso/service/ClockSyncher$Results;[Ltv/alphonso/service/ClockSyncher$IterationResult;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ltv/alphonso/service/ClockSyncher;->mNumSavedIterations:I

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v1}, Ltv/alphonso/service/ClockSyncher$Results;->access$100(Ltv/alphonso/service/ClockSyncher$Results;)[Ltv/alphonso/service/ClockSyncher$IterationResult;

    move-result-object v1

    new-instance v2, Ltv/alphonso/service/ClockSyncher$IterationResult;

    invoke-direct {v2, p0}, Ltv/alphonso/service/ClockSyncher$IterationResult;-><init>(Ltv/alphonso/service/ClockSyncher;)V

    aput-object v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v1, v4, v5}, Ltv/alphonso/service/ClockSyncher$Results;->access$202(Ltv/alphonso/service/ClockSyncher$Results;J)J

    .line 116
    iget-object v1, p0, Ltv/alphonso/service/ClockSyncher;->mResult:Ltv/alphonso/service/ClockSyncher$Results;

    invoke-static {v1, v4, v5}, Ltv/alphonso/service/ClockSyncher$Results;->access$302(Ltv/alphonso/service/ClockSyncher$Results;J)J

    .line 118
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setPollInterval(I)V
    .locals 2
    .param p1, "pollInterval"    # I

    .prologue
    .line 89
    iget v0, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    if-eq v0, p1, :cond_0

    .line 91
    iput p1, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    .line 92
    iget-object v0, p0, Ltv/alphonso/service/ClockSyncher;->mContext:Landroid/content/Context;

    iget v1, p0, Ltv/alphonso/service/ClockSyncher;->mPollInterval:I

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setClockSyncPollInterval(Landroid/content/Context;I)V

    .line 95
    invoke-direct {p0}, Ltv/alphonso/service/ClockSyncher;->stopClockSyncPollTimer()V

    .line 98
    invoke-direct {p0}, Ltv/alphonso/service/ClockSyncher;->startClockSyncPollTimer()V

    .line 100
    :cond_0
    return-void
.end method

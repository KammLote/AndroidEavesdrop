.class public Ltv/alphonso/audiocaptureservice/ACSUtils;
.super Ljava/lang/Object;
.source "ACSUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Ltv/alphonso/audiocaptureservice/ACSUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 3
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 586
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 589
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ALPHONSO"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 593
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 594
    return-void
.end method

.method public static acquireWakeLockForCaptureSleepTimerExpiry(Ltv/alphonso/audiocaptureservice/AudioCaptureService;I)V
    .locals 1
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "msgType"    # I

    .prologue
    .line 577
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 579
    invoke-static {p0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->acquireWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    .line 581
    :cond_0
    return-void
.end method

.method public static dumpStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 389
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFailures:                        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFailures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLocalAcrSuccesses:               "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mLocalAcrSuccesses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAverageLocalAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinLocalAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxLocalAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxLocalAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServerAcrSuccesses:              "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mServerAcrSuccesses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAverageServerAcrCaptureDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinServerAcrCaptureDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxServerAcrCaptureDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxServerAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSplitAcrSuccesses:               "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mSplitAcrSuccesses:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAverageSplitAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinSplitAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxSplitAcrCaptureDuration:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxSplitAcrCaptureDuration:J

    invoke-static {v2, v3}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return-void
.end method

.method public static getAcrTypeString(B)Ljava/lang/String;
    .locals 1
    .param p0, "acrType"    # B

    .prologue
    .line 656
    packed-switch p0, :pswitch_data_0

    .line 671
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 659
    :pswitch_1
    const-string v0, "ACR_LOCAL"

    goto :goto_0

    .line 662
    :pswitch_2
    const-string v0, "ACR_SERVER"

    goto :goto_0

    .line 665
    :pswitch_3
    const-string v0, "ACR_SPLIT"

    goto :goto_0

    .line 668
    :pswitch_4
    const-string v0, "ACR_DUAL"

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDurationAsString(J)Ljava/lang/String;
    .locals 8
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 216
    div-long v4, p0, v6

    long-to-int v1, v4

    .line 217
    .local v1, "seconds":I
    rem-long v4, p0, v6

    long-to-int v0, v4

    .line 219
    .local v0, "milliSeconds":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v2, "str":Ljava/lang/StringBuffer;
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v3, "s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getResultSuffix(Ltv/alphonso/audiocaptureservice/AudioCaptureService;BZ)Ljava/lang/String;
    .locals 6
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "result"    # B
    .param p2, "cancel"    # Z

    .prologue
    const/16 v5, 0x5f

    const/4 v3, 0x1

    .line 611
    if-eqz p2, :cond_0

    .line 612
    const-string v0, "Cancelled"

    .line 649
    :goto_0
    return-object v0

    .line 613
    :cond_0
    if-ne p1, v3, :cond_2

    .line 615
    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentCapturesTodo:I

    if-nez v2, :cond_1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    if-le v2, v3, :cond_1

    .line 617
    const-string v0, "Final_Time_out"

    goto :goto_0

    .line 619
    :cond_1
    const-string v0, "Timed_out"

    goto :goto_0

    .line 623
    :cond_2
    const/4 v0, 0x0

    .line 624
    .local v0, "suffix":Ljava/lang/String;
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "split"

    .line 625
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "dual"

    .line 626
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "server"

    .line 627
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 629
    :cond_3
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_4

    .line 630
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting suffix as server-terminated for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v4, v4, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v4, v4, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " acr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_4
    const-string v0, "server-terminated"

    .line 644
    :goto_1
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 647
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 649
    goto :goto_0

    .line 633
    :cond_5
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 635
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v0, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    goto :goto_1

    .line 639
    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 640
    .local v1, "temp":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    goto :goto_1
.end method

.method public static postProcessSetupOnInitialized(Ltv/alphonso/audiocaptureservice/AudioCaptureService;I)V
    .locals 8
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "oldAcrMode"    # I

    .prologue
    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x1

    .line 717
    if-nez p1, :cond_0

    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-eqz v1, :cond_0

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    and-long/2addr v2, v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 722
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 724
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 725
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static postProcessSetupOnRunning(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 734
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    if-nez v0, :cond_0

    .line 736
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v1, "ACR is diabled, store the start event by setting the start-received flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 740
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 742
    :cond_0
    return-void
.end method

.method public static processCallStarted(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 681
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 684
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFlags:J

    .line 687
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ltv/alphonso/audiocaptureservice/ACSState;->onStop(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 688
    return-void
.end method

.method public static processCleanup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 1
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 146
    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->disableAcr(I)V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrShift(B)V

    .line 152
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0}, Ltv/alphonso/audiocaptureservice/RecorderThread;->destroyRecorder()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    .line 155
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v0, v0, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSNullState:Ltv/alphonso/audiocaptureservice/ACSNull;

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 156
    return-void
.end method

.method public static processClockSkew(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 693
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating clockSkew: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clock_skew"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    const-string v0, "clock_skew"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mClockSkew:J

    .line 697
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    const-string v1, "clock_skew"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setClockSkewOnClient(J)V

    .line 698
    return-void
.end method

.method public static processDestroy(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 3
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v2, 0x0

    .line 28
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_1

    .line 30
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v1, "Sending AUDIO_CAPTURE_SERVICE_CLEANUP_DONE message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 36
    :cond_1
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFPUploadService:Ltv/alphonso/alphonsoclient/AudioFPUploadServiceV2;

    .line 37
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    .line 38
    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mHandler:Landroid/os/Handler;

    .line 40
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 41
    return-void
.end method

.method public static processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUpload(Z)V

    .line 187
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setAudioCaptureUploadOnClient(Z)V

    .line 188
    return-void
.end method

.method public static processDisableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUploadTimedout(Z)V

    .line 203
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setAudioCaptureUploadTimedoutOnClient(Z)V

    .line 204
    return-void
.end method

.method public static processDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setRecordTimeouts(Z)V

    .line 171
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setRecordTimeoutstOnClient(Z)V

    .line 172
    return-void
.end method

.method public static processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUpload(Z)V

    .line 179
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setAudioCaptureUploadOnClient(Z)V

    .line 180
    return-void
.end method

.method public static processEnableAudioUploadTimedout(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUploadTimedout(Z)V

    .line 195
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setAudioCaptureUploadTimedoutOnClient(Z)V

    .line 196
    return-void
.end method

.method public static processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setRecordTimeouts(Z)V

    .line 163
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, v1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->setRecordTimeoutstOnClient(Z)V

    .line 164
    return-void
.end method

.method public static processGetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->localAcrStats:[Ljava/lang/String;

    array-length v6, v6

    new-array v0, v6, [Ljava/lang/String;

    .line 335
    .local v0, "acrLocalValues":[Ljava/lang/String;
    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->serverAcrStats:[Ljava/lang/String;

    array-length v6, v6

    new-array v1, v6, [Ljava/lang/String;

    .line 336
    .local v1, "acrServerValues":[Ljava/lang/String;
    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->splitAcrStats:[Ljava/lang/String;

    array-length v6, v6

    new-array v2, v6, [Ljava/lang/String;

    .line 337
    .local v2, "acrSplitValues":[Ljava/lang/String;
    iget-object v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->commonStats:[Ljava/lang/String;

    array-length v6, v6

    new-array v4, v6, [Ljava/lang/String;

    .line 339
    .local v4, "commonValues":[Ljava/lang/String;
    iget v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mLocalAcrSuccesses:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    .line 340
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 341
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxLocalAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    .line 342
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    .line 344
    iget v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mServerAcrSuccesses:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v8

    .line 345
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v9

    .line 346
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxServerAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v10

    .line 347
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    .line 349
    iget v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mSplitAcrSuccesses:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    .line 350
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    .line 351
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxSplitAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    .line 352
    iget-wide v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    invoke-static {v6, v7}, Ltv/alphonso/audiocaptureservice/ACSUtils;->getDurationAsString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v11

    .line 354
    iget v6, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFailures:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 356
    const-string v6, "tv.alphonso.audiocaptureservice.EXTRA_RESULT_RECEIVER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    .line 358
    .local v5, "statsReceiver":Landroid/os/ResultReceiver;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v6, "acrLocalValues"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    const-string v6, "acrServerValues"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 361
    const-string v6, "acrSplitValues"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 362
    const-string v6, "commonValues"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5, v8, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 366
    return-void
.end method

.method public static processHistoryFlagUpdate(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkHistoryFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "history_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setHistoryFlag(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public static processNewAudioDBFile(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-static {p1}, Ltv/alphonso/audiocaptureservice/OnBoardAudioClipsLoader;->processNewAudioDbFile(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public static processPrimeTimeBegin(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    .line 758
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->resetPowerOptimizationInhibitor()V

    .line 760
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v0, :cond_5

    .line 762
    const-string v0, "capture_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    const-string v1, "capture_count"

    .line 763
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 764
    const-string v0, "capture_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    .line 766
    :cond_0
    const-string v0, "capture_scenario_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    const-string v2, "capture_scenario_sleep_interval"

    .line 767
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 768
    const-string v0, "capture_scenario_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    .line 770
    :cond_1
    const-string v0, "capture_scenario_sleep_interval_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    const-string v2, "capture_scenario_sleep_interval_max"

    .line 771
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 772
    const-string v0, "capture_scenario_sleep_interval_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    .line 774
    :cond_2
    const-string v0, "capture_scenario_sleep_interval_livetv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    const-string v2, "capture_scenario_sleep_interval_livetv"

    .line 775
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 776
    const-string v0, "capture_scenario_sleep_interval_livetv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    .line 778
    :cond_3
    const-string v0, "capture_scenario_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    const-string v2, "capture_scenario_sleep_interval_inhibiter_increment"

    .line 779
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    .line 780
    const-string v0, "capture_scenario_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkNUpdatePowerOptimizationInhibitorIncrement(D)V

    .line 782
    :cond_4
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    .line 784
    :cond_5
    return-void
.end method

.method public static processPrimeTimeEnd(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    .line 791
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureCount(I)V

    .line 792
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepInterval(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMin(J)V

    .line 793
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepIntervalMax(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMax(J)V

    .line 794
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ltv/alphonso/utils/PreferencesManager;->getCaptureScenarioSleepIntervalLivetv(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervaLivetv(J)V

    .line 795
    return-void
.end method

.method public static processSetup(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v1, "debug_logs_flag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "debug_logs_flag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->processDebugFlag(Z)V

    .line 49
    :cond_0
    invoke-static {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processSetupParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)I

    move-result v0

    .line 51
    .local v0, "msgType":I
    sparse-switch v0, :sswitch_data_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 54
    :sswitch_0
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_1

    .line 55
    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v2, "AudioCaptureServiceSetup already done. No change in new Setup. Ignore!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-static {p0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0

    .line 63
    :sswitch_2
    invoke-static {p0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableAudioUpload(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0

    .line 67
    :sswitch_3
    invoke-static {p0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processEnableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0

    .line 71
    :sswitch_4
    invoke-static {p0}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processDisableRecordTimeouts(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v1, "Interrupted"

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->stopRecording(Ljava/lang/String;)V

    .line 77
    const-string v1, "device_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mDeviceId:Ljava/lang/String;

    .line 79
    const-string v1, "acr_db_filename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "acr_db_filename"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrDBFilename(Ljava/lang/String;)V

    .line 82
    :cond_2
    const-string v1, "record_timeouts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setRecordTimeouts(Z)V

    .line 83
    const-string v1, "audio_file_upload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUpload(Z)V

    .line 84
    const-string v1, "audio_file_upload_timedout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAudioFileUploadTimedout(Z)V

    .line 85
    const-string v1, "acr_shift"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrShift(B)V

    .line 86
    const-string v1, "acr_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setAcrMode(I)V

    .line 87
    const-string v1, "power_optimization_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setPowerOptimizationMode(Z)V

    .line 88
    invoke-static {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->processHistoryFlagUpdate(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V

    .line 90
    sget-boolean v1, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v2, "AudioCaptureServiceSetup SUCCESS!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static processSetupParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)I
    .locals 2
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 106
    iget-byte v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrShift:B

    const-string v1, "acr_shift"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAcrMode:I

    const-string v1, "acr_type"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    const-string v1, "power_optimization_mode"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_4

    const-string v0, "acr_db_filename"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkAudioFileUploadFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkAudioFileUploadTimedoutFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkRecordTimeoutsFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkHistoryFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkAudioFileUploadFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkRecordTimeoutsFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAudioFileUpload:Z

    if-eqz v0, :cond_1

    .line 123
    const/16 v0, 0xe

    goto :goto_0

    .line 125
    :cond_1
    const/16 v0, 0xd

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkAudioFileUploadFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 129
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->checkRecordTimeoutsFlagChange(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecordTimeouts:Z

    if-eqz v0, :cond_3

    .line 132
    const/16 v0, 0x10

    goto :goto_0

    .line 134
    :cond_3
    const/16 v0, 0xf

    goto :goto_0

    .line 138
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static processUpdateDeviceIdParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 747
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mDeviceId:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    invoke-virtual {v0, p1}, Ltv/alphonso/audiocaptureservice/RecorderThread;->updateDeviceIdParams(Landroid/os/Bundle;)V

    .line 751
    :cond_0
    return-void
.end method

.method public static processUpdateParams(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 236
    const-string v0, "capture_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureDuration:J

    const-string v2, "capture_duration"

    .line 237
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "capture_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureDuration(J)V

    .line 240
    :cond_0
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    const-string v2, "capture_sleep_interval"

    .line 241
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 242
    const-string v0, "capture_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureSleepTime(J)V

    .line 244
    :cond_1
    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrimeTime:Z

    if-nez v0, :cond_7

    .line 247
    :cond_2
    const-string v0, "capture_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureCount:I

    const-string v1, "capture_count"

    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 249
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v1, "capture_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setCaptureCount(Landroid/content/Context;I)V

    .line 251
    :cond_3
    const-string v0, "capture_scenario_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMin:J

    const-string v2, "capture_scenario_sleep_interval"

    .line 252
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 253
    const-string v0, "capture_scenario_sleep_interval"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMin(J)V

    .line 255
    :cond_4
    const-string v0, "capture_scenario_sleep_interval_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalMax:J

    const-string v2, "capture_scenario_sleep_interval_max"

    .line 256
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 257
    const-string v0, "capture_scenario_sleep_interval_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervalMax(J)V

    .line 259
    :cond_5
    const-string v0, "capture_scenario_sleep_interval_livetv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepIntervalLivetv:J

    const-string v2, "capture_scenario_sleep_interval_livetv"

    .line 260
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 261
    const-string v0, "capture_scenario_sleep_interval_livetv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setCaptureScenarioSleepIntervaLivetv(J)V

    .line 263
    :cond_6
    const-string v0, "capture_scenario_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExpInc:D

    const-string v2, "capture_scenario_sleep_interval_inhibiter_increment"

    .line 264
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    .line 265
    const-string v0, "capture_scenario_sleep_interval_inhibiter_increment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->setPowerOptimizationInhibitorIncrement(D)V

    .line 271
    :cond_7
    const-string v0, "capture_scenario_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioCount:I

    const-string v1, "capture_scenario_count"

    .line 272
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 273
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v1, "capture_scenario_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setCaptureScenarioCount(Landroid/content/Context;I)V

    .line 275
    :cond_8
    const-string v0, "audio_pre_buffer_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v0, v0, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    const-string v1, "audio_pre_buffer_size"

    .line 276
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 277
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v1, "audio_pre_buffer_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setPreBufferSize(Landroid/content/Context;I)V

    .line 278
    :cond_9
    return-void
.end method

.method public static releaseWakeLock(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 1
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    .line 599
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mWl:Landroid/os/PowerManager$WakeLock;

    .line 605
    :cond_0
    return-void
.end method

.method public static resetStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V
    .locals 3
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 371
    iput v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFailures:I

    .line 372
    iput v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mLocalAcrSuccesses:I

    .line 373
    iput v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mServerAcrSuccesses:I

    .line 374
    iput v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mSplitAcrSuccesses:I

    .line 375
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    .line 376
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    .line 377
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    .line 378
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxLocalAcrCaptureDuration:J

    .line 379
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxServerAcrCaptureDuration:J

    .line 380
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxSplitAcrCaptureDuration:J

    .line 381
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    .line 382
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    .line 383
    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    .line 384
    return-void
.end method

.method public static sendAudioClipInfo(Ltv/alphonso/audiocaptureservice/AudioCaptureService;Landroid/content/Context;Ltv/alphonso/audiocaptureservice/CaptureEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureEntity"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;
    .param p3, "devId"    # Ljava/lang/String;
    .param p4, "resultSuffix"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v2, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "split"

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "dual"

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    const-string v3, "server"

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    :cond_0
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_1

    .line 302
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sending Content View update for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " acr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v1, "params":Landroid/os/Bundle;
    invoke-virtual {p2}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getCaptureInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 310
    const-string v2, "data"

    invoke-virtual {p2}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getCaptureInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "audio_file_upload"

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->isAudioFileUpload()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    :goto_1
    const-string v2, "device_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "start_time"

    iget-object v3, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "acr_type"

    iget-object v3, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "result_suffix"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "content_id"

    iget-wide v4, p2, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mContentId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 324
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAlphonsoClient:Ltv/alphonso/alphonsoclient/AlphonsoClient;

    iget-object v2, v2, Ltv/alphonso/alphonsoclient/AlphonsoClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 315
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    const-string v2, "audio_file_upload"

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->isAudioFileUploadTimedout()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static sendScenariosCompleteNotification()V
    .locals 2

    .prologue
    .line 703
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    if-eqz v0, :cond_1

    .line 705
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 706
    sget-object v0, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v1, "Sending ACS_SCENARIOS_COMPLETE_NOTIFICATION message to AlphonsoService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    iget-object v0, v0, Ltv/alphonso/service/AlphonsoService;->mHandler:Ltv/alphonso/service/AlphonsoService$MsgHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ltv/alphonso/service/AlphonsoService$MsgHandler;->sendEmptyMessage(I)Z

    .line 710
    :cond_1
    return-void
.end method

.method public static startCaptureScenarioPreBufferingPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V
    .locals 6
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "result"    # B

    .prologue
    .line 514
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_0

    .line 515
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v3, "Starting capture pre-buffering prepare timer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingPOState:Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 519
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureScenarioSleepInterval:J

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 521
    .local v0, "prepareTime":J
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_1

    .line 522
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting capture prepare timer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    .line 526
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    new-instance v3, Ltv/alphonso/audiocaptureservice/ACSUtils$1;

    invoke-direct {v3, p0}, Ltv/alphonso/audiocaptureservice/ACSUtils$1;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 534
    return-void
.end method

.method public static startCaptureScenarioSleepIntervalTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V
    .locals 12
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "result"    # B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 480
    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mRecorderThread:Ltv/alphonso/audiocaptureservice/RecorderThread;

    iget v5, v5, Ltv/alphonso/audiocaptureservice/RecorderThread;->mPreBufferSize:I

    if-lez v5, :cond_1

    .line 482
    invoke-static {p0, p1}, Ltv/alphonso/audiocaptureservice/ACSUtils;->startCaptureScenarioPreBufferingPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    sget-boolean v5, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v5, :cond_2

    .line 487
    sget-object v5, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    const-string v8, "Starting capture sleep timer."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_2
    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v5, v5, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSSleepingPOState:Ltv/alphonso/audiocaptureservice/ACSSleepingPO;

    iput-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 491
    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 492
    .local v2, "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const-class v8, Ltv/alphonso/service/AlphonsoService;

    invoke-direct {v3, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "AUDIO_CAPTURE_SERVICE_SLEEP_TIMER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v5, "tv.alphonso.service.AlphonsoService.EVENT"

    const/4 v8, 0x5

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v5, v10, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 497
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->computePowerOptimizationSleepTimerValue()J

    move-result-wide v0

    .line 498
    .local v0, "actualSleepTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v6, v8, v0

    .line 499
    .local v6, "realTimeExpiry":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v5, v8, :cond_3

    .line 500
    invoke-virtual {v2, v10, v6, v7, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 504
    :goto_1
    sget-boolean v5, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v5, :cond_0

    .line 505
    sget-object v5, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Started capture scenario sleep timer of duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and mPowerOptimizationExp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimizationExp:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {v2, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public static startPrepareTimer(Ltv/alphonso/audiocaptureservice/AudioCaptureService;J)V
    .locals 7
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "extraSleepTimeSecs"    # J

    .prologue
    .line 539
    iget-boolean v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPowerOptimzationMode:Z

    if-eqz v2, :cond_2

    .line 540
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingPOState:Ltv/alphonso/audiocaptureservice/ACSPreparingPO;

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    .line 544
    :goto_0
    const-wide/16 v0, 0x0

    .line 545
    .local v0, "prepareTime":J
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v2, p1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 548
    :cond_0
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCapturePrepareTime:J

    .line 555
    :goto_1
    sget-boolean v2, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v2, :cond_1

    .line 556
    sget-object v2, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting capture prepare timer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    .line 560
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mPrepareTimer:Ljava/util/Timer;

    new-instance v3, Ltv/alphonso/audiocaptureservice/ACSUtils$2;

    invoke-direct {v3, p0}, Ltv/alphonso/audiocaptureservice/ACSUtils$2;-><init>(Ltv/alphonso/audiocaptureservice/AudioCaptureService;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 570
    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->prepareRecorder()V

    .line 571
    return-void

    .line 542
    .end local v0    # "prepareTime":J
    :cond_2
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFSM:Ltv/alphonso/audiocaptureservice/ACSFSM;

    iget-object v2, v2, Ltv/alphonso/audiocaptureservice/ACSFSM;->mACSPreparingState:Ltv/alphonso/audiocaptureservice/ACSPreparing;

    iput-object v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCurrentState:Ltv/alphonso/audiocaptureservice/ACSState;

    goto :goto_0

    .line 552
    .restart local v0    # "prepareTime":J
    :cond_3
    iget-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureSleepTime:J

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    goto :goto_1
.end method

.method public static updateStats(Ltv/alphonso/audiocaptureservice/AudioCaptureService;B)V
    .locals 12
    .param p0, "acsInstance"    # Ltv/alphonso/audiocaptureservice/AudioCaptureService;
    .param p1, "result"    # B

    .prologue
    const-wide/16 v10, 0x2

    const-wide/16 v8, 0x0

    .line 412
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 413
    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mFailures:I

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getAcrType()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "acrType":Ljava/lang/String;
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getEndTime()J

    move-result-wide v4

    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getStartTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 419
    .local v2, "captureTime":J
    const-string v1, "ACR_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 421
    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mLocalAcrSuccesses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mLocalAcrSuccesses:I

    .line 423
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_4

    .line 424
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    .line 428
    :goto_1
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxLocalAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 429
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxLocalAcrCaptureDuration:J

    .line 431
    :cond_2
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_3

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 433
    :cond_3
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinLocalAcrCaptureDuration:J

    goto :goto_0

    .line 426
    :cond_4
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    add-long/2addr v4, v2

    div-long/2addr v4, v10

    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageLocalAcrCaptureDuration:J

    goto :goto_1

    .line 435
    :cond_5
    const-string v1, "ACR_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 437
    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mServerAcrSuccesses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mServerAcrSuccesses:I

    .line 439
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_8

    .line 440
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    .line 444
    :goto_2
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxServerAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_6

    .line 445
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxServerAcrCaptureDuration:J

    .line 447
    :cond_6
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_7

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 449
    :cond_7
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinServerAcrCaptureDuration:J

    goto :goto_0

    .line 442
    :cond_8
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    add-long/2addr v4, v2

    div-long/2addr v4, v10

    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageServerAcrCaptureDuration:J

    goto :goto_2

    .line 451
    :cond_9
    const-string v1, "ACR_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 453
    iget v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mSplitAcrSuccesses:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mSplitAcrSuccesses:I

    .line 455
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_c

    .line 456
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    .line 460
    :goto_3
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxSplitAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_a

    .line 461
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMaxSplitAcrCaptureDuration:J

    .line 463
    :cond_a
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_b

    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 465
    :cond_b
    iput-wide v2, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mMinSplitAcrCaptureDuration:J

    goto/16 :goto_0

    .line 458
    :cond_c
    iget-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    add-long/2addr v4, v2

    div-long/2addr v4, v10

    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mAverageSplitAcrCaptureDuration:J

    goto :goto_3

    .line 469
    :cond_d
    sget-object v1, Ltv/alphonso/audiocaptureservice/ACSUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid acr-type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v5}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->getAcrType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.class Ltv/alphonso/audiocaptureservice/CaptureEntity;
.super Ljava/lang/Object;
.source "CaptureEntity.java"


# static fields
.field public static final CAPTURE_STATE_NULL:B = 0x0t

.field public static final CAPTURE_STATE_RUNNING:B = 0x1t

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mAcrType:Ljava/lang/String;

.field public mAcrTypeForAudioFilename:Ljava/lang/String;

.field public mBrand:Ljava/lang/String;

.field public mCaptureId:I

.field public mCaptureInfo:Ljava/lang/String;

.field public mCaptureTitle:Ljava/lang/String;

.field public mChannel:I

.field public mContentId:J

.field public mEndTime:J

.field public mLogoFileName:Ljava/lang/String;

.field public mStartTime:J

.field public mStartTimeYYMMDD:Ljava/lang/String;

.field public mStartTimestampGMT:J

.field public mState:B

.field public mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "profile_adicon.png"

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setCaptureInfo(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setState(B)V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mContentId:J

    .line 36
    return-void
.end method

.method public constructor <init>(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
    .locals 2
    .param p1, "entity"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "profile_adicon.png"

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrType:Ljava/lang/String;

    .line 44
    :cond_0
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureInfo:Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureTitle:Ljava/lang/String;

    .line 50
    :cond_2
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 51
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    .line 53
    :cond_3
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 54
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    .line 56
    :cond_4
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 57
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    .line 59
    :cond_5
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 60
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    .line 62
    :cond_6
    iget v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    iput v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    .line 63
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTime:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTime:J

    .line 64
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mEndTime:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mEndTime:J

    .line 65
    iget-byte v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mState:B

    iput-byte v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mState:B

    .line 66
    iget-object v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    .line 67
    iget v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mChannel:I

    iput v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mChannel:I

    .line 68
    iget-wide v0, p1, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mContentId:J

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mContentId:J

    .line 69
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setCaptureInfo(Ljava/lang/String;)V

    .line 117
    const-string v0, "profile_adicon.png"

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setLogoFileName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v2}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setCaptureId(I)V

    .line 119
    invoke-virtual {p0, v2}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setState(B)V

    .line 120
    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mBrand:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    .line 123
    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mContentId:J

    .line 124
    iput-object v1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mToken:Ljava/lang/String;

    .line 125
    iput-wide v4, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    .line 126
    return-void
.end method

.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrType:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    return v0
.end method

.method public getCaptureInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mEndTime:J

    return-wide v0
.end method

.method public getLogoFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTime:J

    return-wide v0
.end method

.method public getState()B
    .locals 1

    .prologue
    .line 83
    iget-byte v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mState:B

    return v0
.end method

.method public setAcrType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAcrType"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrType:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setCaptureId(I)V
    .locals 0
    .param p1, "mCaptureId"    # I

    .prologue
    .line 172
    iput p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureId:I

    .line 173
    return-void
.end method

.method public setCaptureInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "captureInfo"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureInfo:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCaptureTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCaptureTitle"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mCaptureTitle:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setEndTime(J)V
    .locals 3
    .param p1, "mEndTime"    # J

    .prologue
    .line 150
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mEndTime:J

    .line 153
    return-void
.end method

.method public setLogoFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLogoFileName"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mLogoFileName:Ljava/lang/String;

    .line 101
    :cond_0
    return-void
.end method

.method public setStartTime(J)V
    .locals 3
    .param p1, "mStartTime"    # J

    .prologue
    .line 136
    sget-boolean v0, Ltv/alphonso/audiocaptureservice/AudioCaptureService;->debug:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iput-wide p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTime:J

    .line 139
    return-void
.end method

.method public setState(B)V
    .locals 0
    .param p1, "state"    # B

    .prologue
    .line 88
    iput-byte p1, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mState:B

    .line 89
    return-void
.end method

.method public setup(I)V
    .locals 2
    .param p1, "captureId"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setState(B)V

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setStartTime(J)V

    .line 108
    invoke-virtual {p0, p1}, Ltv/alphonso/audiocaptureservice/CaptureEntity;->setCaptureId(I)V

    .line 109
    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStampYYMMDD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimeYYMMDD:Ljava/lang/String;

    .line 110
    invoke-static {}, Ltv/alphonso/utils/Utils;->getTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mStartTimestampGMT:J

    .line 111
    return-void
.end method

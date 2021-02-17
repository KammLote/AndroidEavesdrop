.class public Ltv/alphonso/audiocaptureservice/DualACR;
.super Ltv/alphonso/audiocaptureservice/SplitACR;
.source "DualACR.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLocalAudioFpToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Ltv/alphonso/audiocaptureservice/DualACR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/DualACR;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/alphonso/audiocaptureservice/SplitACR;-><init>()V

    .line 9
    const-string v0, "LocalFP"

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mLocalAudioFpToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAcrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "dual"

    return-object v0
.end method

.method public send([BII)B
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "numBytes"    # I
    .param p3, "sampleRate"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "fingerPrint":[B
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mLocalAudioMatchingToken:[Ljava/lang/String;

    iget v3, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mCurrentTokenIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, p1, p2}, Ltv/alphonso/audiocaptureservice/DualACR;->acrFingerprintOctet(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0, v0, p3}, Ltv/alphonso/audiocaptureservice/DualACR;->sendFingerprint([BI)V

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mLocalAudioFpToken:Ljava/lang/String;

    array-length v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ltv/alphonso/audiocaptureservice/DualACR;->acrLookupFingerprint(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Ltv/alphonso/audiocaptureservice/DualACR;->processResult(Ljava/lang/String;)B

    move-result v2

    .line 48
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V
    .locals 2
    .param p1, "captureInstance"    # Ltv/alphonso/audiocaptureservice/CaptureEntity;

    .prologue
    .line 13
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mLocalAudioFpToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/DualACR;->acrTokenNew(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Ltv/alphonso/audiocaptureservice/DualACR;->TAG:Ljava/lang/String;

    const-string v1, "Error from acrTokenNew()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    invoke-super {p0, p1}, Ltv/alphonso/audiocaptureservice/SplitACR;->start(Ltv/alphonso/audiocaptureservice/CaptureEntity;)V

    .line 17
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mCaptureInstance:Ltv/alphonso/audiocaptureservice/CaptureEntity;

    invoke-virtual {p0}, Ltv/alphonso/audiocaptureservice/DualACR;->getAcrType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/alphonso/audiocaptureservice/CaptureEntity;->mAcrTypeForAudioFilename:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Ltv/alphonso/audiocaptureservice/DualACR;->mLocalAudioFpToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltv/alphonso/audiocaptureservice/DualACR;->acrTokenDestroy(Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Ltv/alphonso/audiocaptureservice/SplitACR;->stop(Ljava/lang/String;)V

    .line 26
    return-void
.end method

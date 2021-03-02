.class public Ltv/alphonso/audiocaptureservice/FifoBuffer;
.super Ljava/lang/Object;
.source "FifoBuffer.java"


# static fields
.field public static final FIFO_BUFFER_SIZE:I = 0x3e800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mByteArray:[B

.field private mCurrentPosition:I

.field private mSizeLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Ltv/alphonso/audiocaptureservice/FifoBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const v0, 0x3e800

    new-array v0, v0, [B

    iput-object v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mByteArray:[B

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 13
    const v0, 0xfa00

    iput v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    new-array v0, v1, [B

    .line 61
    .local v0, "finalArray":[B
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mByteArray:[B

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v3, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 66
    return-object v0
.end method

.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    return v0
.end method

.method public push([BI)V
    .locals 5
    .param p1, "array"    # [B
    .param p2, "numBytes"    # I

    .prologue
    const/4 v4, 0x0

    .line 42
    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    add-int/2addr v1, p2

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    if-le v1, v2, :cond_0

    .line 44
    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    add-int/2addr v1, p2

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    sub-int v0, v1, v2

    .line 45
    .local v0, "popSize":I
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mByteArray:[B

    iget-object v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mByteArray:[B

    iget v3, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    sub-int/2addr v1, v0

    iput v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 51
    .end local v0    # "popSize":I
    :cond_0
    iget-object v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mByteArray:[B

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    invoke-static {p1, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    add-int/2addr v1, p2

    iput v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 56
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 34
    iput p1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 35
    return-void
.end method

.method public setSizeLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const v3, 0x3e800

    .line 17
    if-le p1, v3, :cond_0

    .line 19
    sget-object v0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new size limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Ignoring new limit."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void

    .line 23
    :cond_0
    iput p1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    .line 25
    iget v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    iget v1, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    if-le v0, v1, :cond_1

    .line 26
    iget v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    iput v0, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    .line 29
    :cond_1
    sget-object v0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSizeLimit(): mSizeLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mSizeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mCurrentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/audiocaptureservice/FifoBuffer;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

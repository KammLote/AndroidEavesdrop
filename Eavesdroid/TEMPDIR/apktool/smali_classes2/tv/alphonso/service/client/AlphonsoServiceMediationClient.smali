.class public Ltv/alphonso/service/client/AlphonsoServiceMediationClient;
.super Ljava/lang/Object;
.source "AlphonsoServiceMediationClient.java"


# static fields
.field public static ADMOB:I

.field public static ALL:I

.field public static MOPUB:I

.field public static NONE:I

.field private static final TAG:Ljava/lang/String;

.field public static singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIdentificationReceiver:Landroid/content/BroadcastReceiver;

.field public mInitReceiver:Landroid/os/ResultReceiver;

.field public mLabel:Ljava/lang/String;

.field private mLastReceivedResult:Landroid/os/Bundle;

.field public mResultUseMask:I

.field public mServerParameter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    .line 19
    const/4 v0, 0x0

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->NONE:I

    .line 20
    const/4 v0, 0x1

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->ADMOB:I

    .line 21
    const/4 v0, 0x2

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->MOPUB:I

    .line 22
    const/16 v0, 0xff

    sput v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->ALL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "serverParameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mLabel:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mServerParameter:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    .line 29
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mIdentificationReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    sget v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->ALL:I

    iput v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    .line 32
    iput-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mLastReceivedResult:Landroid/os/Bundle;

    .line 39
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mLabel:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mServerParameter:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getResultReceiver()Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient$1;-><init>(Ltv/alphonso/service/client/AlphonsoServiceMediationClient;Landroid/os/Handler;)V

    iput-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    .line 126
    :cond_0
    iget-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThisMyInitReceiver(Landroid/os/ResultReceiver;)Z
    .locals 1
    .param p0, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 144
    invoke-static {}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->singletonObject:Ltv/alphonso/service/client/AlphonsoServiceMediationClient;

    iget-object v0, v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mInitReceiver:Landroid/os/ResultReceiver;

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanupAlphonsoService()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    const-string v2, "Calling ASAPI.stop()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->stop()V

    .line 84
    invoke-static {}, Ltv/alphonso/service/client/ASAPI;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startAlphonsoService()V
    .locals 5

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    const-string v2, "Calling ASAPI.init()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mServerParameter:Ljava/lang/String;

    iget-object v1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0}, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ltv/alphonso/service/client/ASAPI;->init(Ljava/lang/String;Landroid/app/Activity;Landroid/os/ResultReceiver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 132
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mLastReceivedResult:Landroid/os/Bundle;

    .line 138
    sget v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->NONE:I

    iput v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    .line 139
    return-void
.end method

.method public useLastReceivedResult(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "usageBitField"    # I

    .prologue
    .line 48
    iget v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    or-int/2addr v0, p1

    iput v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    .line 54
    sget-object v0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current mResultUseMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mResultUseMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Ltv/alphonso/service/client/AlphonsoServiceMediationClient;->mLastReceivedResult:Landroid/os/Bundle;

    goto :goto_0
.end method

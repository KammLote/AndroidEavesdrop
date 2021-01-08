.class public Lcom/unity3d/ads/android/UnityAdsDeviceLog;
.super Ljava/lang/Object;
.source "UnityAdsDeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;,
        Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field public static final LOGLEVEL_DEBUG:I = 0x8

.field private static final LOGLEVEL_ERROR:I = 0x1

.field public static final LOGLEVEL_INFO:I = 0x4

.field private static final LOGLEVEL_WARNING:I = 0x2

.field private static LOG_DEBUG:Z

.field private static LOG_ERROR:Z

.field private static LOG_INFO:Z

.field private static LOG_WARNING:Z

.field private static final _deviceLogLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;",
            "Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static _previousMsg:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

.field private static _showStatusMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 11
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 12
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 14
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "i"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "d"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "w"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    const-string v3, "e"

    invoke-direct {v2, v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildShowStatusMessages()V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    .line 216
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "Unity Ads is ready to show ads"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "not initialized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->WEBAPP_NOT_INITIALIZED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "webapp not initialized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->SHOWING_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "already showing ads"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_INTERNET:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "no internet connection available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->NO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "no ads are available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->ZERO_ADS:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "zero ads available"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->VIDEO_NOT_CACHED:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    const-string v2, "video not cached"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    return-void
.end method

.method private static checkMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const-string p0, "DO NOT USE EMPTY MESSAGES, use UnityAdsDeviceLog.entered() instead"

    .line 148
    :cond_1
    return-object p0
.end method

.method private static createLogEntry(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    .locals 8
    .param p0, "level"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 158
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->getLogLevel(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v3

    .line 159
    .local v3, "logLevel":Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
    const/4 v2, 0x0

    .line 161
    .local v2, "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    if-eqz v3, :cond_3

    .line 163
    const/4 v4, 0x0

    .line 165
    .local v4, "markedIndex":Z
    const/4 v0, 0x0

    .local v0, "callerIndex":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 166
    aget-object v1, v5, v0

    .line 167
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    const/4 v4, 0x1

    .line 170
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/android/UnityAdsDeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    .line 175
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_1
    const/4 v1, 0x0

    .line 177
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 178
    aget-object v1, v5, v0

    .line 181
    :cond_2
    if-eqz v1, :cond_3

    .line 182
    new-instance v2, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    .end local v2    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    invoke-direct {v2, v3, p1, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;-><init>(Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 186
    .end local v0    # "callerIndex":I
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "markedIndex":Z
    .restart local v2    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    :cond_3
    return-object v2

    .line 165
    .restart local v0    # "callerIndex":I
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    .restart local v4    # "markedIndex":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 79
    const/16 v0, 0xc00

    .line 81
    .local v0, "maxDebugMsgLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7800

    if-ge v1, v2, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 96
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static entered()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 114
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static getLogLevel(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;
    .locals 1
    .param p0, "logLevel"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    .prologue
    .line 152
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static logShowStatus(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;)V
    .locals 3
    .param p0, "reason"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    .prologue
    .line 235
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_previousMsg:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    if-eq p0, v1, :cond_1

    .line 236
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->buildShowStatusMessages()V

    .line 237
    sput-object p0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_previousMsg:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    .line 238
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->_showStatusMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;->READY:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsShowMsg;

    if-eq p0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads cannot show ads: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 242
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 3
    .param p0, "newLevel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 37
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    .line 38
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 39
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 40
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 41
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 63
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 43
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 44
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 45
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 46
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 48
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 49
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 50
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 51
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 52
    :cond_2
    if-lt p0, v1, :cond_3

    .line 53
    sput-boolean v1, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 54
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 55
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 56
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0

    .line 58
    :cond_3
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 59
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 60
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 61
    sput-boolean v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->warning(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static write(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 4
    .param p0, "level"    # Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x1

    .line 120
    .local v0, "LOG_THIS_MSG":Z
    sget-object v2, Lcom/unity3d/ads/android/UnityAdsDeviceLog$1;->$SwitchMap$com$unity3d$ads$android$UnityAdsDeviceLog$UnityAdsLogLevel:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 137
    :goto_0
    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0, p1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->createLogEntry(Lcom/unity3d/ads/android/UnityAdsDeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    move-result-object v1

    .line 139
    .local v1, "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->writeToLog(Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;)V

    .line 141
    .end local v1    # "logEntry":Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;
    :cond_0
    return-void

    .line 122
    :pswitch_0
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_INFO:Z

    .line 123
    goto :goto_0

    .line 125
    :pswitch_1
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_DEBUG:Z

    .line 126
    goto :goto_0

    .line 128
    :pswitch_2
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_WARNING:Z

    .line 129
    goto :goto_0

    .line 131
    :pswitch_3
    sget-boolean v0, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->LOG_ERROR:Z

    .line 132
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static writeToLog(Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;)V
    .locals 7
    .param p0, "logEntry"    # Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;

    .prologue
    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "receivingMethod":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    const-class v2, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_0
    if-eqz v1, :cond_0

    .line 202
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/unity3d/ads/android/UnityAdsDeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :cond_0
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

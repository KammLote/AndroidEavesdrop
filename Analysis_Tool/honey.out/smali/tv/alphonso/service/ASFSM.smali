.class public Ltv/alphonso/service/ASFSM;
.super Ljava/lang/Object;
.source "ASFSM.java"


# static fields
.field public static final ACS_SCENARIOS_COMPLETE_NOTIFICATION:I = 0x25

.field public static final ADVT_DB_UPDATE:I = 0x19

.field public static final AD_ID_GENERATION:I = 0x28

.field public static final AD_ID_POLL_CONFIG:I = 0x2a

.field public static final AD_ID_POLL_TIMER_EXPIRY:I = 0x29

.field public static final ALPHONSO_CLIENT_CLEANUP_DONE:I = 0x6

.field public static final ALPHONSO_CLIENT_RIGISTRATION_RESPONSE:I = 0x9

.field public static final AUDIO_CAPTURE_SERVICE_CLEANUP_DONE:I = 0x7

.field public static final AUDIO_CAPTURE_SERVICE_SLEEP_TIMER_EXPIRY:I = 0x5

.field public static final AUDIO_FP_UPLOAD_SERVICE_CLEANUP_DONE:I = 0x8

.field public static final BIND_USER:I = 0x15

.field public static final BIND_USER_RESPONSE:I = 0x16

.field public static final CANCEL:I = 0xb

.field public static final CLEANUP:I = 0x2

.field public static final CLEAR_HISTORY:I = 0x10

.field public static final CLOCK_SYNC_CONFIG:I = 0x1c

.field public static final CLOCK_SYNC_INFO_DE_REGISTER:I = 0x1e

.field public static final CLOCK_SYNC_INFO_REGISTER:I = 0x1d

.field public static final CLOCK_SYNC_POLL_TIMER_EXPIRY:I = 0x1b

.field public static final CLOCK_SYNC_SERVER_RESPONSE:I = 0x1f

.field public static final DESTROY:I = 0x27

.field public static final DE_REGISTER_BCAST_RECEIVER:I = 0xf

.field public static final DISABLE_AUDIO_CAPTURE_UPLOAD:I = 0xd

.field public static final ENABLE_AUDIO_CAPTURE_UPLOAD:I = 0xc

.field public static final EVENT_MAX:I = 0x39

.field public static final HISTORY_REQUEST:I = 0x12

.field public static final HISTORY_RESPONSE:I = 0x13

.field public static final INIT:I = 0x1

.field public static final INIT_RESPONSE:I = 0x11

.field public static final INVALID_EVENT:I = 0x0

.field public static final LOCATION_CONFIG:I = 0x2c

.field public static final LOCATION_POLL_TIMER_EXPIRY:I = 0x2b

.field public static final MISC_FLAGS_NOTIFICATION:I = 0x22

.field public static final MISC_FLAGS_NOTIFICATION_DE_REGISTER:I = 0x21

.field public static final MISC_FLAGS_NOTIFICATION_REGISTER:I = 0x20

.field public static final NOTIFICATIONS_DE_REGISTER:I = 0x24

.field public static final NOTIFICATIONS_REGISTER:I = 0x23

.field public static final PRIME_TIME_CONFIG:I = 0x2e

.field public static final PRIME_TIME_ENTRY_1_BEGIN:I = 0x2f

.field public static final PRIME_TIME_ENTRY_1_END:I = 0x30

.field public static final PRIME_TIME_ENTRY_2_BEGIN:I = 0x31

.field public static final PRIME_TIME_ENTRY_2_END:I = 0x32

.field public static final PRIME_TIME_ENTRY_3_BEGIN:I = 0x33

.field public static final PRIME_TIME_ENTRY_3_END:I = 0x34

.field public static final PRIME_TIME_ENTRY_4_BEGIN:I = 0x35

.field public static final PRIME_TIME_ENTRY_4_END:I = 0x36

.field public static final PRIME_TIME_ENTRY_5_BEGIN:I = 0x37

.field public static final PRIME_TIME_ENTRY_5_END:I = 0x38

.field public static final PROV_CLIENT_CONFIG_REQUEST_LEASE_TIMER_EXPIRY:I = 0x3

.field public static final PROV_CLIENT_CONFIG_REQUEST_RETRY_TIMER_EXPIRY:I = 0x4

.field public static final PROV_SERVER_CONFIG_RESPONSE:I = 0x2d

.field public static final PROV_SERVER_PARAMS:I = 0x1a

.field public static final REGISTER_BCAST_RECEIVER:I = 0xe

.field public static final START:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_DEBUG_FLAG:I = 0x14

.field public static final UPDATE_ID:I = 0x26

.field public static final VIEWING_INFO_EVENT:I = 0x18

.field public static final VIEWING_INFO_SERVICE_CLEANUP_DONE:I = 0x17

.field public static final fsmEventStrings:[Ljava/lang/String;


# instance fields
.field public mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

.field public mASInitInProgressState:Ltv/alphonso/service/ASInitInProgress;

.field public mASInitedState:Ltv/alphonso/service/ASInited;

.field public mASNUllState:Ltv/alphonso/service/ASNull;

.field public mASStartedState:Ltv/alphonso/service/ASStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const-class v0, Ltv/alphonso/service/ASFSM;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    .line 72
    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INVALID_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INIT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CLEANUP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PROV_CLIENT_CONFIG_REQUEST_LEASE_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PROV_CLIENT_CONFIG_REQUEST_RETRY_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AUDIO_CAPTURE_SERVICE_SLEEP_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ALPHONSO_CLIENT_CLEANUP_DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AUDIO_CAPTURE_SERVICE_CLEANUP_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AUDIO_FP_UPLOAD_SERVICE_CLEANUP_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ALPHONSO_CLIENT_RIGISTRATION_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "START"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CANCEL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ENABLE_AUDIO_CAPTURE_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DISABLE_AUDIO_CAPTURE_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "REGISTER_BCAST_RECEIVER"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DE_REGISTER_BCAST_RECEIVER"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "INIT_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HISTORY_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HISTORY_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UPDATE_DEBUG_FLAG"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BIND_USER"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BIND_USER_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VIEWING_INFO_SERVICE_CLEANUP_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "VIEWING_INFO_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ADVT_DB_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PROV_SERVER_PARAMS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CLOCK_SYNC_POLL_TIMER"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CLOCK_SYNC_CONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CLOCK_SYNC_INFO_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CLOCK_SYNC_INFO_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CLOCK_SYNC_SERVER_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MISC_FLAGS_NOTIFICATION_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MISC_FLAGS_NOTIFICATION_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "MISC_FLAGS_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "NOTIFICATIONS_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "NOTIFICATIONS_DE_REGISTER"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ACS_SCENARIOS_COMPLETE_NOTIFICATION"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UPDATE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "DESTROY"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AD_ID_GENERATION"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "AD_ID_POLL_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "AD_ID_POLL_CONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "LOCATION_POLL_TIMER_EXPIRY"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "LOCATION_CONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "PROV_SERVER_CONFIG_RESPONSE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "PRIME_TIME_CONFIG"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PRIME_TIME_ENTRY_1_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "PRIME_TIME_ENTRY_1_END"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "PRIME_TIME_ENTRY_2_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "PRIME_TIME_ENTRY_2_END"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "PRIME_TIME_ENTRY_3_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "PRIME_TIME_ENTRY_3_END"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "PRIME_TIME_ENTRY_4_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "PRIME_TIME_ENTRY_4_END"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "PRIME_TIME_ENTRY_5_BEGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "PRIME_TIME_ENTRY_5_END"

    aput-object v2, v0, v1

    sput-object v0, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ltv/alphonso/service/AlphonsoService;)V
    .locals 1
    .param p1, "asInstance"    # Ltv/alphonso/service/AlphonsoService;

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASNUllState:Ltv/alphonso/service/ASNull;

    .line 135
    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASInitInProgressState:Ltv/alphonso/service/ASInitInProgress;

    .line 136
    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASInitedState:Ltv/alphonso/service/ASInited;

    .line 137
    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASStartedState:Ltv/alphonso/service/ASStarted;

    .line 138
    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    .line 142
    new-instance v0, Ltv/alphonso/service/ASNull;

    invoke-direct {v0}, Ltv/alphonso/service/ASNull;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASNUllState:Ltv/alphonso/service/ASNull;

    .line 143
    new-instance v0, Ltv/alphonso/service/ASInitInProgress;

    invoke-direct {v0}, Ltv/alphonso/service/ASInitInProgress;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASInitInProgressState:Ltv/alphonso/service/ASInitInProgress;

    .line 144
    new-instance v0, Ltv/alphonso/service/ASInited;

    invoke-direct {v0}, Ltv/alphonso/service/ASInited;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASInitedState:Ltv/alphonso/service/ASInited;

    .line 145
    new-instance v0, Ltv/alphonso/service/ASStarted;

    invoke-direct {v0}, Ltv/alphonso/service/ASStarted;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASStartedState:Ltv/alphonso/service/ASStarted;

    .line 146
    new-instance v0, Ltv/alphonso/service/ASCleanupInProgress;

    invoke-direct {v0}, Ltv/alphonso/service/ASCleanupInProgress;-><init>()V

    iput-object v0, p0, Ltv/alphonso/service/ASFSM;->mASCleanupInProgressState:Ltv/alphonso/service/ASCleanupInProgress;

    .line 147
    return-void
.end method


# virtual methods
.method public processEvent(Landroid/os/Message;)V
    .locals 6
    .param p1, "event"    # Landroid/os/Message;

    .prologue
    .line 152
    sget-object v0, Ltv/alphonso/service/AlphonsoService;->singletonObject:Ltv/alphonso/service/AlphonsoService;

    .line 154
    .local v0, "asInstance":Ltv/alphonso/service/AlphonsoService;
    iget v2, p1, Landroid/os/Message;->what:I

    if-lez v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x39

    if-lt v2, v3, :cond_2

    .line 157
    :cond_0
    sget-object v2, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received invalid event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "asfsm_event"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-boolean v2, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_3

    .line 165
    sget-object v2, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v4}, Ltv/alphonso/service/ASState;->getStateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    iget-boolean v2, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_4

    .line 174
    sget-object v2, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INIT from new client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/alphonso/service/ASClient;

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5}, Ltv/alphonso/service/ASClient;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_1
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onInit(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 179
    :cond_5
    iget-boolean v2, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_6

    .line 180
    sget-object v2, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INIT from known client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_6
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/alphonso/service/ASClient;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ltv/alphonso/service/ASClient;->updateMessenger(Landroid/os/Messenger;Z)V

    goto :goto_1

    .line 189
    :pswitch_2
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    const-string v3, "app_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-boolean v2, v0, Ltv/alphonso/service/AlphonsoService;->mDebug:Z

    if-eqz v2, :cond_7

    .line 191
    sget-object v2, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed client from DB. Clients-DB size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_7
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onCleanup(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 199
    :pswitch_3
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onStart(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 203
    :pswitch_4
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onCancel(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 207
    :pswitch_5
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onEnableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 211
    :pswitch_6
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onDisableAudioCaptureUpload(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 215
    :pswitch_7
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onClearHistory(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 219
    :pswitch_8
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onProvClientConfigRequestLeaseTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 223
    :pswitch_9
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onProvClientConfigRequestRetryTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 227
    :pswitch_a
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onAudioCaptureServiceSleepTimerExpiry(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 235
    :pswitch_b
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAudioCaptureServicePrimeTimeBegin(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 243
    :pswitch_c
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAudioCaptureServicePrimeTimeEnd(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 247
    :pswitch_d
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onAudioCaptureServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 251
    :pswitch_e
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onAlphonsoClientCleanupDone(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 255
    :pswitch_f
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onAudioFPUploadServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 259
    :pswitch_10
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0}, Ltv/alphonso/service/ASState;->onViewingInfoServiceCleanupDone(Ltv/alphonso/service/AlphonsoService;)V

    goto/16 :goto_0

    .line 263
    :pswitch_11
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onRegistrationResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 267
    :pswitch_12
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onHistoryRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 271
    :pswitch_13
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    const-string v3, "debug_logs_flag"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Ltv/alphonso/service/ASState;->onUpdateDebugFlagRequest(Ltv/alphonso/service/AlphonsoService;Z)V

    goto/16 :goto_0

    .line 275
    :pswitch_14
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onBindUserRequest(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 279
    :pswitch_15
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onBindUserResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 283
    :pswitch_16
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onViewingInfoEvent(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 287
    :pswitch_17
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAdvtDbUpdate(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 291
    :pswitch_18
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onProvServerParams(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 295
    :pswitch_19
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onClockSyncPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 299
    :pswitch_1a
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onClockSyncConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 303
    :pswitch_1b
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onClockSyncInfoRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 307
    :pswitch_1c
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onClockSyncInfoDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 311
    :pswitch_1d
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onClockSyncServerResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 315
    :pswitch_1e
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onMiscFlagsNotificationRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 319
    :pswitch_1f
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onMiscFlagsNotificationDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 323
    :pswitch_20
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onMiscFlagsNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 327
    :pswitch_21
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onNotificationsRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 331
    :pswitch_22
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onNotificationsDeRegister(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 335
    :pswitch_23
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onACSScenariosCompleteNotification(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 339
    :pswitch_24
    invoke-static {v0, v1}, Ltv/alphonso/service/AlphonsoServiceUtils;->updateID(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 343
    :pswitch_25
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAdIdGeneration(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 347
    :pswitch_26
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAdIdPollTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 351
    :pswitch_27
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onAdIdPollConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 355
    :pswitch_28
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onLocationPeriodicTimerExpiry(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 359
    :pswitch_29
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onLocationConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 363
    :pswitch_2a
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onProvServerConfigResponse(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 367
    :pswitch_2b
    iget-object v2, v0, Ltv/alphonso/service/AlphonsoService;->mCurrentState:Ltv/alphonso/service/ASState;

    invoke-virtual {v2, v0, v1}, Ltv/alphonso/service/ASState;->onPrimeTimeConfig(Ltv/alphonso/service/AlphonsoService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_10
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public processInvalidEvent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "event"    # I

    .prologue
    .line 378
    sget-object v0, Ltv/alphonso/service/ASFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ltv/alphonso/service/ASFSM;->fsmEventStrings:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void
.end method

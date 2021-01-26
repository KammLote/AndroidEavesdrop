1.1.1.1
:2::
123.1.41.5
eeeWWW.!!



.class public Ltv/alphonso/utils/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field public static final ACR_DB_FILENAME_DEFAULT:Ljava/lang/String; = ""

.field public static final ACR_DB_FILE_ABS_PATH_DEFAULT:Ljava/lang/String; = ""

.field public static final ACR_DB_FILE_DIR_DEFAULT:Ljava/lang/String; = ""

.field public static final ACR_DB_SERVER_NAME_DEFAULT:Ljava/lang/String; = ""

.field public static final ACR_DB_SERVER_PORT_DEFAULT:Ljava/lang/String; = ""

.field public static final ACR_INSECURE_SERVER_DEFAULT:Z = true

.field public static final ACS_ACR_MODE_DEFAULT:I = 0x0

.field public static final ACS_ACR_SHIFT_DEFAULT:I = 0x0

.field public static final ACS_AUDIO_FILE_UPLOAD_FLAG_DEFAULT:Z = true

.field public static final ACS_AUDIO_FILE_UPLOAD_TIMEDOUT_FLAG_DEFAULT:Z = true

.field public static final ACS_CAPTURE_COUNT_DEFAULT:I = 0x0

.field public static final ACS_CAPTURE_DURATION_DEFAULT:J = 0x5L

.field public static final ACS_CAPTURE_DURATION_MS_DEFAULT:J = 0x1388L

.field public static final ACS_CAPTURE_PREPARE_TIME_DEFAULT:J = 0x190L

.field public static final ACS_CAPTURE_SCENARIO_COUNT_DEFAULT:I = 0x0

.field public static final ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_DEFAULT:J = 0x0L

.field public static final ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_INHIBITER_INCREMENT_DEFAULT:F = 0.5f

.field public static final ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_LIVETV_MATCH_DEFAULT:J = 0xcL

.field public static final ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_MAX_DEFAULT:J = 0x4b0L

.field public static final ACS_CAPTURE_SLEEP_TIME_DEFAULT:J = 0xaL

.field public static final ACS_EVENING_PRIME_TIME_BEGIN_DEFAULT:Ljava/lang/String; = "19:00"

.field public static final ACS_EVENING_PRIME_TIME_END_DEFAULT:Ljava/lang/String; = "22:00"

.field public static final ACS_MORNING_PRIME_TIME_BEGIN_DEFAULT:Ljava/lang/String; = "06:00"

.field public static final ACS_MORNING_PRIME_TIME_END_DEFAULT:Ljava/lang/String; = "09:00"

.field public static final ACS_POWER_OPTIMIZATION_MODE_DEFAULT:Z = false

.field public static final ACS_PRE_BUFFER_SIZE_DEFAULT:I = 0xfa0

.field public static final ACS_RECORD_TIMEOUTS_FLAG_DEFAULT:Z = false

.field public static final ADVERTISING_ID_DEFAULT:Ljava/lang/String; = ""

.field public static final ADVT_DB_SERVER_NAME_DEFAULT:Ljava/lang/String; = ""

.field public static final ADVT_DB_SERVER_PORT_DEFAULT:Ljava/lang/String; = ""

.field public static final ADVT_INSECURE_SERVER_DEFAULT:Z = true

.field public static final AD_ID_POLL_DURATION_DEFAULT:I = 0x708

.field public static final ANDROID_ID_DEFAULT:Ljava/lang/String; = ""

.field private static final CLIENT_PREF_NAME:Ljava/lang/String; = "alphonso_client"

.field public static final CLOCK_SKEW_INSECURE_SERVER_DEFAULT:Z = true

.field public static final CLOCK_SKEW_SERVER_NAME_DEFAULT:Ljava/lang/String; = "api.alphonso.tv"

.field public static final CLOCK_SKEW_SERVER_PORT_DEFAULT:Ljava/lang/String; = "4440"

.field public static final CLOCK_SYNC_APPLY_FP_DEFAULT:Z = true

.field public static final CLOCK_SYNC_POLL_INTERVAL_DEFAULT:I = 0x12c

.field public static final CLOCK_SYNC_SAVED_ITERATIONS_DEFAULT:I = 0xa

.field public static final DB_MAX_RECORDS_DEFAULT:I = 0x64

.field public static final DEBUG_LOGS_FLAG_DEFAULT:Z = false

.field public static final DEBUG_SCREEN_FLAG_DEFAULT:Z = false

.field public static final DEVICE_ID_DEFAULT:Ljava/lang/String; = ""

.field public static final FB_ID_DEFAULT:Ljava/lang/String; = ""

.field public static final FB_TOKEN_DEFAULT:Ljava/lang/String; = ""

.field public static final HISTORY_FLAG_DEFAULT:Z = true

.field public static final KEY_ACR_DB_FILENAME:Ljava/lang/String; = "acr_db_filename"

.field public static final KEY_ACR_DB_FILE_ABS_PATH:Ljava/lang/String; = "acr_db_file_abs_path"

.field public static final KEY_ACR_DB_FILE_DIR:Ljava/lang/String; = "acr_db_file_dir"

.field public static final KEY_ACR_DB_SERVER_NAME:Ljava/lang/String; = "acr_db_server_name"

.field public static final KEY_ACR_DB_SERVER_PORT:Ljava/lang/String; = "acr_db_server_port"

.field public static final KEY_ACR_INSECURE_SERVER:Ljava/lang/String; = "acr_db_insecure_server"

.field public static final KEY_ACS_ACR_MODE:Ljava/lang/String; = "acr_mode"

.field public static final KEY_ACS_ACR_SHIFT:Ljava/lang/String; = "acr_shift"

.field public static final KEY_ACS_AUDIO_FILE_UPLOAD_FLAG:Ljava/lang/String; = "audio_file_upload_flag"

.field public static final KEY_ACS_AUDIO_FILE_UPLOAD_TIMEDOUT_FLAG:Ljava/lang/String; = "audio_file_upload_timedout_flag"

.field public static final KEY_ACS_CAPTURE_COUNT:Ljava/lang/String; = "capture_count"

.field public static final KEY_ACS_CAPTURE_DURATION:Ljava/lang/String; = "capture_duration"

.field public static final KEY_ACS_CAPTURE_DURATION_MS:Ljava/lang/String; = "capture_duration_ms"

.field public static final KEY_ACS_CAPTURE_PREPARE_TIME:Ljava/lang/String; = "capture_prepare_time"

.field public static final KEY_ACS_CAPTURE_SCENARIO_COUNT:Ljava/lang/String; = "capture_scenario_count"

.field public static final KEY_ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL:Ljava/lang/String; = "capture_scenario_sleep_interval"

.field public static final KEY_ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_INHIBITER_INCREMENT:Ljava/lang/String; = "capture_scenario_sleep_inhibiter_increment"

.field public static final KEY_ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_LIVETV_MATCH:Ljava/lang/String; = "capture_scenario_sleep_interval_livetv_match"

.field public static final KEY_ACS_CAPTURE_SCENARIO_SLEEP_INTERVAL_MAX:Ljava/lang/String; = "capture_scenario_sleep_interval_max"

.field public static final KEY_ACS_CAPTURE_SLEEP_TIME:Ljava/lang/String; = "capture_sleep_time"

.field public static final KEY_ACS_EVENING_PRIME_TIME_BEGIN:Ljava/lang/String; = "evening_prime_time_begin"

.field public static final KEY_ACS_EVENING_PRIME_TIME_END:Ljava/lang/String; = "evening_prime_time_end"

.field public static final KEY_ACS_MORNING_PRIME_TIME_BEGIN:Ljava/lang/String; = "evening_prime_time_begin"

.field public static final KEY_ACS_MORNING_PRIME_TIME_END:Ljava/lang/String; = "evening_prime_time_end"

.field public static final KEY_ACS_POWER_OPTIMIZATION_MODE:Ljava/lang/String; = "capture_power_optimization_mode"

.field public static final KEY_ACS_PRE_BUFFER_SIZE:Ljava/lang/String; = "capture_prebuffer_size"

.field public static final KEY_ACS_RECORD_TIMEOUTS_FLAG:Ljava/lang/String; = "record_timeouts_flag"

.field public static final KEY_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field public static final KEY_ADVT_DB_SERVER_NAME:Ljava/lang/String; = "advt_db_server_name"

.field public static final KEY_ADVT_DB_SERVER_PORT:Ljava/lang/String; = "advt_db_server_port"

.field public static final KEY_ADVT_INSECURE_SERVER:Ljava/lang/String; = "advt_db_insecure_server"

.field public static final KEY_AD_ID_POLL_DURATION:Ljava/lang/String; = "ad_id_poll_duration"

.field public static final KEY_CLOCK_SKEW_INSECURE_SERVER:Ljava/lang/String; = "clock_skew_insecure_server"

.field public static final KEY_CLOCK_SKEW_SERVER_NAME:Ljava/lang/String; = "clock_skew_server_name"

.field public static final KEY_CLOCK_SKEW_SERVER_PORT:Ljava/lang/String; = "clock_skew_server_port"

.field public static final KEY_CLOCK_SYNC_APPLY_FP:Ljava/lang/String; = "clock_sync_apply_fp"

.field public static final KEY_CLOCK_SYNC_POLL_INTERVAL:Ljava/lang/String; = "clock_sync_poll_interval"

.field public static final KEY_CLOCK_SYNC_SAVED_ITERATIONS:Ljava/lang/String; = "clock_sync_saved_iterations"

.field public static final KEY_DB_MAX_RECORDS:Ljava/lang/String; = "db_max_records"

.field public static final KEY_DEBUG_LOGS_FLAG:Ljava/lang/String; = "debug_logs_flag"

.field public static final KEY_DEBUG_SCREEN_FLAG:Ljava/lang/String; = "debug_screen_flag"

.field public static final KEY_HISTORY_FLAG:Ljava/lang/String; = "history_flag"

.field public static final KEY_LIMIT_AD_TRACKING_FLAG:Ljava/lang/String; = "limit_ad_tracking_flag"

.field public static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field public static final KEY_LOCATION_ALTITUDE:Ljava/lang/String; = "location_altitude"

.field public static final KEY_LOCATION_BEARING:Ljava/lang/String; = "location_bearing"

.field public static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "location_latitude"

.field public static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "location_longitude"

.field public static final KEY_LOCATION_POLL_INTERVAL:Ljava/lang/String; = "location_poll_interval"

.field public static final KEY_LOCATION_PROVIDER:Ljava/lang/String; = "location_provider"

.field public static final KEY_LOCATION_SPEED:Ljava/lang/String; = "location_speed"

.field public static final KEY_LOCATION_TIME:Ljava/lang/String; = "location_time"

.field public static final KEY_MIC_PERMISSION_FLAG:Ljava/lang/String; = "mic_permission_flag"

.field public static final KEY_PREF_ALPHONSO_UID:Ljava/lang/String; = "alp_uid"

.field public static final KEY_PREF_ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final KEY_PREF_DEVICE_ID:Ljava/lang/String; = "dev_id"

.field public static final KEY_PREF_FB_ID:Ljava/lang/String; = "fb_id"

.field public static final KEY_PREF_FB_TOKEN:Ljava/lang/String; = "fb_access_token"

.field public static final KEY_PREF_PARTNER_ID:Ljava/lang/String; = "partner_id"

.field public static final KEY_PREF_PARTNER_TOKEN:Ljava/lang/String; = "partner_access_token"

.field public static final KEY_PREF_PROV_SERVER_DOMAIN:Ljava/lang/String; = "prov_server_domain"

.field public static final KEY_PREF_PROV_SERVER_PORT:Ljava/lang/String; = "prov_server_port"

.field public static final KEY_PREF_SERVER_DOMAIN:Ljava/lang/String; = "server_domain"

.field public static final KEY_PREF_SERVER_DOMAIN_SSL:Ljava/lang/String; = "server_domain_ssl"

.field public static final KEY_PREF_SERVER_PORT:Ljava/lang/String; = "server_port"

.field public static final KEY_PREF_SERVER_PORT_SSL:Ljava/lang/String; = "server_port_ssl"

.field public static final KEY_PREF_UUID:Ljava/lang/String; = "uuid"

.field public static final KEY_PROV_SERV_FLAG:Ljava/lang/String; = "prov_serv_flag"

.field public static final LIMIT_AD_TRACKING_FLAG_DEFAULT:Z = false

.field public static final LOCATION_ACCURACY_DEFAULT:F = 0.0f

.field public static final LOCATION_ALTITUDE_DEFAULT:F = 0.0f

.field public static final LOCATION_BEARING_DEFAULT:F = 0.0f

.field public static final LOCATION_LATITUDE_DEFAULT:F = 0.0f

.field public static final LOCATION_LONGITUDE_DEFAULT:F = 0.0f

.field public static final LOCATION_POLL_INTERVAL_DEFAULT:J = 0xfL

.field public static final LOCATION_PROVIDER_DEFAULT:Ljava/lang/String; = ""

.field public static final LOCATION_SPEED_DEFAULT:F = 0.0f

.field public static final LOCATION_TIME_DEFAULT:J = 0x0L

.field public static final MIC_PERMISSION_FLAG_DEFAULT:Z = false

.field public static final PARTNER_ID_DEFAULT:Ljava/lang/String; = ""

.field public static final PARTNER_TOKEN_DEFAULT:Ljava/lang/String; = ""

.field private static final PREF_NAME:Ljava/lang/String; = "alphonso"

.field public static final PROV_SERVER_DOMAIN_DEFAULT:Ljava/lang/String; = "http://prov.alphonso.tv"

.field public static final PROV_SERVER_PORT_DEFAULT:Ljava/lang/String; = "4000"

.field public static final SERVER_DOMAIN_DEFAULT:Ljava/lang/String; = "http://api.alphonso.tv"

.field public static final SERVER_DOMAIN_SSL_DEFAULT:Ljava/lang/String; = ""

.field public static final SERVER_PORT_DEFAULT:Ljava/lang/String; = "4430"

.field public static final SERVER_PORT_SSL_DEFAULT:Ljava/lang/String; = ""

.field public static final UUID_DEFAULT:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcrDbFileAbsPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 788
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 790
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "acr_db_file_abs_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAcrDbFileDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 774
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 776
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "acr_db_file_dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAcrDbFilename(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 762
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "acr_db_filename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAcrMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 502
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "acr_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAcrShift(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 489
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 491
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "acr_shift"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAdIdPollDuration(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "ad_id_poll_duration"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAdvertisingId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAdvtDbInsecureServer(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "advt_db_insecure_server"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getAdvtDbServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "advt_db_server_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAdvtDbServerPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "advt_db_server_port"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAlphonsoAndroidSdkAcrMode(I)I
    .locals 1
    .param p0, "provServScrMode"    # I

    .prologue
    const/4 v0, 0x4

    .line 698
    sparse-switch p0, :sswitch_data_0

    .line 721
    :goto_0
    :sswitch_0
    return v0

    .line 701
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 709
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    :sswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 717
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 698
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x63 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getAlphonsoSharedPrefrences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    const-string v0, "alphonso"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getAlphonsoUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 389
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "alp_uid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "android_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAudioFileUploadFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "audio_file_upload_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getAudioFileUploadTimedoutFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 530
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "audio_file_upload_timedout_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCaptureCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 580
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 582
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCaptureDuration(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_duration"

    const-wide/16 v2, 0x5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCaptureDurationMS(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_duration_ms"

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCapturePrepareTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 671
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 673
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_prepare_time"

    const-wide/16 v2, 0x190

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCaptureScenarioCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 593
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_scenario_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCaptureScenarioSleepInterval(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 606
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 608
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_scenario_sleep_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCaptureScenarioSleepIntervalInhibiterIncrement(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 647
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_scenario_sleep_inhibiter_increment"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getCaptureScenarioSleepIntervalLivetv(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 621
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_scenario_sleep_interval_livetv_match"

    const-wide/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCaptureScenarioSleepIntervalMax(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 634
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_scenario_sleep_interval_max"

    const-wide/16 v2, 0x4b0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getCaptureSleepTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 658
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_sleep_time"

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getClockSkewInsecureServer(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 900
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 902
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_skew_insecure_server"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getClockSkewServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 872
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 874
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_skew_server_name"

    const-string v2, "api.alphonso.tv"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClockSkewServerPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 886
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 888
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_skew_server_port"

    const-string v2, "4440"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClockSyncApplyFP(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 859
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 861
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_sync_apply_fp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getClockSyncPollInterval(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 833
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 835
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_sync_poll_interval"

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getClockSyncSavedIterations(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 846
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 848
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "clock_sync_saved_iterations"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDBMAxRecords(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 686
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "db_max_records"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDebugLogsFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 794
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 796
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "debug_logs_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getDebugScreenFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 739
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 741
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "debug_screen_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "dev_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFbAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "fb_access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFbId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "fb_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHistoryFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 807
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 809
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "history_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLimitAdTrackingFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 463
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "limit_ad_tracking_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "lastKnownLocation":Landroid/location/Location;
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1060
    new-instance v0, Landroid/location/Location;

    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1062
    .restart local v0    # "lastKnownLocation":Landroid/location/Location;
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationLatitude(Landroid/content/Context;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1063
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationLongitude(Landroid/content/Context;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 1065
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationAltitude(Landroid/content/Context;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 1066
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationAltitude(Landroid/content/Context;)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 1068
    :cond_0
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationSpeed(Landroid/content/Context;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 1069
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationSpeed(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 1071
    :cond_1
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationBearing(Landroid/content/Context;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    .line 1072
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationBearing(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 1074
    :cond_2
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationAccuracy(Landroid/content/Context;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    .line 1075
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationAccuracy(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 1077
    :cond_3
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationTime(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 1078
    invoke-static {p0}, Ltv/alphonso/utils/PreferencesManager;->getLocationTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 1081
    :cond_4
    return-object v0
.end method

.method public static getLocationAccuracy(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 991
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 993
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_accuracy"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationAltitude(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 954
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_altitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationBearing(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 978
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 980
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_bearing"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationLatitude(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 939
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 941
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationLongitude(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 926
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_longitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationPollInterval(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1085
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1087
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_poll_interval"

    const-wide/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getLocationProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1004
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1006
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_provider"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocationSpeed(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 965
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_speed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getLocationTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1018
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1020
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "location_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMicPermissionFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 820
    const-string v1, "alphonso_client"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 822
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "mic_permission_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPartnerAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "partner_access_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "partner_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPowerOptimizationMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 726
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 728
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_power_optimization_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPreBufferSize(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 915
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "capture_prebuffer_size"

    const/16 v2, 0xfa0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getProvServFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prov_serv_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getProvServerDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prov_server_domain"

    const-string v2, "http://prov.alphonso.tv"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProvServerPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "prov_server_port"

    const-string v2, "4000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRecordTimeoutsFlag(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 541
    const-string v1, "alphonso"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 543
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "record_timeouts_flag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getServerDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "server_domain"

    const-string v2, "http://api.alphonso.tv"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServerDomainSsl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "server_domain_ssl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServerPort(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "server_port"

    const-string v2, "4430"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServerPortSsl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "server_port_ssl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "uuid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setAcrDbFileAbsPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 780
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 781
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 783
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "acr_db_file_abs_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 785
    return-void
.end method

.method public static setAcrDbFileDir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 766
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 767
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 769
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "acr_db_file_dir"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 770
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 771
    return-void
.end method

.method public static setAcrDbFilename(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 752
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 753
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "acr_db_filename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    return-void
.end method

.method public static setAcrMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    .line 508
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 509
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "acr_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method public static setAcrShift(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shift"    # I

    .prologue
    .line 495
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 496
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "acr_shift"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 499
    return-void
.end method

.method public static setAdIdPollDuration(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I

    .prologue
    .line 482
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 483
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 484
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ad_id_poll_duration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    return-void
.end method

.method public static setAdvertisingId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 450
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 452
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "advertising_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 454
    return-void
.end method

.method public static setAdvtDbInsecureServer(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insecure"    # Z

    .prologue
    .line 328
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "advt_db_insecure_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method public static setAdvtDbServerName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "advt_db_server_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    return-void
.end method

.method public static setAdvtDbServerPort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "advt_db_server_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void
.end method

.method public static setAlphonsoUid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alp_uid"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 396
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 397
    const-string v1, "alp_uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void

    .line 400
    :cond_0
    const-string v1, "alp_uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setAndroidId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "androidId"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "android_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    return-void
.end method

.method public static setAudioFileUploadFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 521
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "audio_file_upload_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public static setAudioFileUploadTimedoutFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 534
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 536
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "audio_file_upload_timedout_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method public static setCaptureCount(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 586
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 587
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    return-void
.end method

.method public static setCaptureDuration(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    .line 560
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 561
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 562
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_duration"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    return-void
.end method

.method public static setCaptureDurationMS(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # J

    .prologue
    .line 573
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 574
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_duration_ms"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method

.method public static setCapturePrepareTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prepareTime"    # J

    .prologue
    .line 677
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 678
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 679
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_prepare_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 680
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    return-void
.end method

.method public static setCaptureScenarioCount(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 599
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 600
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_scenario_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 603
    return-void
.end method

.method public static setCaptureScenarioSleepInterval(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepTime"    # J

    .prologue
    .line 612
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 613
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_scenario_sleep_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    return-void
.end method

.method public static setCaptureScenarioSleepIntervalInhibiterIncrement(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inhibiterIncrement"    # F

    .prologue
    .line 651
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 652
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_scenario_sleep_inhibiter_increment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 654
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    return-void
.end method

.method public static setCaptureScenarioSleepIntervalLivetv(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepTimeLivetv"    # J

    .prologue
    .line 625
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 626
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 627
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_scenario_sleep_interval_livetv_match"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void
.end method

.method public static setCaptureScenarioSleepIntervalMax(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepTimeMax"    # J

    .prologue
    .line 638
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 639
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_scenario_sleep_interval_max"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 642
    return-void
.end method

.method public static setCaptureSleepTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sleepTime"    # J

    .prologue
    .line 664
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 665
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 666
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_sleep_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 668
    return-void
.end method

.method public static setClockSkewInsecureServer(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 906
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 907
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 908
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_skew_insecure_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    return-void
.end method

.method public static setClockSkewServerName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 878
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 879
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_skew_server_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 883
    return-void
.end method

.method public static setClockSkewServerPort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 892
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 893
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_skew_server_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 897
    return-void
.end method

.method public static setClockSyncApplyFP(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 865
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 866
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 867
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_sync_apply_fp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 868
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 869
    return-void
.end method

.method public static setClockSyncPollInterval(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clockSyncPollInterval"    # I

    .prologue
    .line 839
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 840
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 841
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_sync_poll_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 842
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 843
    return-void
.end method

.method public static setClockSyncSavedIterations(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clockSyncSavedInterations"    # I

    .prologue
    .line 852
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 853
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 854
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "clock_sync_saved_iterations"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 856
    return-void
.end method

.method public static setDBMAxRecords(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxRecords"    # I

    .prologue
    .line 690
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 691
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 692
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "db_max_records"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    return-void
.end method

.method public static setDebugLogsFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 800
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 801
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 802
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_logs_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 803
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 804
    return-void
.end method

.method public static setDebugScreenFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 745
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 746
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 747
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_screen_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 749
    return-void
.end method

.method public static setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 438
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dev_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    return-void
.end method

.method public static setFbAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "venueId"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fb_access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    return-void
.end method

.method public static setFbId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fb_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method public static setHistoryFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 813
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 814
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "history_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 817
    return-void
.end method

.method public static setLimitAdTrackingFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 469
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 470
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "limit_ad_tracking_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    return-void
.end method

.method public static setLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 1032
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationProvider(Landroid/content/Context;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationLatitude(Landroid/content/Context;F)V

    .line 1034
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationLongitude(Landroid/content/Context;F)V

    .line 1035
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ltv/alphonso/utils/PreferencesManager;->setLocationTime(Landroid/content/Context;J)V

    .line 1037
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationAltitude(Landroid/content/Context;F)V

    .line 1041
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationSpeed(Landroid/content/Context;F)V

    .line 1045
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationBearing(Landroid/content/Context;F)V

    .line 1049
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {p0, v0}, Ltv/alphonso/utils/PreferencesManager;->setLocationAccuracy(Landroid/content/Context;F)V

    .line 1052
    :cond_3
    return-void
.end method

.method public static setLocationAccuracy(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accuracy"    # F

    .prologue
    .line 997
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 998
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 999
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_accuracy"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1001
    return-void
.end method

.method public static setLocationAltitude(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "altitude"    # F

    .prologue
    .line 958
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 959
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 960
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_altitude"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 961
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    return-void
.end method

.method public static setLocationBearing(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bearing"    # F

    .prologue
    .line 984
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 985
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 986
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_bearing"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 987
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    return-void
.end method

.method public static setLocationLatitude(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # F

    .prologue
    .line 945
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 946
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 947
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_latitude"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 948
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 949
    return-void
.end method

.method public static setLocationLongitude(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "longitude"    # F

    .prologue
    .line 932
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 933
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 934
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_longitude"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 936
    return-void
.end method

.method public static setLocationPollInterval(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 1091
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1092
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1093
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_poll_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1094
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1095
    return-void
.end method

.method public static setLocationProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1010
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1011
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1013
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_provider"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1015
    return-void
.end method

.method public static setLocationSpeed(Landroid/content/Context;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speed"    # F

    .prologue
    .line 971
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 972
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 973
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_speed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 974
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 975
    return-void
.end method

.method public static setLocationTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 1024
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1025
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1026
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "location_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1028
    return-void
.end method

.method public static setMicPermissionFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 826
    const-string v1, "alphonso_client"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 827
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 828
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "mic_permission_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    return-void
.end method

.method public static setPartnerAccessToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 368
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "partner_access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method public static setPartnerId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 381
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "partner_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    return-void
.end method

.method public static setPowerOptimizationMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 732
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 733
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 734
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_power_optimization_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 736
    return-void
.end method

.method public static setPreBufferSize(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preBufferSize"    # I

    .prologue
    .line 919
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 920
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "capture_prebuffer_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 922
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 923
    return-void
.end method

.method public static setProvServFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 211
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "prov_serv_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public static setProvServerDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "prov_server_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    return-void
.end method

.method public static setProvServerPort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "prov_server_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    return-void
.end method

.method public static setRecordTimeoutsFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 547
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 548
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "record_timeouts_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    return-void
.end method

.method public static setServerDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server_domain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public static setServerDomainSsl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server_domain_ssl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    return-void
.end method

.method public static setServerPort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server_port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public static setServerPortSsl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "server_port_ssl"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    return-void
.end method

.method public static setUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuId"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v1, "alphonso"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 408
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 410
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "uuid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void
.end method

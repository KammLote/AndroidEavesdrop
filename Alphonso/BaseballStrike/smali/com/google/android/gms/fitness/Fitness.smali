.class public Lcom/google/android/gms/fitness/Fitness;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_TRACK:Ljava/lang/String; = "vnd.google.fitness.TRACK"

.field public static final ACTION_VIEW:Ljava/lang/String; = "vnd.google.fitness.VIEW"

.field public static final ACTION_VIEW_GOAL:Ljava/lang/String; = "vnd.google.fitness.VIEW_GOAL"

.field public static final API:Ljava/lang/Void;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLE_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final BleApi:Lcom/google/android/gms/fitness/BleApi;

.field public static final CONFIG_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

.field public static final EXTRA_END_TIME:Ljava/lang/String; = "vnd.google.fitness.end_time"

.field public static final EXTRA_START_TIME:Ljava/lang/String; = "vnd.google.fitness.start_time"

.field public static final GOALS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GoalsApi:Lcom/google/android/gms/fitness/GoalsApi;

.field public static final HISTORY_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

.field public static final RECORDING_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

.field public static final SCOPE_ACTIVITY_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_ACTIVITY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_BODY_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_BODY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_LOCATION_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_LOCATION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_NUTRITION_READ:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_NUTRITION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

.field public static final SENSORS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSIONS_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

.field public static final SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;

.field private static zzaMc:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaSY:Lcom/google/android/gms/internal/zzbxi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->API:Ljava/lang/Void;

    sget-object v0, Lcom/google/android/gms/internal/zzbvj;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SENSORS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbyr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyr;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbvf;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->RECORDING_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbyk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbvn;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SESSIONS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbyy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyy;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbuz;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->HISTORY_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbxz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxz;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbuw;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->GOALS_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbxw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->GoalsApi:Lcom/google/android/gms/fitness/GoalsApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbus;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->CONFIG_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbxr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxr;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbuo;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->BLE_API:Lcom/google/android/gms/common/api/Api;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxj;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->BleApi:Lcom/google/android/gms/fitness/BleApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbvd;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->zzaMc:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzbyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbyj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->zzaSY:Lcom/google/android/gms/internal/zzbxi;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_ACTIVITY_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_ACTIVITY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.location.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_LOCATION_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_LOCATION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.body.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_BODY_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.body.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_BODY_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.nutrition.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_NUTRITION_READ:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.nutrition.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SCOPE_NUTRITION_READ_WRITE:Lcom/google/android/gms/common/api/Scope;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbzi;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndTime(Landroid/content/Intent;Ljava/util/concurrent/TimeUnit;)J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "vnd.google.fitness.end_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getStartTime(Landroid/content/Intent;Ljava/util/concurrent/TimeUnit;)J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "vnd.google.fitness.start_time"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0
.end method

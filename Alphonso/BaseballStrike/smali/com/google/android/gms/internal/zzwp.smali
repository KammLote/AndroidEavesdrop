.class public final Lcom/google/android/gms/internal/zzwp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final zzNR:Z

.field private final zzNS:Z

.field private final zzNT:Z

.field private final zzNU:Z

.field private final zzNV:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzwr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwr;->zza(Lcom/google/android/gms/internal/zzwr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwp;->zzNR:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwr;->zzb(Lcom/google/android/gms/internal/zzwr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwp;->zzNS:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwr;->zzc(Lcom/google/android/gms/internal/zzwr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwp;->zzNT:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwr;->zzd(Lcom/google/android/gms/internal/zzwr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwp;->zzNU:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzwr;->zze(Lcom/google/android/gms/internal/zzwr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwp;->zzNV:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzwr;Lcom/google/android/gms/internal/zzwq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzwp;-><init>(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method


# virtual methods
.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwp;->zzNR:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwp;->zzNS:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwp;->zzNT:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwp;->zzNU:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwp;->zzNV:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/google/android/gms/internal/zzrg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzJt:Lorg/json/JSONObject;

.field private synthetic zzJu:Lcom/google/android/gms/internal/zzrf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrf;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrg;->zzJu:Lcom/google/android/gms/internal/zzrf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrg;->zzJt:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrg;->zzJu:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->zzJr:Lcom/google/android/gms/internal/zzajz;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrg;->zzJt:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzajz;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    return-void
.end method

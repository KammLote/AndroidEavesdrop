.class final Lcom/google/android/gms/internal/zzaxb;
.super Lcom/google/android/gms/internal/zzaxd;


# instance fields
.field private synthetic zzaxd:Lcom/google/android/gms/internal/zzawx;

.field private synthetic zzaxg:Ljava/lang/String;

.field private synthetic zzaxh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawx;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxh:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxd;-><init>(Lcom/google/android/gms/internal/zzawx;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxd:Lcom/google/android/gms/internal/zzawx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxg:Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaxb;->zzaxh:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaxf;->zzarw:Lcom/google/android/gms/internal/zzays;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/zzays;)V

    return-void
.end method

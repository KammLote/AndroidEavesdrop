.class final Lcom/google/android/gms/internal/zzyy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakf;


# instance fields
.field private synthetic zzSc:Lcom/google/android/gms/internal/zzyx;

.field private synthetic zzuC:Lcom/google/android/gms/internal/zzajz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyx;Lcom/google/android/gms/internal/zzajz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyy;->zzSc:Lcom/google/android/gms/internal/zzyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyy;->zzuC:Lcom/google/android/gms/internal/zzajz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzj(Lcom/google/android/gms/internal/zzajz;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyy;->zzuC:Lcom/google/android/gms/internal/zzajz;

    const-string v1, "google.afma.nativeAds.renderVideo"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyy;->zzSc:Lcom/google/android/gms/internal/zzyx;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzyx;->zzRZ:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzajz;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

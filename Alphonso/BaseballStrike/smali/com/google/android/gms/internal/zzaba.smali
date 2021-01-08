.class final Lcom/google/android/gms/internal/zzaba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUc:Lcom/google/android/gms/internal/zzaay;

.field final synthetic zzUd:Lorg/json/JSONObject;

.field final synthetic zzUe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaay;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaay;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaba;->zzUd:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaba;->zzUe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaay;

    invoke-static {}, Lcom/google/android/gms/internal/zzaay;->zzgE()Lcom/google/android/gms/ads/internal/js/zzl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaay;->zza(Lcom/google/android/gms/internal/zzaay;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaay;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaay;->zzb(Lcom/google/android/gms/internal/zzaay;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzabb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzabb;-><init>(Lcom/google/android/gms/internal/zzaba;)V

    new-instance v2, Lcom/google/android/gms/internal/zzabc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabc;-><init>(Lcom/google/android/gms/internal/zzaba;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajr;Lcom/google/android/gms/internal/zzajp;)V

    return-void
.end method

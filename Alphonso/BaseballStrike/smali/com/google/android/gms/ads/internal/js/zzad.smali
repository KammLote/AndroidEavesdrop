.class final Lcom/google/android/gms/ads/internal/js/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajr",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzLy:Lcom/google/android/gms/ads/internal/js/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzac;Lcom/google/android/gms/ads/internal/js/zzy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzad;->zzLy:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zza;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzad;->zzLy:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/js/zza;->zzeY()Lcom/google/android/gms/ads/internal/js/zzaj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzy;->zzf(Ljava/lang/Object;)V

    return-void
.end method

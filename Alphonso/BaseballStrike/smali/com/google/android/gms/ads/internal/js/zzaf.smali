.class final Lcom/google/android/gms/ads/internal/js/zzaf;
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
.field final synthetic zzLz:Lcom/google/android/gms/ads/internal/js/zzac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzaf;->zzLz:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zza;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/js/zzag;-><init>(Lcom/google/android/gms/ads/internal/js/zzaf;Lcom/google/android/gms/ads/internal/js/zza;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

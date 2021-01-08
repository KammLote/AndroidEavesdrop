.class final Lcom/google/android/gms/ads/internal/zzbf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zztz:Lcom/google/android/gms/internal/zzafe;

.field private synthetic zzuS:Lcom/google/android/gms/ads/internal/zzbb;

.field private synthetic zzuT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbb;Ljava/lang/String;Lcom/google/android/gms/internal/zzafe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbf;->zzuS:Lcom/google/android/gms/ads/internal/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbf;->zzuT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzbf;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbf;->zzuS:Lcom/google/android/gms/ads/internal/zzbb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbb;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbf;->zzuT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbf;->zztz:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzXT:Lcom/google/android/gms/internal/zzoa;

    check-cast v1, Lcom/google/android/gms/internal/zznu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

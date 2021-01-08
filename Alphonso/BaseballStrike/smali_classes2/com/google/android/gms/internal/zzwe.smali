.class final Lcom/google/android/gms/internal/zzwe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzw;


# instance fields
.field private synthetic zzNr:Lcom/google/android/gms/internal/zzwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzwc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajb;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajb;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaA()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajb;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwc;->zza(Lcom/google/android/gms/internal/zzwc;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwc;->zzc(Lcom/google/android/gms/internal/zzwc;)Lcom/google/android/gms/internal/zznl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzwc;->zzb(Lcom/google/android/gms/internal/zzwc;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznl;->zzc(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzaB()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajb;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwc;->zza(Lcom/google/android/gms/internal/zzwc;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzwe;->zzNr:Lcom/google/android/gms/internal/zzwc;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

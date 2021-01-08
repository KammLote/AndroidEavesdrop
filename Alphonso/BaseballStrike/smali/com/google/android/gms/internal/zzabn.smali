.class final Lcom/google/android/gms/internal/zzabn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajr",
        "<",
        "Lcom/google/android/gms/ads/internal/js/zzai;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzUD:Lcom/google/android/gms/internal/zzmz;

.field private synthetic zzUE:Lcom/google/android/gms/internal/zzabm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzmz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabn;->zzUD:Lcom/google/android/gms/internal/zzmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabm;->zztf:Lcom/google/android/gms/internal/zznb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUD:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabm;->zztf:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznb;->zzdT()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabm;->zzUA:Lcom/google/android/gms/internal/zzabt;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabt;->zzUO:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabm;->zzUA:Lcom/google/android/gms/internal/zzabt;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabt;->zzUP:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabm;->zzUA:Lcom/google/android/gms/internal/zzabt;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabt;->zzUQ:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :try_start_0
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabn;->zzUE:Lcom/google/android/gms/internal/zzabm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabm;->zzUC:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

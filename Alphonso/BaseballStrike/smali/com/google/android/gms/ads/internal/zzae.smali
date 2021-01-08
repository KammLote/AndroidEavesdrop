.class final Lcom/google/android/gms/ads/internal/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zztC:Lcom/google/android/gms/ads/internal/js/zzl;

.field final synthetic zztD:Lcom/google/android/gms/internal/zzrd;

.field final synthetic zztE:Ljava/lang/String;

.field final synthetic zztF:Ljava/lang/String;

.field final synthetic zztG:Z

.field final synthetic zztH:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzac;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzrd;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzae;->zztC:Lcom/google/android/gms/ads/internal/js/zzl;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzae;->zztD:Lcom/google/android/gms/internal/zzrd;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzae;->zztE:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzae;->zztF:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/zzae;->zztG:Z

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzae;->zztH:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzae;->zztC:Lcom/google/android/gms/ads/internal/js/zzl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzaf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzaf;-><init>(Lcom/google/android/gms/ads/internal/zzae;)V

    new-instance v2, Lcom/google/android/gms/internal/zzajq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzajq;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajr;Lcom/google/android/gms/internal/zzajp;)V

    return-void
.end method

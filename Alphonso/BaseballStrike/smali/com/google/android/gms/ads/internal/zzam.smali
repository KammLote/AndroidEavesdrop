.class final Lcom/google/android/gms/ads/internal/zzam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# instance fields
.field private synthetic zztz:Lcom/google/android/gms/internal/zzafe;

.field private synthetic zzup:Lcom/google/android/gms/ads/internal/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzal;Lcom/google/android/gms/internal/zzafe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzam;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzam;->zztz:Lcom/google/android/gms/internal/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaT()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzge;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzam;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzam;->zztz:Lcom/google/android/gms/internal/zzafe;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzajz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzge;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzam;->zztz:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzge;->zza(Lcom/google/android/gms/internal/zzgi;)V

    return-void
.end method

.class final Lcom/google/android/gms/ads/internal/zzay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzuN:Ljava/lang/Runnable;

.field final synthetic zzuO:Lcom/google/android/gms/ads/internal/zzax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzax;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzay;->zzuO:Lcom/google/android/gms/ads/internal/zzax;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzay;->zzuN:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzaz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzaz;-><init>(Lcom/google/android/gms/ads/internal/zzay;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class final Lcom/google/android/gms/ads/internal/zzao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzur:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private synthetic zzus:Lcom/google/android/gms/ads/internal/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzan;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzao;->zzus:Lcom/google/android/gms/ads/internal/zzan;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzao;->zzur:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbx()Lcom/google/android/gms/ads/internal/overlay/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzao;->zzus:Lcom/google/android/gms/ads/internal/zzan;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzao;->zzur:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method

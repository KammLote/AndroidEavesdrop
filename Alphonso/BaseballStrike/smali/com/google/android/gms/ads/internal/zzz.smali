.class final Lcom/google/android/gms/ads/internal/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaki;


# instance fields
.field private synthetic zztw:Lcom/google/android/gms/internal/zzafe;

.field private synthetic zztx:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/zzafe;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzz;->zztw:Lcom/google/android/gms/internal/zzafe;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzz;->zztx:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzz;->zztw:Lcom/google/android/gms/internal/zzafe;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXM:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzz;->zztx:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagy;->zzb(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

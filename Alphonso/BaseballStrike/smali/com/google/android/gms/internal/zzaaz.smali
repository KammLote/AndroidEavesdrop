.class final Lcom/google/android/gms/internal/zzaaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUc:Lcom/google/android/gms/internal/zzaay;

.field private synthetic zzsY:Lcom/google/android/gms/internal/zzaff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaay;Lcom/google/android/gms/internal/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaz;->zzUc:Lcom/google/android/gms/internal/zzaay;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaaz;->zzsY:Lcom/google/android/gms/internal/zzaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->zzUc:Lcom/google/android/gms/internal/zzaay;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaay;->zza(Lcom/google/android/gms/internal/zzaay;)Lcom/google/android/gms/internal/zzzo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaz;->zzsY:Lcom/google/android/gms/internal/zzaff;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzo;->zza(Lcom/google/android/gms/internal/zzaff;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->zzUc:Lcom/google/android/gms/internal/zzaay;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaay;->zzb(Lcom/google/android/gms/internal/zzaay;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->zzUc:Lcom/google/android/gms/internal/zzaay;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaay;->zzb(Lcom/google/android/gms/internal/zzaay;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaz;->zzUc:Lcom/google/android/gms/internal/zzaay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaay;->zza(Lcom/google/android/gms/internal/zzaay;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;

    :cond_0
    return-void
.end method

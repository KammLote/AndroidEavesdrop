.class final Lcom/google/android/gms/internal/zzti;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field zzKk:Lcom/google/android/gms/internal/zzke;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzKl:Lcom/google/android/gms/internal/zznh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzKm:Lcom/google/android/gms/internal/zzjl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzKn:Lcom/google/android/gms/internal/zzadc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zztM:Lcom/google/android/gms/internal/zzjo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zzd(Lcom/google/android/gms/ads/internal/zzal;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zztM:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzti;->zztM:Lcom/google/android/gms/internal/zzjo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztj;-><init>(Lcom/google/android/gms/internal/zzjo;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzjo;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKk:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKk:Lcom/google/android/gms/internal/zzke;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzke;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zznh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zznh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zznh;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKm:Lcom/google/android/gms/internal/zzjl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKm:Lcom/google/android/gms/internal/zzjl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzjl;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKn:Lcom/google/android/gms/internal/zzadc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzKn:Lcom/google/android/gms/internal/zzadc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzadc;)V

    :cond_4
    return-void
.end method

.class final Lcom/google/android/gms/ads/internal/zzan;
.super Lcom/google/android/gms/internal/zzafo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field final synthetic zzup:Lcom/google/android/gms/ads/internal/zzal;

.field private final zzuq:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzal;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafo;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzan;->zzuq:I

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final zzbd()V
    .locals 10

    const/4 v7, -0x1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzap;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzut:Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzal;->zzba()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/ads/internal/zzal;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zzal;->zzb(Lcom/google/android/gms/ads/internal/zzal;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-boolean v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzut:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/android/gms/ads/internal/zzan;->zzuq:I

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzal;->zzc(Lcom/google/android/gms/ads/internal/zzal;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzap;-><init>(ZZZFIZ)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzajz;->getRequestedOrientation()I

    move-result v6

    if-ne v6, v7, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget v6, v1, Lcom/google/android/gms/internal/zzafe;->orientation:I

    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafe;->zzPg:Lcom/google/android/gms/internal/zzajz;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzan;->zzup:Lcom/google/android/gms/ads/internal/zzal;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzal;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v8, v8, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzafe;->zzTt:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzag;Lcom/google/android/gms/internal/zzajz;ILcom/google/android/gms/internal/zzajd;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzap;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzao;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/zzao;-><init>(Lcom/google/android/gms/ads/internal/zzan;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v5, v7

    goto :goto_0
.end method

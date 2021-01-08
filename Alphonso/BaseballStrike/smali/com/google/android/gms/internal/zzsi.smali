.class public final Lcom/google/android/gms/internal/zzsi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsU:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzsZ:Lcom/google/android/gms/internal/zzuq;

.field private final zztY:Lcom/google/android/gms/internal/zzajd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsi;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsi;->zztY:Lcom/google/android/gms/internal/zzajd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsi;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzW(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziv;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v0
.end method

.method public final zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziv;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v0
.end method

.method public final zzeF()Lcom/google/android/gms/internal/zzsi;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi;->zztY:Lcom/google/android/gms/internal/zzajd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzsi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v0
.end method

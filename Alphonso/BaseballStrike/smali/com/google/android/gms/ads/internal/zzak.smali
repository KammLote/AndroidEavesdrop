.class public final Lcom/google/android/gms/ads/internal/zzak;
.super Lcom/google/android/gms/internal/zzjv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsU:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzsZ:Lcom/google/android/gms/internal/zzuq;

.field private zztM:Lcom/google/android/gms/internal/zzjo;

.field private zztQ:Lcom/google/android/gms/internal/zziv;

.field private zztR:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zztU:Lcom/google/android/gms/internal/zzon;

.field private zztW:Lcom/google/android/gms/internal/zzkk;

.field private final zztX:Ljava/lang/String;

.field private final zztY:Lcom/google/android/gms/internal/zzajd;

.field private zzuc:Lcom/google/android/gms/internal/zzpn;

.field private zzud:Lcom/google/android/gms/internal/zzpq;

.field private zzue:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

.field private zzuf:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field private zzug:Lcom/google/android/gms/internal/zzpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zztX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzak;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzak;->zztY:Lcom/google/android/gms/internal/zzajd;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzuf:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzue:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzak;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztR:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzon;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztU:Lcom/google/android/gms/internal/zzon;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzuc:Lcom/google/android/gms/internal/zzpn;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzud:Lcom/google/android/gms/internal/zzpq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zziv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzug:Lcom/google/android/gms/internal/zzpz;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zztQ:Lcom/google/android/gms/internal/zziv;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/internal/zzpt;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzuf:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzue:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzaZ()Lcom/google/android/gms/internal/zzjr;
    .locals 17

    new-instance v1, Lcom/google/android/gms/ads/internal/zzai;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzak;->zztX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzak;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzak;->zztY:Lcom/google/android/gms/internal/zzajd;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzak;->zztM:Lcom/google/android/gms/internal/zzjo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzak;->zzuc:Lcom/google/android/gms/internal/zzpn;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzak;->zzud:Lcom/google/android/gms/internal/zzpq;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzak;->zzuf:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/zzak;->zzue:Landroid/support/v4/util/SimpleArrayMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzak;->zztU:Lcom/google/android/gms/internal/zzon;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/zzak;->zztW:Lcom/google/android/gms/internal/zzkk;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzak;->zzsU:Lcom/google/android/gms/ads/internal/zzv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/zzak;->zzug:Lcom/google/android/gms/internal/zzpz;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzak;->zztQ:Lcom/google/android/gms/internal/zziv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzak;->zztR:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/ads/internal/zzai;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/internal/zzjo;Lcom/google/android/gms/internal/zzpn;Lcom/google/android/gms/internal/zzpq;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztM:Lcom/google/android/gms/internal/zzjo;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzkk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztW:Lcom/google/android/gms/internal/zzkk;

    return-void
.end method

.class public final Lcom/google/android/gms/internal/zzacr;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zzads;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# static fields
.field private static zzWr:Lcom/google/android/gms/internal/zzacr;

.field private static final zzWs:Lcom/google/android/gms/internal/zzup;


# instance fields
.field private final zzWt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzady;",
            ">;"
        }
    .end annotation
.end field

.field private zzWu:Z

.field private zzul:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzup;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacr;->zzWs:Lcom/google/android/gms/internal/zzup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    sput-object p0, Lcom/google/android/gms/internal/zzacr;->zzWr:Lcom/google/android/gms/internal/zzacr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzacr;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzacr;->zze(I)V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaff;
    .locals 23

    const-string v2, "Creating mediation ad response for non-mediated rewarded ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->v(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzabs;->zzb(Lcom/google/android/gms/internal/zzaah;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaad;->zzvT:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzua;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/internal/zzua;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v22, Lcom/google/android/gms/internal/zzub;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzua;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzEN:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v22

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzub;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzaff;->zzXR:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzaff;->zzXS:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzaff;->zzXX:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v5, v22

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzaah;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzig;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for non-mediated rewarded video."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzaff;->zzXR:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzaff;->zzXS:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzaff;->zzXX:Lcom/google/android/gms/internal/zzig;

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/zzaff;-><init>(Lcom/google/android/gms/internal/zzaad;Lcom/google/android/gms/internal/zzaah;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zziv;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzig;)V

    goto :goto_0
.end method

.method public static zzgO()Lcom/google/android/gms/internal/zzacr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzacr;->zzWr:Lcom/google/android/gms/internal/zzacr;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzady;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to destroy adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zzafo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWu:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzady;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzut;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafq;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdClosed()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->zzap()V

    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->zzaq()V

    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzacr;->zza(Lcom/google/android/gms/internal/zzafe;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->zzar()V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbS()Lcom/google/android/gms/internal/zzuj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzua;->zzLS:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzuj;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzafe;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->zzav()V

    return-void
.end method

.method public final pause()V
    .locals 4

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzady;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to pause adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final resume()V
    .locals 4

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzady;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to resume adapter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    const-string v0, "setImmersiveMode must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzacr;->zzul:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadi;)V
    .locals 2

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzadi;->zzvT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid ad unit id. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzacs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzacs;-><init>(Lcom/google/android/gms/internal/zzacr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzadi;->zzvT:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzadi;->zzSz:Lcom/google/android/gms/internal/zzir;

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzir;)Z

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zznb;)V
    .locals 5

    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzact;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzact;-><init>(Lcom/google/android/gms/internal/zzacr;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzXN:Lcom/google/android/gms/internal/zzub;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzacr;->zzc(Lcom/google/android/gms/internal/zzaff;)Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzaff;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzby()Lcom/google/android/gms/internal/zzxw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzaff;

    new-instance v3, Lcom/google/android/gms/internal/zzadv;

    invoke-direct {v3, v0, v2, p0}, Lcom/google/android/gms/internal/zzadv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzacr;)V

    const-string v2, "AdRenderer: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaC(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaho;->zzgp()Ljava/lang/Object;

    iput-object v3, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzafe;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzap()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzap()V

    return-void
.end method

.method public final zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/zzady;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzady;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/zzacr;->zzWs:Lcom/google/android/gms/internal/zzup;

    move-object v2, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzady;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzuq;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/zzut;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/internal/zzady;-><init>(Lcom/google/android/gms/internal/zzut;Lcom/google/android/gms/internal/zzads;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWt:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    const-string v3, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzaed;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzaed;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbS()Lcom/google/android/gms/internal/zzuj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzajd;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzajd;->zzaR:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzua;->zzLT:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzuj;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzafe;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzub;->zzMj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzaed;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzub;->zzMj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget v1, v1, Lcom/google/android/gms/internal/zzub;->zzMk:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzaed;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzacr;->zza(Lcom/google/android/gms/internal/zzaed;)V

    return-void
.end method

.method public final zzgP()V
    .locals 3

    const-string v0, "showAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The reward video has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzacr;->zzWu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacr;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzacr;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/zzady;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzacr;->zzul:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzut;->setImmersiveMode(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzady;->zzgW()Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzut;->showVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call showVideo."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzgQ()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacr;->onAdClicked()V

    return-void
.end method

.class public final Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zznz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private zzsw:Z

.field private zzti:Lcom/google/android/gms/internal/zzafe;

.field private zztj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzajd;Lcom/google/android/gms/ads/internal/zzv;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztj:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/zzafe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzti:Lcom/google/android/gms/internal/zzafe;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzaff;I)Lcom/google/android/gms/internal/zzafe;
    .locals 40

    new-instance v2, Lcom/google/android/gms/internal/zzafe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzaah;->zzMc:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzaah;->zzMd:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzaah;->zzTq:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget v9, v6, Lcom/google/android/gms/internal/zzaah;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-wide v10, v6, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    iget-object v12, v6, Lcom/google/android/gms/internal/zzaad;->zzSC:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/zzaah;->zzTo:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXN:Lcom/google/android/gms/internal/zzub;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTp:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXR:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXS:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTt:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTD:Lcom/google/android/gms/internal/zzaed;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTE:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTE:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTG:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTH:Lcom/google/android/gms/internal/zzaaj;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzMf:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzaah;->zzTK:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXX:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v39, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v39}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzajz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzud;JLcom/google/android/gms/internal/zziv;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaed;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaj;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzig;)V

    return-object v2
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z
    .locals 17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Native ad does not have custom rendering mode."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfq()Lcom/google/android/gms/internal/zzvc;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfr()Lcom/google/android/gms/internal/zzvf;

    move-result-object v2

    move-object v13, v2

    :goto_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/internal/zzafe;->zzMJ:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfv()Lcom/google/android/gms/internal/zzpj;

    move-result-object v2

    :goto_3
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzwh:Lcom/google/android/gms/internal/zzpn;

    if-eqz v3, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/zznq;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->zzeh()Lcom/google/android/gms/internal/zzos;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->zzeh()Lcom/google/android/gms/internal/zzos;

    move-result-object v6

    :goto_4
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getStarRating()D

    move-result-wide v8

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getStore()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getPrice()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/internal/zzvc;->getVideoController()Lcom/google/android/gms/internal/zzks;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/zznq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/zznx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/internal/zzcu;

    move-object/from16 v5, p0

    move-object/from16 v7, v16

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zznx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznz;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/internal/zzoa;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zznq;->zzb(Lcom/google/android/gms/internal/zzny;)V

    sget-object v3, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/zzs;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zznq;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z

    move-result v2

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v16, v2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    if-eqz v13, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Lcom/google/android/gms/internal/zzpq;

    if-eqz v3, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/zzns;

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getHeadline()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getImages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->zzem()Lcom/google/android/gms/internal/zzos;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->zzem()Lcom/google/android/gms/internal/zzos;

    move-result-object v6

    :goto_6
    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getAdvertiser()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-interface {v13}, Lcom/google/android/gms/internal/zzvf;->getVideoController()Lcom/google/android/gms/internal/zzks;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/zzns;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/zznx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v6, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/internal/zzcu;

    move-object/from16 v5, p0

    move-object v7, v13

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zznx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznz;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzvf;Lcom/google/android/gms/internal/zzoa;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzny;)V

    sget-object v3, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/zzt;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/ads/internal/zzt;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzns;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    const-string v3, "Failed to get native ad mapper"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Landroid/support/v4/util/SimpleArrayMap;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzpj;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/zzu;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/ads/internal/zzu;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzpj;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_8
    const-string v2, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzar;->zzd(Lcom/google/android/gms/internal/zzafe;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/google/android/gms/internal/zzajz;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzajz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzajz;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzar;->zze(Lcom/google/android/gms/internal/zzafe;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->showNext()V

    :cond_4
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzcb()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafj;

    move-result-object v1

    const-string v3, "AdLoaderManager.swapBannerViews"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/zzafj;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not add mediation view to view hierarchy."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztj:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->pause()V

    return-void
.end method

.method public final resume()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zztj:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->resume()V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsw:Z

    return-void
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zznb;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzti:Lcom/google/android/gms/internal/zzafe;

    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzaff;I)Lcom/google/android/gms/internal/zzafe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzti:Lcom/google/android/gms/internal/zzafe;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzti:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zzq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTo:Z

    if-nez v0, :cond_0

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzaff;I)Lcom/google/android/gms/internal/zzafe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzti:Lcom/google/android/gms/internal/zzafe;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvZ:Lcom/google/android/gms/internal/zziv;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzby()Lcom/google/android/gms/internal/zzxw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/internal/zzcu;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsZ:Lcom/google/android/gms/internal/zzuq;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p0

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzxw;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzajz;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzxx;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzaho;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaho;

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zznh;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 1

    const-string v0, "Unexpected call to AdLoaderManager method"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzny;)V
    .locals 1

    const-string v0, "Unexpected call to AdLoaderManager method"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/zzafe;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdLoader API does not support custom rendering."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p2, Lcom/google/android/gms/internal/zzafe;->zzTo:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    const-string v1, "newState is not mediation."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p2, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v2, :cond_8

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzua;->zzfh()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbu;->zzcf()Lcom/google/android/gms/internal/zzahp;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzafe;->zzTt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzahp;->zzaP(Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zztj:Z

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    move v2, v0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcd()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-super {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzafe;Z)V

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    iget-object v2, p2, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v2, :cond_9

    iget-object v2, p2, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzua;->zzfi()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/zzafe;Lcom/google/android/gms/internal/zzafe;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    const-string v1, "Response is neither banner nor native."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzir;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zze(I)V

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zzpz;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzir;->zzzU:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsw:Z

    if-ne v2, v3, :cond_2

    :goto_2
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result v2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzir;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/gms/internal/zzir;->versionCode:I

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzir;->zzzP:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/google/android/gms/internal/zzir;->zzzQ:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzir;->zzzR:Ljava/util/List;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzir;->zzzS:Z

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/gms/internal/zzir;->zzzT:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzir;->zzzU:Z

    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/ads/internal/zzq;->zzsw:Z

    if-eqz v11, :cond_4

    :cond_3
    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/zzir;->zzzV:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/gms/internal/zzir;->zzzW:Lcom/google/android/gms/internal/zzlt;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/zzir;->zzzX:Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/zzir;->zzzY:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzzZ:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzAa:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzAb:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzAc:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzir;->zzAd:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzir;->zzAe:Z

    move/from16 v21, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzir;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzlt;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p1, v2

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzafe;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaC()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzMK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzua;->zzfi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzau()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzaC()V

    goto :goto_0
.end method

.method public final zzaH()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafe;->zzMK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzua;->zzfi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzat()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzaH()V

    goto :goto_0
.end method

.method public final zzaO()V
    .locals 1

    const-string v0, "Unexpected call to AdLoaderManager method"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaP()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzafe;->zzTo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzub;->zzMo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final zzas()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzas()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafe;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafe;->zzMI:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzua;->zzfh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zzpz;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqF:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/zzpz;->zza(Lcom/google/android/gms/internal/zzjz;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call PublisherAdViewLoadedListener.onPublisherAdViewLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzws:Ljava/util/List;

    return-void
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Ljava/util/List;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpt;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzsR:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpt;

    return-object v0
.end method

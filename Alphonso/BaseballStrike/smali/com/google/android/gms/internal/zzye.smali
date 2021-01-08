.class public final Lcom/google/android/gms/internal/zzye;
.super Lcom/google/android/gms/internal/zzafo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzm;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzQP:Lcom/google/android/gms/internal/zzxx;

.field private final zzQQ:Lcom/google/android/gms/internal/zzaff;

.field private final zzQR:Lcom/google/android/gms/internal/zzaah;

.field private final zzRg:Lcom/google/android/gms/internal/zzym;

.field private zzRh:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzafe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzxx;Lcom/google/android/gms/internal/zznb;)V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzym;

    new-instance v3, Lcom/google/android/gms/internal/zzaid;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzaid;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzym;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zznb;)V

    invoke-direct {p0, p3, p5, v0}, Lcom/google/android/gms/internal/zzye;-><init>(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzxx;Lcom/google/android/gms/internal/zzym;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzxx;Lcom/google/android/gms/internal/zzym;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafo;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzye;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzye;->zzQP:Lcom/google/android/gms/internal/zzxx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzye;->zzRg:Lcom/google/android/gms/internal/zzym;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzye;)Lcom/google/android/gms/internal/zzxx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye;->zzQP:Lcom/google/android/gms/internal/zzxx;

    return-object v0
.end method


# virtual methods
.method public final onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzye;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzye;->zzRh:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye;->zzRh:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzbd()V
    .locals 40

    const/4 v6, -0x2

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzye;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzye;->zzRg:Lcom/google/android/gms/internal/zzym;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzags;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzajl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzye;->zzRh:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzye;->zzRh:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzafe;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    if-eqz v2, :cond_0

    :goto_1
    sget-object v3, Lcom/google/android/gms/internal/zzagy;->zzZr:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzyf;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzyf;-><init>(Lcom/google/android/gms/internal/zzye;Lcom/google/android/gms/internal/zzafe;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v2

    const-string v2, "Timed out waiting for native ad."

    invoke-static {v2}, Lcom/google/android/gms/internal/zzafq;->zzaT(Ljava/lang/String;)V

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzye;->zzRh:Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_0

    :catch_2
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_0

    :catch_3
    move-exception v2

    const/4 v6, 0x0

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzafe;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaad;->zzSz:Lcom/google/android/gms/internal/zzir;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget v9, v9, Lcom/google/android/gms/internal/zzaah;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    iget-wide v10, v10, Lcom/google/android/gms/internal/zzaah;->zzMi:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzaff;->zzUj:Lcom/google/android/gms/internal/zzaad;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzaad;->zzSC:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTp:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzvZ:Lcom/google/android/gms/internal/zziv;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTn:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXR:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTs:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTt:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTG:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXY:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTH:Lcom/google/android/gms/internal/zzaaj;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQR:Lcom/google/android/gms/internal/zzaah;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaah;->zzTK:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzye;->zzQQ:Lcom/google/android/gms/internal/zzaff;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXX:Lcom/google/android/gms/internal/zzig;

    move-object/from16 v39, v0

    invoke-direct/range {v2 .. v39}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzajz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzud;JLcom/google/android/gms/internal/zziv;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzoa;Lcom/google/android/gms/internal/zzaed;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/zzaaj;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzig;)V

    goto/16 :goto_1
.end method

.class public final Lcom/google/android/gms/internal/pr;
.super Ljava/lang/Object;


# instance fields
.field private final zzbZH:Lcom/google/android/gms/internal/wf;

.field private zzcco:J

.field private zzccq:D

.field private zzccr:D

.field private final zzccw:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzccx:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wg;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzcco:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccq:D

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccx:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccr:D

    iput-object p1, p0, Lcom/google/android/gms/internal/pr;->zzccw:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/wf;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/wf;-><init>(Lcom/google/android/gms/internal/wg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pr;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-void
.end method


# virtual methods
.method public final zzGB()Lcom/google/android/gms/internal/pp;
    .locals 13

    new-instance v1, Lcom/google/android/gms/internal/pp;

    iget-object v2, p0, Lcom/google/android/gms/internal/pr;->zzccw:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/android/gms/internal/pr;->zzbZH:Lcom/google/android/gms/internal/wf;

    iget-wide v4, p0, Lcom/google/android/gms/internal/pr;->zzcco:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/pr;->zzccx:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/pr;->zzccr:D

    iget-wide v10, p0, Lcom/google/android/gms/internal/pr;->zzccq:D

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/pp;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wf;JJDDLcom/google/android/gms/internal/pq;)V

    return-object v1
.end method

.method public final zzas(J)Lcom/google/android/gms/internal/pr;
    .locals 2

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzcco:J

    return-object p0
.end method

.method public final zzat(J)Lcom/google/android/gms/internal/pr;
    .locals 2

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccx:J

    return-object p0
.end method

.method public final zzh(D)Lcom/google/android/gms/internal/pr;
    .locals 2

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccr:D

    return-object p0
.end method

.method public final zzi(D)Lcom/google/android/gms/internal/pr;
    .locals 2

    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/google/android/gms/internal/pr;->zzccq:D

    return-object p0
.end method

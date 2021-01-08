.class public final Lcom/google/android/gms/internal/zzcue;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mState:I

.field private final zzbDw:Ljava/lang/String;

.field private zzbFZ:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzbHF:Ljava/lang/String;

.field private final zzbHG:Ljava/lang/String;

.field private final zzbHH:Lcom/google/android/gms/internal/zzcvy;

.field private final zzbHI:Lcom/google/android/gms/internal/cc;

.field private final zzbHJ:Ljava/util/concurrent/ExecutorService;

.field private final zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHM:Lcom/google/android/gms/internal/zzcun;

.field private zzbHN:Lcom/google/android/gms/internal/zzcvt;

.field private zzbHO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcus;",
            ">;"
        }
    .end annotation
.end field

.field private zzbHP:Z

.field private final zzvy:Lcom/google/android/gms/common/util/zze;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvy;Lcom/google/android/gms/internal/cc;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzcun;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcue;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHO:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbFZ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHP:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcue;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbDw:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcvy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHH:Lcom/google/android/gms/internal/zzcvy;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHI:Lcom/google/android/gms/internal/cc;

    invoke-static {p7}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    invoke-static {p8}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/util/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzvy:Lcom/google/android/gms/common/util/zze;

    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcun;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcue;->zzbHF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcue;->zzbHG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zzcus;

    const-string v1, "gtm.load"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "gtm"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcue;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcus;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzcn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcue;->zzbHO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbDw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is scheduled for loading."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcui;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/zzcui;-><init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcuf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcue;->mState:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzcue;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcvt;)Lcom/google/android/gms/internal/zzcvt;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcue;->zzbHN:Lcom/google/android/gms/internal/zzcvt;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcue;->zzaj(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcue;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcue;->zzbHP:Z

    return p1
.end method

.method private final zzaj(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbFZ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbFZ:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbDw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Refresh container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcug;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcug;-><init>(Lcom/google/android/gms/internal/zzcue;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbFZ:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHN:Lcom/google/android/gms/internal/zzcvt;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcue;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbDw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcun;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHM:Lcom/google/android/gms/internal/zzcun;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/cc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHI:Lcom/google/android/gms/internal/cc;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzcue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzcue;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzcue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHP:Z

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcvy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHH:Lcom/google/android/gms/internal/zzcvy;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzvy:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method


# virtual methods
.method public final dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcuf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcuf;-><init>(Lcom/google/android/gms/internal/zzcue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcus;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcue;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcuj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcuj;-><init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

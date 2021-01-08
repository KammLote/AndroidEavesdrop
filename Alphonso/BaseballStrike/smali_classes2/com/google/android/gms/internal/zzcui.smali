.class final Lcom/google/android/gms/internal/zzcui;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cd;
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHQ:Lcom/google/android/gms/internal/zzcue;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcuf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcui;-><init>(Lcom/google/android/gms/internal/zzcue;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;Z)Z

    invoke-static {}, Lcom/google/android/gms/internal/zzcvr;->zzCv()Lcom/google/android/gms/internal/zzcvr;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcue;->zzd(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcvr;->zzfG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzh(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/cc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcue;->zzd(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcue;->zze(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcue;->zzf(Lcom/google/android/gms/internal/zzcue;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcue;->zzg(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcun;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/cc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/zzcun;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcue;->zzg(Lcom/google/android/gms/internal/zzcue;)Lcom/google/android/gms/internal/zzcun;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcun;->zzCi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzcue;->zza(Lcom/google/android/gms/internal/zzcue;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzl(Lcom/google/android/gms/internal/zzcue;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/cl;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cl;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzc(Lcom/google/android/gms/internal/zzcue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcul;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/zzcul;-><init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/cl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcue;->zzc(Lcom/google/android/gms/internal/zzcue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcuh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzbHQ:Lcom/google/android/gms/internal/zzcue;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcuh;-><init>(Lcom/google/android/gms/internal/zzcue;Lcom/google/android/gms/internal/zzcuf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

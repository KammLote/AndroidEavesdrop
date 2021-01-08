.class final Lcom/google/android/gms/internal/st;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/google/android/gms/internal/vh;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdX:J

.field private synthetic zzceN:Z

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;

.field private synthetic zzcfb:Z

.field private synthetic zzcfc:Lcom/google/android/gms/internal/yj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;ZJZLcom/google/android/gms/internal/yj;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/st;->zzceN:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/st;->zzcdX:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/st;->zzcfb:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/st;->zzcfc:Lcom/google/android/gms/internal/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/st;->zzceN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/st;->zzcdX:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ue;->zzal(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/st;->zzcdX:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/tm;->zzav(J)Lcom/google/android/gms/internal/tj;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzc(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/tm;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/st;->zzcdX:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/tm;->zzaw(J)Z

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/st;->zzcfb:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/st;->zzcfc:Lcom/google/android/gms/internal/yj;

    invoke-static {v1}, Lcom/google/android/gms/internal/sb;->zza(Lcom/google/android/gms/internal/yj;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHv()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHt()Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/sb;->zza(Lcom/google/android/gms/internal/xf;Ljava/util/Map;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v3}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ue;->zzk(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHu()Lcom/google/android/gms/internal/px;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/sb;->zza(Lcom/google/android/gms/internal/px;Ljava/util/Map;)Lcom/google/android/gms/internal/px;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v3}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ue;->zzc(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/px;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/us;->zzHQ()Lcom/google/android/gms/internal/us;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHv()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;

    move-result-object v1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/sl;

    new-instance v3, Lcom/google/android/gms/internal/tr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/st;->zzcfb:Z

    invoke-direct {v3, v2, v1, v4}, Lcom/google/android/gms/internal/tr;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/us;Z)V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/tu;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/tj;->zzHu()Lcom/google/android/gms/internal/px;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/px;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/qo;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/us;->zzb(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    move-object v1, v0

    goto :goto_2
.end method

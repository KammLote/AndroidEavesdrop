.class final Lcom/google/android/gms/internal/sp;
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
        "<",
        "Lcom/google/android/gms/internal/vh;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdP:Lcom/google/android/gms/internal/vp;

.field private synthetic zzceR:Lcom/google/android/gms/internal/sl;

.field private synthetic zzceU:Lcom/google/android/gms/internal/qf;

.field private synthetic zzceV:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    iput-object p2, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    iput-object p3, p0, Lcom/google/android/gms/internal/sp;->zzceU:Lcom/google/android/gms/internal/qf;

    iput-object p4, p0, Lcom/google/android/gms/internal/sp;->zzceV:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vp;->zzFp()Lcom/google/android/gms/internal/qo;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v0}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/us;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sk;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vp;->isDefault()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sk;->zzc(Lcom/google/android/gms/internal/vp;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceU:Lcom/google/android/gms/internal/qf;

    iget-object v3, p0, Lcom/google/android/gms/internal/sp;->zzceV:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sk;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/qf;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/yr;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/us;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/us;->zzI(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/us;)Lcom/google/android/gms/internal/us;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/yr;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yr;->zzJD()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vp;

    iget-object v7, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v7}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/ue;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/ue;->zzh(Lcom/google/android/gms/internal/vp;)V

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vp;->zzIp()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/us;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/sk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/qo;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v6

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/wj;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/us;->zze(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/us;

    move-result-object v7

    if-nez v6, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/us;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/sk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/sk;->zzHn()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    move v2, v5

    :goto_4
    if-nez v2, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/us;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_6
    move v6, v2

    :cond_7
    if-eqz v3, :cond_a

    if-nez v6, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2}, Lcom/google/android/gms/internal/sl;->zzd(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/us;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/us;->zzH(Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/us;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/us;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/us;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vq;

    new-instance v5, Lcom/google/android/gms/internal/tc;

    iget-object v7, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/internal/tc;-><init>(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vq;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vq;->zzIt()Lcom/google/android/gms/internal/vp;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v7}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-static {v5}, Lcom/google/android/gms/internal/tc;->zza(Lcom/google/android/gms/internal/tc;)Lcom/google/android/gms/internal/te;

    move-result-object v8

    invoke-interface {v7, v2, v8, v5, v5}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/ta;)V

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceV:Lcom/google/firebase/database/DatabaseError;

    if-nez v2, :cond_b

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    iget-object v4, p0, Lcom/google/android/gms/internal/sp;->zzcdP:Lcom/google/android/gms/internal/vp;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Ljava/util/List;)V

    :cond_c
    return-object v1

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vp;

    iget-object v4, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/sl;->zza(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/te;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v5}, Lcom/google/android/gms/internal/sl;->zzh(Lcom/google/android/gms/internal/sl;)Lcom/google/android/gms/internal/td;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/sl;

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/sl;->zzb(Lcom/google/android/gms/internal/sl;Lcom/google/android/gms/internal/vp;)Lcom/google/android/gms/internal/vp;

    move-result-object v2

    invoke-interface {v5, v2, v4}, Lcom/google/android/gms/internal/td;->zza(Lcom/google/android/gms/internal/vp;Lcom/google/android/gms/internal/te;)V

    goto :goto_6

    :cond_e
    move v6, v2

    goto/16 :goto_3
.end method

.class public final Lcom/google/android/gms/internal/xm;
.super Ljava/lang/Object;


# instance fields
.field private final zzciA:Lcom/google/android/gms/internal/qo;

.field private final zzciB:Lcom/google/android/gms/internal/xf;

.field private final zzciz:Lcom/google/android/gms/internal/qo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pd;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pd;->zzGr()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/util/List;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pd;->zzGs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/qo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/qo;-><init>(Ljava/util/List;)V

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pd;->zzGt()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xi;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/xm;->zzciB:Lcom/google/android/gms/internal/xf;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private final zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/qo;->zzi(Lcom/google/android/gms/internal/qo;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/qo;->zzi(Lcom/google/android/gms/internal/qo;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    if-lez v0, :cond_5

    if-gez v2, :cond_5

    if-nez v1, :cond_5

    :cond_0
    :goto_4
    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qo;->zzj(Lcom/google/android/gms/internal/qo;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/qo;->zzj(Lcom/google/android/gms/internal/qo;)I

    move-result v2

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    if-lez v0, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    if-lez v0, :cond_8

    if-nez v2, :cond_8

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->zzIO()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object p3

    goto :goto_4

    :cond_7
    move-object p3, p2

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    if-eqz v1, :cond_f

    :cond_9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->zzIP()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIJ()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v2, p2

    :goto_7
    if-ge v4, v3, :cond_e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/wj;

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v6

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v7

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/gms/internal/xm;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v6

    if-eq v6, v5, :cond_10

    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/xf;->zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    :goto_8
    move-object v2, v1

    goto :goto_7

    :cond_e
    move-object p3, v2

    goto/16 :goto_4

    :cond_f
    move-object p3, p2

    goto/16 :goto_4

    :cond_10
    move-object v1, v2

    goto :goto_8
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/xm;->zzciz:Lcom/google/android/gms/internal/qo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xm;->zzciA:Lcom/google/android/gms/internal/qo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/xm;->zzciB:Lcom/google/android/gms/internal/xf;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RangeMerge{optExclusiveStart="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", optInclusiveEnd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/qo;->zzGY()Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xm;->zzciB:Lcom/google/android/gms/internal/xf;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/xm;->zzb(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    return-object v0
.end method

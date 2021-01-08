.class final Lcom/google/android/gms/internal/nw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TB;TC;>;"
        }
    .end annotation
.end field

.field private final zzcai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final zzcaj:Lcom/google/android/gms/internal/nj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nj",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private zzcak:Lcom/google/android/gms/internal/nt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nt",
            "<TA;TC;>;"
        }
    .end annotation
.end field

.field private zzcal:Lcom/google/android/gms/internal/nt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nt",
            "<TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/nj",
            "<TA;TB;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nw;->zzcai:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/nw;->values:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/nw;->zzcaj:Lcom/google/android/gms/internal/nj;

    return-void
.end method

.method private final zzag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->zzcaj:Lcom/google/android/gms/internal/nj;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/nj;->zzab(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/nj",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/nu",
            "<TA;TC;>;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/nw;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/nw;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;)V

    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/google/android/gms/internal/nx;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nx;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nx;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nz;

    iget v4, v0, Lcom/google/android/gms/internal/nz;->zzcap:I

    sub-int/2addr v1, v4

    iget-boolean v4, v0, Lcom/google/android/gms/internal/nz;->zzcao:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/google/android/gms/internal/nq;->zzcac:I

    iget v0, v0, Lcom/google/android/gms/internal/nz;->zzcap:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/nw;->zze(III)V

    goto :goto_0

    :cond_0
    sget v4, Lcom/google/android/gms/internal/nq;->zzcac:I

    iget v5, v0, Lcom/google/android/gms/internal/nz;->zzcap:I

    invoke-direct {v2, v4, v5, v1}, Lcom/google/android/gms/internal/nw;->zze(III)V

    iget v4, v0, Lcom/google/android/gms/internal/nz;->zzcap:I

    sub-int/2addr v1, v4

    sget v4, Lcom/google/android/gms/internal/nq;->zzcab:I

    iget v0, v0, Lcom/google/android/gms/internal/nz;->zzcap:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/gms/internal/nw;->zze(III)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nu;

    iget-object v0, v2, Lcom/google/android/gms/internal/nw;->zzcak:Lcom/google/android/gms/internal/nt;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/no;->zzFE()Lcom/google/android/gms/internal/no;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v1, v0, p3, v2}, Lcom/google/android/gms/internal/nu;-><init>(Lcom/google/android/gms/internal/np;Ljava/util/Comparator;Lcom/google/android/gms/internal/nv;)V

    return-object v1

    :cond_2
    iget-object v0, v2, Lcom/google/android/gms/internal/nw;->zzcak:Lcom/google/android/gms/internal/nt;

    goto :goto_1
.end method

.method private final zze(III)V
    .locals 5

    const/4 v4, 0x0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p2, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/nw;->zzn(II)Lcom/google/android/gms/internal/np;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcai:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v0, Lcom/google/android/gms/internal/nq;->zzcab:I

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ns;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/nw;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ns;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->zzcak:Lcom/google/android/gms/internal/nt;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcak:Lcom/google/android/gms/internal/nt;

    iput-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcal:Lcom/google/android/gms/internal/nt;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nn;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/nw;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->zzcal:Lcom/google/android/gms/internal/nt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nt;->zzb(Lcom/google/android/gms/internal/np;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcal:Lcom/google/android/gms/internal/nt;

    goto :goto_1
.end method

.method private final zzn(II)Lcom/google/android/gms/internal/np;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/np",
            "<TA;TC;>;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/no;->zzFE()Lcom/google/android/gms/internal/no;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcai:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/nn;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/nw;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p2, 0x2

    add-int v1, p1, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/nw;->zzn(II)Lcom/google/android/gms/internal/np;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/nw;->zzn(II)Lcom/google/android/gms/internal/np;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->zzcai:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/nn;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/nw;->zzag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/nn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)V

    goto :goto_0
.end method

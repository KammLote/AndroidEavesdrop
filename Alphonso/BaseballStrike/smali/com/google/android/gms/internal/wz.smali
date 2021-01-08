.class public final Lcom/google/android/gms/internal/wz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/xe;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzcii:Lcom/google/android/gms/internal/nl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nl",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/wy;

.field private final zzcij:Lcom/google/android/gms/internal/xf;

.field private zzcik:Lcom/google/android/gms/internal/nl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nl",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/nl;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/nl;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    iput-object p1, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/nl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/wy;",
            "Lcom/google/android/gms/internal/nl",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    iput-object p1, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    iput-object p3, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    return-void
.end method

.method private final zzJc()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/wy;->zzi(Lcom/google/android/gms/internal/xf;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/xe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzFm()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/nl;

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/nl;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    :cond_3
    :goto_2
    return-void

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    iput-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/wz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)V

    return-object v0
.end method

.method public static zzj(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wz;

    invoke-static {}, Lcom/google/android/gms/internal/xk;->zzJj()Lcom/google/android/gms/internal/xk;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)V

    return-object v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->zzJc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzFm()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzFy()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/xe;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->zzJc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/xf;->zzFy()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nl;->zzFy()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final zzJd()Lcom/google/android/gms/internal/xe;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    instance-of v0, v0, Lcom/google/android/gms/internal/wl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->zzJc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    check-cast v0, Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIQ()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/xe;

    iget-object v2, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nl;->zzFA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    goto :goto_0
.end method

.method public final zzJe()Lcom/google/android/gms/internal/xe;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    instance-of v0, v0, Lcom/google/android/gms/internal/wl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->zzJc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    check-cast v0, Lcom/google/android/gms/internal/wl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIR()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/xe;

    iget-object v2, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nl;->zzFB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/wj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-static {}, Lcom/google/android/gms/internal/xa;->zzJf()Lcom/google/android/gms/internal/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/wz;->zzJc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzl(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/wj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nl;->zzae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xe;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xe;->zzJi()Lcom/google/android/gms/internal/wj;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzg(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/xf;->zze(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/wy;->zzi(Lcom/google/android/gms/internal/xf;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/wz;

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    sget-object v3, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/nl;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    sget-object v1, Lcom/google/android/gms/internal/wz;->zzcii:Lcom/google/android/gms/internal/nl;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/wz;

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/nl;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xf;->zzm(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    new-instance v3, Lcom/google/android/gms/internal/xe;

    invoke-direct {v3, p1, v0}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/nl;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/nl;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/xf;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/xe;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nl;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/nl;

    move-result-object v0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/wz;

    iget-object v3, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/nl;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final zzk(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/wz;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/wz;

    iget-object v1, p0, Lcom/google/android/gms/internal/wz;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/xf;->zzf(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wz;->zzcgV:Lcom/google/android/gms/internal/wy;

    iget-object v3, p0, Lcom/google/android/gms/internal/wz;->zzcik:Lcom/google/android/gms/internal/nl;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/wz;-><init>(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/nl;)V

    return-object v0
.end method

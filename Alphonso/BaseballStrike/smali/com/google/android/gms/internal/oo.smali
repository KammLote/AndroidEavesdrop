.class public final Lcom/google/android/gms/internal/oo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/od;
.implements Lcom/google/android/gms/internal/om;


# static fields
.field private static zzcat:J


# instance fields
.field private final zzbZH:Lcom/google/android/gms/internal/wf;

.field private final zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzcaF:Lcom/google/android/gms/internal/og;

.field private final zzcaK:Lcom/google/android/gms/internal/on;

.field private zzcaL:Ljava/lang/String;

.field private zzcaM:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaN:Z

.field private zzcaO:J

.field private zzcaP:Lcom/google/android/gms/internal/oc;

.field private zzcaQ:Lcom/google/android/gms/internal/oy;

.field private zzcaR:J

.field private zzcaS:J

.field private zzcaT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/ox;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/pa;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/pc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/oz;",
            "Lcom/google/android/gms/internal/pb;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaX:Ljava/lang/String;

.field private zzcaY:Z

.field private final zzcaZ:Lcom/google/android/gms/internal/oi;

.field private final zzcau:Lcom/google/android/gms/internal/ok;

.field private final zzcba:Lcom/google/android/gms/internal/pp;

.field private zzcbb:Ljava/lang/String;

.field private zzcbc:J

.field private zzcbd:I

.field private zzcbe:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private zzcbf:J

.field private zzcbg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/oo;->zzcat:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/on;)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaM:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcaN:Z

    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    iput-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcaR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcaS:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcbc:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/oo;->zzcbd:I

    iput-object v7, p0, Lcom/google/android/gms/internal/oo;->zzcbe:Ljava/util/concurrent/ScheduledFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    iput-object p1, p0, Lcom/google/android/gms/internal/oo;->zzcaZ:Lcom/google/android/gms/internal/oi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oi;->zzFU()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oi;->zzFT()Lcom/google/android/gms/internal/og;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaF:Lcom/google/android/gms/internal/og;

    iput-object p2, p0, Lcom/google/android/gms/internal/oo;->zzcau:Lcom/google/android/gms/internal/ok;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaT:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pr;

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oi;->zzFS()Lcom/google/android/gms/internal/wg;

    move-result-object v2

    const-string v3, "ConnectionRetryHelper"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/pr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/wg;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/pr;->zzas(J)Lcom/google/android/gms/internal/pr;

    move-result-object v0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/pr;->zzh(D)Lcom/google/android/gms/internal/pr;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/pr;->zzat(J)Lcom/google/android/gms/internal/pr;

    move-result-object v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/pr;->zzi(D)Lcom/google/android/gms/internal/pr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pr;->zzGB()Lcom/google/android/gms/internal/pp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    sget-wide v0, Lcom/google/android/gms/internal/oo;->zzcat:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/oo;->zzcat:J

    new-instance v2, Lcom/google/android/gms/internal/wf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oi;->zzFS()Lcom/google/android/gms/internal/wg;

    move-result-object v3

    const-string v4, "PersistentConnection"

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "pc_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/wf;-><init>(Lcom/google/android/gms/internal/wg;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    iput-object v7, p0, Lcom/google/android/gms/internal/oo;->zzcbb:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void
.end method

.method private final isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcbg:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v1, Lcom/google/android/gms/internal/oy;->zzcbt:Lcom/google/android/gms/internal/oy;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v1, Lcom/google/android/gms/internal/oy;->zzcbu:Lcom/google/android/gms/internal/oy;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGc()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v1, Lcom/google/android/gms/internal/oy;->zzcbu:Lcom/google/android/gms/internal/oy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaM:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzGe()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v3, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Not in disconnected state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcaY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "Scheduling connection attempt"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/oo;->zzcaY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    new-instance v2, Lcom/google/android/gms/internal/op;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/op;-><init>(Lcom/google/android/gms/internal/oo;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pp;->zzp(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private final zzGf()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pc;->zzGo()Ljava/util/Map;

    move-result-object v3

    const-string v4, "h"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pc;->zzGq()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/internal/pc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pc;->zzGk()Lcom/google/android/gms/internal/pe;

    move-result-object v1

    const-string v4, "disconnected"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/pe;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final zzGg()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v3, Lcom/google/android/gms/internal/oy;->zzcbu:Lcom/google/android/gms/internal/oy;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Should be connected if we\'re restoring state, but we are: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pb;

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->zzGl()Lcom/google/android/gms/internal/oz;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Restoring listen "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/pb;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v1, "Restoring writes."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/oo;->zzap(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pa;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pa;->zzGj()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pa;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pa;->zzGk()Lcom/google/android/gms/internal/pe;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final zzGh()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcbe:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcbe:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZv:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ow;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ow;-><init>(Lcom/google/android/gms/internal/oo;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcbe:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->isInterrupted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->isIdle()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->resume(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private final zzGi()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcbf:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzS(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "removing all listens at path "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/oz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pb;

    invoke-static {v1}, Lcom/google/android/gms/internal/oz;->zzb(Lcom/google/android/gms/internal/oz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/pb;

    iget-object v6, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pb;->zzGl()Lcom/google/android/gms/internal/oz;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/internal/pb;

    invoke-static {v0}, Lcom/google/android/gms/internal/pb;->zzc(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/pe;

    move-result-object v0

    const-string v3, "permission_denied"

    invoke-interface {v0, v3, v7}, Lcom/google/android/gms/internal/pe;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/oo;->zzcbd:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/oy;)Lcom/google/android/gms/internal/oy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "removing query "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Trying to remove listener for QuerySpec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no listener exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pb;

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcbe:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Ljava/util/List;Lcom/google/android/gms/internal/oz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/oo;->zza(Ljava/util/List;Lcom/google/android/gms/internal/oz;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/pb;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "p"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pb;->zzGl()Lcom/google/android/gms/internal/oz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/oz;->zzb(Lcom/google/android/gms/internal/oz;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pb;->zzGm()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "q"

    invoke-static {p1}, Lcom/google/android/gms/internal/pb;->zzb(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/oz;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/oz;->zzc(Lcom/google/android/gms/internal/oz;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pb;->zzGn()Lcom/google/android/gms/internal/ol;

    move-result-object v0

    const-string v2, "h"

    invoke-interface {v0}, Lcom/google/android/gms/internal/ol;->zzFX()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ol;->zzFY()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ol;->zzFZ()Lcom/google/android/gms/internal/ob;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ob;->zzFQ()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "hs"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ob;->zzFR()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "q"

    new-instance v2, Lcom/google/android/gms/internal/ou;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ou;-><init>(Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/pb;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/or;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/or;-><init>(Lcom/google/android/gms/internal/oo;Lcom/google/android/gms/internal/pe;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string v1, "h"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcaR:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/oo;->zzcaR:J

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/pc;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/android/gms/internal/pc;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/oo;->zzap(J)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/oo;->zzcbf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ox;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/ox;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/ox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ox;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/oo;->zzcaS:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcaS:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "b"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/oc;->zza(Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzcaT:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/oz;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/oz;",
            ")V"
        }
    .end annotation

    const-string v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/oz;->zzc(Lcom/google/android/gms/internal/oz;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\".indexOn\": \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {p2}, Lcom/google/android/gms/internal/oz;->zzb(Lcom/google/android/gms/internal/oz;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Using an unspecified index. Consider adding \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/wf;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/oo;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcaY:Z

    return v0
.end method

.method private final zzaC(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v0

    const-string v3, "Must be connected to send auth, but was: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Auth token must be set to authenticate!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/os;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/os;-><init>(Lcom/google/android/gms/internal/oo;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/yh;->zzgU(Ljava/lang/String;)Lcom/google/android/gms/internal/yh;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "cred"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yh;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yh;->zzJB()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "authvar"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/yh;->zzJB()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "gauth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/ox;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "cred"

    iget-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "auth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/ox;)V

    goto :goto_1
.end method

.method private final zzap(J)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/pc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pc;->zzGk()Lcom/google/android/gms/internal/pe;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pc;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pc;->zzGp()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/pc;->zzGo()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ot;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ot;-><init>(Lcom/google/android/gms/internal/oo;Ljava/lang/String;JLcom/google/android/gms/internal/pc;Lcom/google/android/gms/internal/pe;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/oy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/oo;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/oo;->zzcbc:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/oo;->zzcbc:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/oo;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/oo;->zzcbc:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/oo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGe()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/og;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaF:Lcom/google/android/gms/internal/og;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/oo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGg()V

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/oc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/oo;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/oo;->zzcbd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/oo;->zzcbd:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/oo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/oo;->zzcbd:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/pp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/oo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/oo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/oo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/oo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGi()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGe()V

    return-void
.end method

.method public final interrupt(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Connection interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oc;->close()V

    iput-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pp;->zzGz()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pp;->cancel()V

    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    goto :goto_1
.end method

.method public final isInterrupted(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final purgeOutstandingWrites()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pc;

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->zza(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pe;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/pc;->zza(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pe;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/pe;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pa;

    invoke-static {v0}, Lcom/google/android/gms/internal/pa;->zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pe;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/pa;->zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pe;

    move-result-object v0

    const-string v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/pe;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcbg:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void
.end method

.method public final refreshAuthToken()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v1, "Auth token refresh requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->interrupt(Ljava/lang/String;)V

    const-string v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final resume(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Connection no longer interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaM:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v1, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGe()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shutdown()V
    .locals 1

    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final zzA(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzcaT:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ox;

    if-eqz v0, :cond_0

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ox;->zzC(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "handleServerMessage: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "t"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/oj;->zzah(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v3, :cond_5

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "ignoring empty merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/oj;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/oj;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/oj;->zzah(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/internal/oj;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/google/android/gms/internal/oj;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    const-string v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/pd;

    invoke-direct {v3, v5, v2, v1}, Lcom/google/android/gms/internal/pd;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v5, v4

    goto :goto_3

    :cond_8
    move-object v2, v4

    goto :goto_4

    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Ignoring empty range merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/android/gms/internal/on;->zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/oj;->zzgG(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oo;->zzS(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "ac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "s"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Auth token revoked: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcaY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/on;->zzaB(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oc;->close()V

    goto/16 :goto_0

    :cond_e
    const-string v2, "sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/wf;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Unrecognized action from server: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring unknown message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/pe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pa;

    const-string v1, "oc"

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pe;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pe;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/internal/oz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unlistening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/pb;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "p"

    invoke-static {v0}, Lcom/google/android/gms/internal/pb;->zzb(Lcom/google/android/gms/internal/pb;)Lcom/google/android/gms/internal/oz;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/oz;->zzb(Lcom/google/android/gms/internal/oz;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/oj;->zzR(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->zzGm()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "q"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pb;->zzGl()Lcom/google/android/gms/internal/oz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/oz;->zzc(Lcom/google/android/gms/internal/oz;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "t"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "n"

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/ol;Ljava/lang/Long;Lcom/google/android/gms/internal/pe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ol;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/oz;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Listening on "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string v3, "listen() called twice for same QuerySpec."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Adding listen query: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5, v1}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/pb;

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pb;-><init>(Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/oz;Ljava/lang/Long;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/op;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaW:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/oo;->zza(Lcom/google/android/gms/internal/pb;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const-string v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/pe;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/oe;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "Got on disconnect due to "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oe;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbq:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    iput-object v5, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/oo;->zzcbg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaT:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/oo;->zzcaO:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/oo;->zzcaO:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/oe;->zzcay:Lcom/google/android/gms/internal/oe;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcba:Lcom/google/android/gms/internal/pp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pp;->zzGz()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGe()V

    :cond_3
    iput-wide v6, p0, Lcom/google/android/gms/internal/oo;->zzcaO:J

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->onDisconnect()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcbg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pa;

    const-string v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/pe;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcbg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGh()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/oo;->zzcaU:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/pa;

    const-string v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final zzc(JLjava/lang/String;)V
    .locals 9

    const/16 v8, 0x2e

    const/16 v7, 0x2d

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "onReady"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/oo;->zzcaO:J

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "handling timestamp"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "serverTimeOffset"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/on;->zzB(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/oo;->zzcaN:Z

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/yg;->zzJA()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaZ:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oi;->zzFV()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persistence.android.enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v4, "sdk.android."

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaZ:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oi;->zzFW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v4, "Sending first connection stats"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6, v5}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "c"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "s"

    new-instance v4, Lcom/google/android/gms/internal/ov;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ov;-><init>(Lcom/google/android/gms/internal/oo;)V

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "calling restore state"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v3, Lcom/google/android/gms/internal/oy;->zzcbs:Lcom/google/android/gms/internal/oy;

    if-ne v0, v3, :cond_b

    move v0, v1

    :goto_3
    const-string v3, "Wanted to restore auth, but was in wrong state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v1, "Not restoring auth because token is null."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbu:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGg()V

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/oo;->zzcaN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/oo;->zzcbb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v0}, Lcom/google/android/gms/internal/on;->zzGa()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v4, "sdk.java."

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaZ:Lcom/google/android/gms/internal/oi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oi;->zzFW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "Not sending stats because stats are empty"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v3, "Restoring auth."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbt:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/oo;->zzaC(Z)V

    goto :goto_4
.end method

.method public final zzgD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oo;->zzcaL:Ljava/lang/String;

    return-void
.end method

.method public final zzgE(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wf;->zzIF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "server_kill"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/oo;->interrupt(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zzgH(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzbZH:Lcom/google/android/gms/internal/wf;

    const-string v2, "Auth token refreshed."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/wf;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/oo;->zzaC(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/oo;->zzGb()Z

    move-result v0

    const-string v2, "Must be connected to send unauth."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/oo;->zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ox;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final zzgI(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    sget-object v3, Lcom/google/android/gms/internal/oy;->zzcbr:Lcom/google/android/gms/internal/oy;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Trying to open network connection while in the wrong state: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/oj;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaK:Lcom/google/android/gms/internal/on;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/on;->zzaB(Z)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/oo;->zzcaX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/oy;->zzcbs:Lcom/google/android/gms/internal/oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaQ:Lcom/google/android/gms/internal/oy;

    new-instance v0, Lcom/google/android/gms/internal/oc;

    iget-object v1, p0, Lcom/google/android/gms/internal/oo;->zzcaZ:Lcom/google/android/gms/internal/oi;

    iget-object v2, p0, Lcom/google/android/gms/internal/oo;->zzcau:Lcom/google/android/gms/internal/ok;

    iget-object v3, p0, Lcom/google/android/gms/internal/oo;->zzcaL:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/oo;->zzcbb:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oc;-><init>(Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ok;Ljava/lang/String;Lcom/google/android/gms/internal/od;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    iget-object v0, p0, Lcom/google/android/gms/internal/oo;->zzcaP:Lcom/google/android/gms/internal/oc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oc;->open()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

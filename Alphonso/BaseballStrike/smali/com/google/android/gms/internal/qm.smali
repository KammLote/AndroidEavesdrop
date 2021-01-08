.class final enum Lcom/google/android/gms/internal/qm;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/qq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/qm;",
        ">;",
        "Lcom/google/android/gms/internal/qq;"
    }
.end annotation


# static fields
.field public static final enum zzcde:Lcom/google/android/gms/internal/qm;

.field private static final synthetic zzcdf:[Lcom/google/android/gms/internal/qm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/qm;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/qm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/qm;->zzcde:Lcom/google/android/gms/internal/qm;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/qm;

    sget-object v1, Lcom/google/android/gms/internal/qm;->zzcde:Lcom/google/android/gms/internal/qm;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/qm;->zzcdf:[Lcom/google/android/gms/internal/qm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/qm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qm;->zzcdf:[Lcom/google/android/gms/internal/qm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/qm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/qm;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/on;)Lcom/google/android/gms/internal/om;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/oo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qb;->zzGQ()Lcom/google/android/gms/internal/oi;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/google/android/gms/internal/oo;-><init>(Lcom/google/android/gms/internal/oi;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/on;)V

    return-object v0
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pt;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Authentication is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/qh;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/th;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/tf;->zzcfh:Lcom/google/android/gms/internal/tf;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/th;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/tf;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qb;Ljava/lang/String;)Lcom/google/android/gms/internal/ue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/wh;Ljava/util/List;)Lcom/google/android/gms/internal/wg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qb;",
            "Lcom/google/android/gms/internal/wh;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/wg;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/we;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/we;-><init>(Lcom/google/android/gms/internal/wh;Ljava/util/List;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/sa;
    .locals 2

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qb;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/qn;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/qn;-><init>(Lcom/google/android/gms/internal/qm;Lcom/google/android/gms/internal/wf;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/qb;)Ljava/lang/String;
    .locals 4

    const-string v0, "java.vm.name"

    const-string v1, "Unknown JVM"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.specification.version"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/zzcwm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcwm$zza;,
        Lcom/google/android/gms/internal/zzcwm$zzb;,
        Lcom/google/android/gms/internal/zzcwm$zzc;
    }
.end annotation


# static fields
.field private static final zzbJc:Ljava/util/regex/Pattern;

.field private static volatile zzbJd:Lcom/google/android/gms/internal/zzcwm;

.field private static zzbJm:Lcom/google/android/gms/internal/zzcwm$zzc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbDw:Ljava/lang/String;

.field private final zzbHJ:Ljava/util/concurrent/ExecutorService;

.field private final zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHU:Lcom/google/android/gms/tagmanager/zzce;

.field private final zzbJe:Lcom/google/android/gms/internal/zzcxh;

.field private final zzbJf:Lcom/google/android/gms/internal/zzcvr;

.field private final zzbJg:Lcom/google/android/gms/internal/zzcwm$zza;

.field private final zzbJh:Ljava/lang/Object;

.field private zzbJi:Ljava/lang/String;

.field private zzbJj:I

.field private final zzbJk:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbJl:Z

.field private volatile zzuJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJc:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/zzcwn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcwn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJm:Lcom/google/android/gms/internal/zzcwm$zzc;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzcxh;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzcvr;Lcom/google/android/gms/internal/zzcwm$zza;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJh:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJj:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJk:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJl:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHU:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJe:Lcom/google/android/gms/internal/zzcxh;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJf:Lcom/google/android/gms/internal/zzcvr;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJg:Lcom/google/android/gms/internal/zzcwm$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwm;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJj:I

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwm;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJj:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwm;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcwm;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwm;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJd:Lcom/google/android/gms/internal/zzcwm;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzcwm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJd:Lcom/google/android/gms/internal/zzcwm;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJm:Lcom/google/android/gms/internal/zzcwm$zzc;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzcwm$zzc;->zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJd:Lcom/google/android/gms/internal/zzcwm;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcwm;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/internal/zzcxh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJe:Lcom/google/android/gms/internal/zzcxh;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/tagmanager/zzcn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzcwm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJk:Ljava/util/Queue;

    return-object v0
.end method

.method private final zzf([Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v0, "Looking up container asset."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJg:Lcom/google/android/gms/internal/zzcwm$zza;

    const-string v2, "containers"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcwm$zza;->zzfL(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v5

    if-ge v0, v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/zzcwm;->zzbJc:Ljava/util/regex/Pattern;

    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    const-string v2, "containers"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJi:Ljava/lang/String;

    const-string v3, "Asset found for container "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    move v2, v4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to enumerate assets in folder %s"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "containers"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvj;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v9, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v6, "Extra container asset found, will not be loaded: "

    aget-object v3, v5, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v3, "Ignoring container asset %s (does not match %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v5, v0

    aput-object v7, v6, v1

    sget-object v7, Lcom/google/android/gms/internal/zzcwm;->zzbJc:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-nez v2, :cond_a

    const-string v0, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJg:Lcom/google/android/gms/internal/zzcwm$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcwm$zza;->zzCB()[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_5
    array-length v0, v3

    if-ge v1, v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/zzcwm;->zzbJc:Ljava/util/regex/Pattern;

    aget-object v5, v3, v1

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJi:Ljava/lang/String;

    const-string v2, "Asset found for container "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    const-string v0, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    move v2, v4

    :cond_6
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "Failed to enumerate assets."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvj;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v9, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v5, "Extra container asset found, will not be loaded: "

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbDw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJi:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzcwm;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzcwm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJh:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzcwm;)Lcom/google/android/gms/internal/zzcvr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJf:Lcom/google/android/gms/internal/zzcvr;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzcwm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    return v0
.end method


# virtual methods
.method public final initialize()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    if-eqz v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwm;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcwm;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v6, "Loading container "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/android/gms/internal/zzcws;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v1, v7}, Lcom/google/android/gms/internal/zzcws;-><init>(Lcom/google/android/gms/internal/zzcwm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcwt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwt;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    const-wide/16 v6, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJl:Z

    if-nez v0, :cond_2

    const-string v0, "Installing Tag Manager event handler."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJl:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v1, Lcom/google/android/gms/internal/zzcwo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwo;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v1, Lcom/google/android/gms/internal/zzcwq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwq;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzcwv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwv;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v0, "Tag Manager event handler installed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_4
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const/16 v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Tag Manager initilization took "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_0
    move-exception v0

    :try_start_a
    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    const-string v0, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4
.end method

.method public final zze([Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "Initializing Tag Manager."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->v(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJh:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    if-eqz v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    const-class v1, Lcom/google/android/gms/tagmanager/TagManagerService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwm;->zza(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcwm;->zzf([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v6, "Loading container "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/google/android/gms/internal/zzcws;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v1, v7}, Lcom/google/android/gms/internal/zzcws;-><init>(Lcom/google/android/gms/internal/zzcwm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHK:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcwt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwt;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    const-wide/16 v6, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJl:Z

    if-nez v0, :cond_2

    const-string v0, "Installing Tag Manager event handler."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbJl:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v1, Lcom/google/android/gms/internal/zzcwo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwo;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzck;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHL:Lcom/google/android/gms/tagmanager/zzcn;

    new-instance v1, Lcom/google/android/gms/internal/zzcwq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwq;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzcn;->zza(Lcom/google/android/gms/tagmanager/zzch;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzcwv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcwv;-><init>(Lcom/google/android/gms/internal/zzcwm;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v0, "Tag Manager event handler installed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_4
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const/16 v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Tag Manager initilization took "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaS(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcwm;->zzuJ:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_0
    move-exception v0

    :try_start_a
    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Error communicating with measurement proxy: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwm;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcuo;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    const-string v0, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvj;->zzaT(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4
.end method

.method final zzs(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwm;->zzbHJ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcwx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcwx;-><init>(Lcom/google/android/gms/internal/zzcwm;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

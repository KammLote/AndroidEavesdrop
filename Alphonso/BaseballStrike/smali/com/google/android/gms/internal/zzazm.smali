.class public final Lcom/google/android/gms/internal/zzazm;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static zzajR:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/internal/zzbaa;",
            ">;"
        }
    .end annotation
.end field

.field private static zzajS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzbaa;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzazg:[Lcom/google/android/gms/internal/zzcqm;

.field private static final zzazh:[Ljava/lang/String;

.field private static final zzazi:[[B


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzazj:I

.field private zzazk:Ljava/lang/String;

.field private zzazl:I

.field private zzazm:Ljava/lang/String;

.field private zzazn:Ljava/lang/String;

.field private final zzazo:Z

.field private zzazp:I

.field private final zzazq:Lcom/google/android/gms/internal/zzazs;

.field private final zzazr:Lcom/google/android/gms/common/util/zze;

.field private zzazs:Lcom/google/android/gms/internal/zzazr;

.field private final zzazt:Lcom/google/android/gms/internal/zzazp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzazn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/internal/zzazm;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzazm;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->API:Lcom/google/android/gms/common/api/Api;

    new-array v0, v4, [Lcom/google/android/gms/internal/zzcqm;

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzazg:[Lcom/google/android/gms/internal/zzcqm;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzazh:[Ljava/lang/String;

    new-array v0, v4, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzazm;->zzazi:[[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzazs;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzazr;Lcom/google/android/gms/internal/zzazp;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/zzazm;->zzazl:I

    iput v2, p0, Lcom/google/android/gms/internal/zzazm;->zzazp:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazm;->zzap(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazj:I

    iput v1, p0, Lcom/google/android/gms/internal/zzazm;->zzazl:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzazm;->zzazk:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzazm;->zzazm:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzazm;->zzazn:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzazm;->zzazo:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/zzazm;->zzazq:Lcom/google/android/gms/internal/zzazs;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzazm;->zzazr:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/internal/zzazr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzazr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazs:Lcom/google/android/gms/internal/zzazr;

    iput v2, p0, Lcom/google/android/gms/internal/zzazm;->zzazp:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzazm;->zzazt:Lcom/google/android/gms/internal/zzazp;

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazv;->zzaq(Landroid/content/Context;)Lcom/google/android/gms/internal/zzazs;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v8

    new-instance v10, Lcom/google/android/gms/internal/zzbag;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/zzbag;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v9, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzazm;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/zzazs;Lcom/google/android/gms/common/util/zze;Lcom/google/android/gms/internal/zzazr;Lcom/google/android/gms/internal/zzazp;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzazm;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazl:I

    return v0
.end method

.method private static zzap(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazk:Ljava/lang/String;

    return-object v0
.end method

.method private static zzb(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    move v3, v0

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v3, 0x1

    aput v5, v1, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Ljava/util/ArrayList;)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zzb(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazr:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazs:Lcom/google/android/gms/internal/zzazr;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzazm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazo:Z

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzazm;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazj:I

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazt:Lcom/google/android/gms/internal/zzazp;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazm;->zzazq:Lcom/google/android/gms/internal/zzazs;

    return-object v0
.end method


# virtual methods
.method public final zze([B)Lcom/google/android/gms/internal/zzazo;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzazo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzazo;-><init>(Lcom/google/android/gms/internal/zzazm;[BLcom/google/android/gms/internal/zzazn;)V

    return-object v0
.end method

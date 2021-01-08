.class public final Lcom/google/android/gms/internal/zzayv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplayApi;


# static fields
.field private static final zzapq:Lcom/google/android/gms/internal/zzayn;


# instance fields
.field private zzayW:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private zzayX:Landroid/hardware/display/VirtualDisplay;

.field private final zzayY:Lcom/google/android/gms/internal/zzazk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayn;

    const-string v1, "CastRemoteDisplayApiImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzayv;->zzapq:Lcom/google/android/gms/internal/zzayn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Api;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzayw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzayw;-><init>(Lcom/google/android/gms/internal/zzayv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayY:Lcom/google/android/gms/internal/zzazk;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayv;->zzayW:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayv;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzayv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzayv;->zzoP()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzayv;)Lcom/google/android/gms/internal/zzazk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayY:Lcom/google/android/gms/internal/zzazk;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzayv;)Lcom/google/android/gms/common/api/Api;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayW:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzayv;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method private final zzoP()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzayv;->zzapq:Lcom/google/android/gms/internal/zzayn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "releasing virtual display: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayv;->zzayX:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method static synthetic zzoQ()Lcom/google/android/gms/internal/zzayn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzayv;->zzapq:Lcom/google/android/gms/internal/zzayn;

    return-object v0
.end method


# virtual methods
.method public final startRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzayv;->zzapq:Lcom/google/android/gms/internal/zzayn;

    const-string v1, "startRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzayx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzayx;-><init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbax;)Lcom/google/android/gms/internal/zzbax;

    move-result-object v0

    return-object v0
.end method

.method public final stopRemoteDisplay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzayv;->zzapq:Lcom/google/android/gms/internal/zzayn;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzayn;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzayy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzayy;-><init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbax;)Lcom/google/android/gms/internal/zzbax;

    move-result-object v0

    return-object v0
.end method

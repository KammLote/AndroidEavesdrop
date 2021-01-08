.class public final Lcom/google/android/gms/internal/zzazo;
.super Ljava/lang/Object;


# instance fields
.field private zzazA:Z

.field private final zzazB:Lcom/google/android/gms/internal/aea;

.field private zzazC:Z

.field private synthetic zzazD:Lcom/google/android/gms/internal/zzazm;

.field private zzazk:Ljava/lang/String;

.field private zzazl:I

.field private zzazm:Ljava/lang/String;

.field private zzazn:Ljava/lang/String;

.field private zzazp:I

.field private final zzazu:Lcom/google/android/gms/internal/zzazq;

.field private zzazv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzazw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzazx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzazy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzcqm;",
            ">;"
        }
    .end annotation
.end field

.field private zzazz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzazm;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzazo;-><init>(Lcom/google/android/gms/internal/zzazm;[BLcom/google/android/gms/internal/zzazq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzazm;[BLcom/google/android/gms/internal/zzazn;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzazo;-><init>(Lcom/google/android/gms/internal/zzazm;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzazm;[BLcom/google/android/gms/internal/zzazq;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zza(Lcom/google/android/gms/internal/zzazm;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zzb(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zzc(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazn:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzazo;->zzazp:I

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazv:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazw:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazx:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazy:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazz:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazA:Z

    new-instance v0, Lcom/google/android/gms/internal/aea;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aea;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzazo;->zzazC:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazm;->zzc(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazm:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazm;->zzd(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/aea;->zzctB:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazm;->zzd(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/aea;->zzctC:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzazm;->zze(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    iget-wide v2, v1, Lcom/google/android/gms/internal/aea;->zzctB:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/aea;->zzctN:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    iput-object p2, v0, Lcom/google/android/gms/internal/aea;->zzctI:[B

    :cond_0
    iput-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazu:Lcom/google/android/gms/internal/zzazq;

    return-void
.end method


# virtual methods
.method public final zzai(I)Lcom/google/android/gms/internal/zzazo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    iput p1, v0, Lcom/google/android/gms/internal/aea;->zzctE:I

    return-object p0
.end method

.method public final zzaj(I)Lcom/google/android/gms/internal/zzazo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    iput p1, v0, Lcom/google/android/gms/internal/aea;->zzrD:I

    return-object p0
.end method

.method public final zzoS()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzazo;->zzoT()Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public final zzoT()Lcom/google/android/gms/common/api/PendingResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v13, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazC:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazC:Z

    new-instance v12, Lcom/google/android/gms/internal/zzazt;

    new-instance v0, Lcom/google/android/gms/internal/zzbaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazm;->zzg(Lcom/google/android/gms/internal/zzazm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzazm;->zzh(Lcom/google/android/gms/internal/zzazm;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/zzazo;->zzazl:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzazo;->zzazk:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzazo;->zzazm:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzazo;->zzazn:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzazm;->zzf(Lcom/google/android/gms/internal/zzazm;)Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzbaj;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzazo;->zzazB:Lcom/google/android/gms/internal/aea;

    invoke-static {v13}, Lcom/google/android/gms/internal/zzazm;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v13}, Lcom/google/android/gms/internal/zzazm;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v8

    iget-boolean v11, p0, Lcom/google/android/gms/internal/zzazo;->zzazA:Z

    move-object v1, v12

    move-object v2, v0

    move-object v4, v13

    move-object v5, v13

    move-object v7, v13

    move-object v9, v13

    move-object v10, v13

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/zzazt;-><init>(Lcom/google/android/gms/internal/zzbaj;Lcom/google/android/gms/internal/aea;Lcom/google/android/gms/internal/zzazq;Lcom/google/android/gms/internal/zzazq;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/internal/zzcqm;Z)V

    iget-object v0, v12, Lcom/google/android/gms/internal/zzazt;->zzazE:Lcom/google/android/gms/internal/zzbaj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazm;->zzi(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazp;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbaj;->zzazk:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/zzbaj;->zzazl:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzazp;->zzg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzazo;->zzazD:Lcom/google/android/gms/internal/zzazm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazm;->zzj(Lcom/google/android/gms/internal/zzazm;)Lcom/google/android/gms/internal/zzazs;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/google/android/gms/internal/zzazs;->zza(Lcom/google/android/gms/internal/zzazt;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method

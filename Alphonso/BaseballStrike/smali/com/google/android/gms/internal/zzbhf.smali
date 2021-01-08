.class public final Lcom/google/android/gms/internal/zzbhf;
.super Ljava/lang/Object;


# instance fields
.field private zzaKm:J

.field private zzaKn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaKo:I

.field private zzaKq:I

.field private zzaKr:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xa8c0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKm:J

    iput v2, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKq:I

    iput v2, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKr:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbhf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKm:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbhf;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbhf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKo:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbhf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKq:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbhf;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKr:I

    return v0
.end method


# virtual methods
.method public final zzA(J)Lcom/google/android/gms/internal/zzbhf;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKm:J

    return-object p0
.end method

.method public final zzA(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbhf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKn:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzaE(I)Lcom/google/android/gms/internal/zzbhf;
    .locals 1

    const/16 v0, 0x283c

    iput v0, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKo:I

    return-object p0
.end method

.method public final zzaF(I)Lcom/google/android/gms/internal/zzbhf;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKq:I

    return-object p0
.end method

.method public final zzaG(I)Lcom/google/android/gms/internal/zzbhf;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzbhf;->zzaKr:I

    return-object p0
.end method

.method public final zzsr()Lcom/google/android/gms/internal/zzbhe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbhe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbhe;-><init>(Lcom/google/android/gms/internal/zzbhf;Lcom/google/android/gms/internal/zzbhd;)V

    return-object v0
.end method

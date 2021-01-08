.class public final Lcom/google/android/gms/internal/zzadq;
.super Ljava/lang/Object;


# instance fields
.field private mErrorCode:I

.field private zzMu:Ljava/lang/String;

.field private zzWJ:Ljava/lang/String;

.field private zzWK:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzadq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadq;->zzMu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzadq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadq;->zzWJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzadq;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzadq;->mErrorCode:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzadq;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzadq;->zzWK:J

    return-wide v0
.end method


# virtual methods
.method public final zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadq;->zzMu:Ljava/lang/String;

    return-object p0
.end method

.method public final zzay(Ljava/lang/String;)Lcom/google/android/gms/internal/zzadq;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadq;->zzWJ:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/zzadq;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzadq;->zzWK:J

    return-object p0
.end method

.method public final zzgU()Lcom/google/android/gms/internal/zzado;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzado;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzado;-><init>(Lcom/google/android/gms/internal/zzadq;Lcom/google/android/gms/internal/zzadp;)V

    return-object v0
.end method

.method public final zzw(I)Lcom/google/android/gms/internal/zzadq;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzadq;->mErrorCode:I

    return-object p0
.end method

.class public final Lcom/google/android/gms/internal/zzbim;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKO:Lcom/google/android/gms/internal/aby;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aby;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aby;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzaKO:Lcom/google/android/gms/internal/aby;

    return-void
.end method

.method public static zza(I[I)Lcom/google/android/gms/internal/zzbim;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbim;

    new-instance v1, Lcom/google/android/gms/internal/aby;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aby;-><init>()V

    iput p0, v1, Lcom/google/android/gms/internal/aby;->zzcqb:I

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lcom/google/android/gms/internal/aby;->zzcqc:J

    iput-object p1, v1, Lcom/google/android/gms/internal/aby;->zzcqd:[I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbim;-><init>(Lcom/google/android/gms/internal/aby;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final zzsB()Lcom/google/android/gms/internal/aby;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbim;->zzaKO:Lcom/google/android/gms/internal/aby;

    return-object v0
.end method
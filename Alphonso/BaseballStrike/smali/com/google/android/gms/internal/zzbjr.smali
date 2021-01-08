.class public final Lcom/google/android/gms/internal/zzbjr;
.super Ljava/lang/Object;


# instance fields
.field private final zzaLn:Lcom/google/android/gms/internal/acv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/acv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/acv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzaLn:Lcom/google/android/gms/internal/acv;

    return-void
.end method

.method public static zzj(II)Lcom/google/android/gms/internal/zzbjr;
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjr;

    new-instance v1, Lcom/google/android/gms/internal/acv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/acv;-><init>()V

    iput v2, v1, Lcom/google/android/gms/internal/acv;->zzcqb:I

    iput p1, v1, Lcom/google/android/gms/internal/acv;->zzcru:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbjr;-><init>(Lcom/google/android/gms/internal/acv;)V

    return-object v0
.end method


# virtual methods
.method public final zzsJ()Lcom/google/android/gms/internal/acv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzaLn:Lcom/google/android/gms/internal/acv;

    return-object v0
.end method

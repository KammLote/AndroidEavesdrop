.class final Lcom/google/android/gms/internal/hu;
.super Ljava/lang/Object;


# static fields
.field private static final zzbUv:Lcom/google/android/gms/internal/hz;

.field private static final zzbUw:Lcom/google/android/gms/internal/hz;

.field private static final zzbUx:Lcom/google/android/gms/internal/hz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/hz;

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/google/android/gms/internal/hz;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hu;->zzbUv:Lcom/google/android/gms/internal/hz;

    new-instance v0, Lcom/google/android/gms/internal/hz;

    invoke-direct {v0, v4, v1, v2, v2}, Lcom/google/android/gms/internal/hz;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hu;->zzbUw:Lcom/google/android/gms/internal/hz;

    new-instance v0, Lcom/google/android/gms/internal/hz;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/google/android/gms/internal/hz;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/gms/internal/hu;->zzbUx:Lcom/google/android/gms/internal/hz;

    return-void
.end method

.method static synthetic zzEi()Lcom/google/android/gms/internal/hz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hu;->zzbUv:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method

.method static synthetic zzEj()Lcom/google/android/gms/internal/hz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hu;->zzbUw:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method

.method static synthetic zzEk()Lcom/google/android/gms/internal/hz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hu;->zzbUx:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/zzavh;
.super Lcom/google/android/gms/internal/zzavl;


# instance fields
.field private synthetic zzauX:Lcom/google/android/gms/internal/zzavd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzavd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavh;->zzauX:Lcom/google/android/gms/internal/zzavd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzavd;Lcom/google/android/gms/internal/zzave;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzavh;-><init>(Lcom/google/android/gms/internal/zzavd;)V

    return-void
.end method


# virtual methods
.method public final zzb(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavh;->zzauX:Lcom/google/android/gms/internal/zzavd;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzavd;->zza(Lcom/google/android/gms/internal/zzavd;[Ljava/lang/Object;)V

    return-void
.end method

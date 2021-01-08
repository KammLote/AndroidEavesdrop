.class final Lcom/google/android/gms/internal/zzbyx;
.super Lcom/google/android/gms/internal/zzbxg;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWb:Lcom/google/android/gms/internal/zzbyw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbyw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzbyw;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyx;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbyx;->zzaWb:Lcom/google/android/gms/internal/zzbyw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbyw;Lcom/google/android/gms/internal/zzbys;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbyx;-><init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbyw;)V

    return-void
.end method


# virtual methods
.method public final zzu(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzaWb:Lcom/google/android/gms/internal/zzbyw;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzaWb:Lcom/google/android/gms/internal/zzbyw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbyw;->zztS()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyx;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

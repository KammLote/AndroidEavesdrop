.class final Lcom/google/android/gms/internal/zzccm;
.super Lcom/google/android/gms/internal/zzccu;


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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccm;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzccn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccm;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzccn;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

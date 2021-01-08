.class final Lcom/google/android/gms/internal/zzbxv;
.super Lcom/google/android/gms/internal/zzbwb;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbwb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbxv;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbay;Lcom/google/android/gms/internal/zzbxs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbxv;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/DataTypeResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxv;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

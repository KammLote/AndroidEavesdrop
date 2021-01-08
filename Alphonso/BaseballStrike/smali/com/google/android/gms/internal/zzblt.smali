.class final Lcom/google/android/gms/internal/zzblt;
.super Lcom/google/android/gms/internal/zzbks;


# instance fields
.field private synthetic zzaNN:Lcom/google/android/gms/internal/zzbme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbls;Lcom/google/android/gms/internal/zzbme;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzblt;->zzaNN:Lcom/google/android/gms/internal/zzbme;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbks;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzag(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblt;->zzaNN:Lcom/google/android/gms/internal/zzbme;

    new-instance v1, Lcom/google/android/gms/common/api/BooleanResult;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbme;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

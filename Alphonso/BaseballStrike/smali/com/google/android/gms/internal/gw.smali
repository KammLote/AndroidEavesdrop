.class final Lcom/google/android/gms/internal/gw;
.super Lcom/google/android/gms/internal/gv;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbay;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/BooleanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gv;-><init>(Lcom/google/android/gms/internal/gu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;ZLandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->zzaIz:Lcom/google/android/gms/internal/zzbay;

    new-instance v1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzcku;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwR:Lcom/google/android/gms/internal/zzcnr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckt;Lcom/google/android/gms/internal/zzcnr;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcku;->zzbwR:Lcom/google/android/gms/internal/zzcnr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcku;->zzbwR:Lcom/google/android/gms/internal/zzcnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnr;->zzzF()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzbwR:Lcom/google/android/gms/internal/zzcnr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcnr;->getStatusCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcku;->zzbwR:Lcom/google/android/gms/internal/zzcnr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcnr;->zzzI()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;->onConnectionResponse(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;[B)V

    return-void
.end method

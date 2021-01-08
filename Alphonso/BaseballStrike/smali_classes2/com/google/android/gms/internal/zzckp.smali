.class final Lcom/google/android/gms/internal/zzckp;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwN:Lcom/google/android/gms/internal/zzcnt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckn;Lcom/google/android/gms/internal/zzcnt;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckp;->zzbwN:Lcom/google/android/gms/internal/zzcnt;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckp;->zzbwN:Lcom/google/android/gms/internal/zzcnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnt;->zzzF()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/ConnectionResolution;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckp;->zzbwN:Lcom/google/android/gms/internal/zzcnt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcnt;->getStatusCode()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/nearby/connection/ConnectionResolution;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onConnectionResult(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/ConnectionResolution;)V

    return-void
.end method

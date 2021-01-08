.class final Lcom/google/android/gms/internal/zzckw;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwS:Lcom/google/android/gms/internal/zzcnx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckv;Lcom/google/android/gms/internal/zzcnx;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckw;->zzbwS:Lcom/google/android/gms/internal/zzcnx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckw;->zzbwS:Lcom/google/android/gms/internal/zzcnx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnx;->zzzJ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckw;->zzbwS:Lcom/google/android/gms/internal/zzcnx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcnx;->getServiceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckw;->zzbwS:Lcom/google/android/gms/internal/zzcnx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcnx;->getEndpointName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;->onEndpointFound(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/DiscoveredEndpointInfo;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzcla;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwT:Lcom/google/android/gms/internal/zzcnz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcky;Lcom/google/android/gms/internal/zzcnz;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcla;->zzbwT:Lcom/google/android/gms/internal/zzcnz;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcla;->zzbwT:Lcom/google/android/gms/internal/zzcnz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnz;->zzzJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;->onEndpointLost(Ljava/lang/String;)V

    return-void
.end method

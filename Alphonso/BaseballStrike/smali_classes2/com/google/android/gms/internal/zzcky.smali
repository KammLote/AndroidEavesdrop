.class final Lcom/google/android/gms/internal/zzcky;
.super Lcom/google/android/gms/internal/zzcna;


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcna;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzckz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckz;-><init>(Lcom/google/android/gms/internal/zzcky;Lcom/google/android/gms/internal/zzcnx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcky;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcla;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcla;-><init>(Lcom/google/android/gms/internal/zzcky;Lcom/google/android/gms/internal/zzcnz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoj;)V
    .locals 0

    return-void
.end method

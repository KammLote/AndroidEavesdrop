.class final Lcom/google/android/gms/internal/zzckv;
.super Lcom/google/android/gms/internal/zzcna;


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
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
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcna;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckv;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckv;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzckw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckw;-><init>(Lcom/google/android/gms/internal/zzckv;Lcom/google/android/gms/internal/zzcnx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckv;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzckx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckx;-><init>(Lcom/google/android/gms/internal/zzckv;Lcom/google/android/gms/internal/zzcnz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoj;)V
    .locals 0

    return-void
.end method

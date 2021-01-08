.class final Lcom/google/android/gms/internal/zzckr;
.super Lcom/google/android/gms/internal/zzcmm;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
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
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmm;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckr;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckr;->zzbwL:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcks;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcks;-><init>(Lcom/google/android/gms/internal/zzckr;Lcom/google/android/gms/internal/zzcnp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoh;)V
    .locals 0

    return-void
.end method

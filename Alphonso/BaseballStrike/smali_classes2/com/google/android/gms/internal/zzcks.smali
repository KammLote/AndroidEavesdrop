.class final Lcom/google/android/gms/internal/zzcks;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwP:Lcom/google/android/gms/internal/zzcnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckr;Lcom/google/android/gms/internal/zzcnp;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcks;->zzbwP:Lcom/google/android/gms/internal/zzcnp;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcks;->zzbwP:Lcom/google/android/gms/internal/zzcnp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnp;->zzzF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcks;->zzbwP:Lcom/google/android/gms/internal/zzcnp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcnp;->zzzG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcks;->zzbwP:Lcom/google/android/gms/internal/zzcnp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcnp;->zzzI()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;->onConnectionRequest(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

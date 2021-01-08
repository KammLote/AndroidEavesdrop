.class final Lcom/google/android/gms/internal/zzclh;
.super Lcom/google/android/gms/internal/zzcle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcle",
        "<",
        "Lcom/google/android/gms/nearby/connection/PayloadCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbwX:Lcom/google/android/gms/internal/zzcod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclf;Lcom/google/android/gms/internal/zzcod;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclh;->zzbwX:Lcom/google/android/gms/internal/zzcod;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/nearby/connection/PayloadCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclh;->zzbwX:Lcom/google/android/gms/internal/zzcod;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcod;->zzzF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclh;->zzbwX:Lcom/google/android/gms/internal/zzcod;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcod;->zzzM()Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/nearby/connection/PayloadCallback;->onPayloadTransferUpdate(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/zzckq;
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
.field private synthetic zzbwO:Lcom/google/android/gms/internal/zzcnv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckn;Lcom/google/android/gms/internal/zzcnv;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckq;->zzbwO:Lcom/google/android/gms/internal/zzcnv;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzckm;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzq(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckq;->zzbwO:Lcom/google/android/gms/internal/zzcnv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcnv;->zzzF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;->onDisconnected(Ljava/lang/String;)V

    return-void
.end method
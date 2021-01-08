.class final Lcom/google/android/gms/internal/zzasi;
.super Lcom/google/android/gms/internal/zzask;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzash;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzask;-><init>(Lcom/google/android/gms/internal/zzasi;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzasc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzasj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzasj;-><init>(Lcom/google/android/gms/internal/zzasi;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzasc;->zza(Lcom/google/android/gms/internal/zzase;)V

    return-void
.end method

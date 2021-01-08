.class public abstract Lcom/google/android/gms/internal/zzaxf;
.super Lcom/google/android/gms/internal/zzaxr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzaxr",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected zzarw:Lcom/google/android/gms/internal/zzays;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawx;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawx;->zza(Lcom/google/android/gms/internal/zzawx;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaxr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxf;->execute()V

    return-void
.end method

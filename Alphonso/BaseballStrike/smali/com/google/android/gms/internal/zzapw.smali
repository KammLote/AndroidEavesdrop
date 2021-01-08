.class final Lcom/google/android/gms/internal/zzapw;
.super Lcom/google/android/gms/internal/zzapv$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapv$zzc",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzajM:[Lcom/google/android/gms/internal/zzapk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapv;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzapk;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapw;->zzajM:[Lcom/google/android/gms/internal/zzapk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzapv$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapv$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapv$zzd;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapw;->zzajM:[Lcom/google/android/gms/internal/zzapk;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapq;Ljava/lang/String;[Lcom/google/android/gms/internal/zzapk;)V

    return-void
.end method

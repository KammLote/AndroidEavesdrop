.class final Lcom/google/firebase/appindexing/internal/zzr;
.super Lcom/google/firebase/appindexing/internal/zzt;


# instance fields
.field private synthetic zzbVU:[Lcom/google/firebase/appindexing/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzq;[Lcom/google/firebase/appindexing/internal/zza;)V
    .locals 1

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzr;->zzbVU:[Lcom/google/firebase/appindexing/internal/zza;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/appindexing/internal/zzt;-><init>(Lcom/google/firebase/appindexing/internal/zzr;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzapo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapv$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapv$zzd;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzr;->zzbVU:[Lcom/google/firebase/appindexing/internal/zza;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapq;[Lcom/google/firebase/appindexing/internal/zza;)V

    return-void
.end method

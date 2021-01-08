.class final Lcom/google/firebase/database/connection/idl/zzac;
.super Lcom/google/firebase/database/connection/idl/zzk;


# instance fields
.field private synthetic zzcck:Lcom/google/android/gms/internal/og;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/og;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzcck:Lcom/google/android/gms/internal/og;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLcom/google/firebase/database/connection/idl/zzm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzac;->zzcck:Lcom/google/android/gms/internal/og;

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzad;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/zzad;-><init>(Lcom/google/firebase/database/connection/idl/zzac;Lcom/google/firebase/database/connection/idl/zzm;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/og;->zza(ZLcom/google/android/gms/internal/oh;)V

    return-void
.end method

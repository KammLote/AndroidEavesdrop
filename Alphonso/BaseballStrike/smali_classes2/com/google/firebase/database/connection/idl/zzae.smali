.class final Lcom/google/firebase/database/connection/idl/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/og;


# instance fields
.field private synthetic zzccm:Lcom/google/firebase/database/connection/idl/zzj;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzccm:Lcom/google/firebase/database/connection/idl/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLcom/google/android/gms/internal/oh;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzccm:Lcom/google/firebase/database/connection/idl/zzj;

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzaf;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/zzaf;-><init>(Lcom/google/firebase/database/connection/idl/zzae;Lcom/google/android/gms/internal/oh;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzj;->zza(ZLcom/google/firebase/database/connection/idl/zzm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

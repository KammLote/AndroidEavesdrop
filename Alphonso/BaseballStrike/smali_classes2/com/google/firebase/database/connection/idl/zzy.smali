.class final Lcom/google/firebase/database/connection/idl/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ol;


# instance fields
.field private synthetic zzccg:Lcom/google/firebase/database/connection/idl/zzp;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;Lcom/google/firebase/database/connection/idl/zzp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzy;->zzccg:Lcom/google/firebase/database/connection/idl/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzFX()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzy;->zzccg:Lcom/google/firebase/database/connection/idl/zzp;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzp;->zzFX()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzFY()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzy;->zzccg:Lcom/google/firebase/database/connection/idl/zzp;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzp;->zzFY()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzFZ()Lcom/google/android/gms/internal/ob;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzy;->zzccg:Lcom/google/firebase/database/connection/idl/zzp;

    invoke-interface {v0}, Lcom/google/firebase/database/connection/idl/zzp;->zzGy()Lcom/google/firebase/database/connection/idl/zza;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/connection/idl/zza;->zza(Lcom/google/firebase/database/connection/idl/zza;)Lcom/google/android/gms/internal/ob;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

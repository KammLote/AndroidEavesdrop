.class public final Lcom/google/android/gms/internal/zzckl;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz",
        "<",
        "Lcom/google/android/gms/internal/zzcnc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbwJ:J

.field private zzbwK:Lcom/google/android/gms/internal/zzcol;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwJ:J

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnc;

    new-instance v1, Lcom/google/android/gms/internal/zzckj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzckj;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzckj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwK:Lcom/google/android/gms/internal/zzcol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwK:Lcom/google/android/gms/internal/zzcol;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcol;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwK:Lcom/google/android/gms/internal/zzcol;

    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected final synthetic zza(Landroid/os/IInterface;)V
    .locals 1
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/internal/zzcnc;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzz;->zza(Landroid/os/IInterface;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcol;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcol;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwK:Lcom/google/android/gms/internal/zzcol;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbay;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/nearby/connection/Payload;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/zzcop;->zza(Lcom/google/android/gms/nearby/connection/Payload;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnc;

    new-instance v3, Lcom/google/android/gms/internal/zzcou;

    new-instance v1, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcli;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzcon;

    invoke-direct {v3, v4, p2, v1, p4}, Lcom/google/android/gms/internal/zzcou;-><init>(Landroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcon;Z)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzcou;)V

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckl;->zzbwK:Lcom/google/android/gms/internal/zzcol;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->asInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcol;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;J)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x1f4d

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbay;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcnc;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcnc;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcnd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcnd;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/zzbay;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbay",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzckl;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnc;

    new-instance v1, Lcom/google/android/gms/internal/zzcoq;

    new-instance v2, Lcom/google/android/gms/internal/zzcli;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcli;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/zzcoq;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcnc;->zza(Lcom/google/android/gms/internal/zzcoq;)V

    return-void
.end method

.method protected final zzmo()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clientId"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzckl;->zzbwJ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.class final Lcom/google/android/gms/cast/zzo;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/internal/zzaze;",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 9

    check-cast p4, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "configuration"

    iget v1, p4, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzapn:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/google/android/gms/internal/zzaze;

    iget-object v4, p4, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzaoU:Lcom/google/android/gms/cast/CastDevice;

    iget-object v6, p4, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplayOptions;->zzapm:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzaze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/cast/CastDevice;Landroid/os/Bundle;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method
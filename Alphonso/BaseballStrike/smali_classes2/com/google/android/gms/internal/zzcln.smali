.class final Lcom/google/android/gms/internal/zzcln;
.super Lcom/google/android/gms/internal/zzcmi;


# instance fields
.field private synthetic zzbwZ:Ljava/util/List;

.field private synthetic zzbxa:Lcom/google/android/gms/nearby/connection/Payload;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcll;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Lcom/google/android/gms/nearby/connection/Payload;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcln;->zzbwZ:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcln;->zzbxa:Lcom/google/android/gms/nearby/connection/Payload;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzclm;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzckl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcln;->zzbwZ:Ljava/util/List;

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcln;->zzbxa:Lcom/google/android/gms/nearby/connection/Payload;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzckl;->zza(Lcom/google/android/gms/internal/zzbay;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V

    return-void
.end method

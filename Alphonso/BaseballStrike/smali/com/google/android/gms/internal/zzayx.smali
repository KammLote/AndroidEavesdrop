.class final Lcom/google/android/gms/internal/zzayx;
.super Lcom/google/android/gms/internal/zzaza;


# instance fields
.field private synthetic zzayZ:Lcom/google/android/gms/internal/zzayv;

.field private synthetic zztE:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayx;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayx;->zztE:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzaza;-><init>(Lcom/google/android/gms/internal/zzayv;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzaze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayx;->zza(Lcom/google/android/gms/internal/zzaze;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzaze;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzazb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzazb;-><init>(Lcom/google/android/gms/internal/zzaza;Lcom/google/android/gms/internal/zzaze;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayx;->zzayZ:Lcom/google/android/gms/internal/zzayv;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayv;->zzb(Lcom/google/android/gms/internal/zzayv;)Lcom/google/android/gms/internal/zzazk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayx;->zztE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzaze;->zza(Lcom/google/android/gms/internal/zzazg;Lcom/google/android/gms/internal/zzazk;Ljava/lang/String;)V

    return-void
.end method
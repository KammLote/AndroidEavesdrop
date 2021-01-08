.class final Lcom/google/android/gms/internal/zzbmh;
.super Lcom/google/android/gms/internal/zzbmf;


# instance fields
.field private synthetic zzaOa:Lcom/google/android/gms/internal/zzbkq;

.field private synthetic zzaOb:Lcom/google/android/gms/internal/zzbob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmg;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbkq;Lcom/google/android/gms/internal/zzbob;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmh;->zzaOa:Lcom/google/android/gms/internal/zzbkq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmh;->zzaOb:Lcom/google/android/gms/internal/zzbob;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbmg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbol;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmh;->zzaOa:Lcom/google/android/gms/internal/zzbkq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmh;->zzaOb:Lcom/google/android/gms/internal/zzbob;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbqp;-><init>(Lcom/google/android/gms/internal/zzbay;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbol;->zza(Lcom/google/android/gms/internal/zzbkq;Lcom/google/android/gms/internal/zzbop;Ljava/lang/String;Lcom/google/android/gms/internal/zzbon;)V

    return-void
.end method

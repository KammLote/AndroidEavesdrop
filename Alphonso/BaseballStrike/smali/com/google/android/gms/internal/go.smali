.class final Lcom/google/android/gms/internal/go;
.super Lcom/google/android/gms/wallet/Wallet$zzb;


# instance fields
.field private synthetic val$requestCode:I

.field private synthetic zzbQA:Ljava/lang/String;

.field private synthetic zzbQz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/go;->zzbQz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/go;->zzbQA:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/go;->val$requestCode:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/gt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/go;->zza(Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/gt;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/go;->zzbQz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/go;->zzbQA:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/go;->val$requestCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gt;->zzc(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/go;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

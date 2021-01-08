.class final Lcom/google/android/gms/internal/zzbxy;
.super Lcom/google/android/gms/internal/zzbwe;


# instance fields
.field private synthetic zzaVF:Lcom/google/android/gms/internal/zzbxx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbxy;->zzaVF:Lcom/google/android/gms/internal/zzbxx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/GoalsResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxy;->zzaVF:Lcom/google/android/gms/internal/zzbxx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxx;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

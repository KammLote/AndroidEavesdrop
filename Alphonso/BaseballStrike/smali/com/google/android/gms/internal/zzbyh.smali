.class final Lcom/google/android/gms/internal/zzbyh;
.super Lcom/google/android/gms/internal/zzbvs;


# instance fields
.field private synthetic zzaVP:Lcom/google/android/gms/internal/zzbyg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyh;->zzaVP:Lcom/google/android/gms/internal/zzbyg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/result/DailyTotalResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyh;->zzaVP:Lcom/google/android/gms/internal/zzbyg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbyg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

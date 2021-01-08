.class final Lcom/google/android/gms/internal/zzcbx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzcds",
        "<",
        "Lcom/google/android/gms/internal/zzccy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbiC:Lcom/google/android/gms/internal/zzcbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcbw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbx;->zzbiC:Lcom/google/android/gms/internal/zzcbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzre()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbx;->zzbiC:Lcom/google/android/gms/internal/zzcbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbw;->zza(Lcom/google/android/gms/internal/zzcbw;)V

    return-void
.end method

.method public final synthetic zzrf()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbx;->zzbiC:Lcom/google/android/gms/internal/zzcbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbw;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccy;

    return-object v0
.end method

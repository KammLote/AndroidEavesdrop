.class final Lcom/google/firebase/database/connection/idl/zzg;
.super Lcom/google/firebase/database/connection/idl/zzah;


# instance fields
.field private synthetic zzcce:Lcom/google/android/gms/internal/pe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzcce:Lcom/google/android/gms/internal/pe;

    invoke-direct {p0}, Lcom/google/firebase/database/connection/idl/zzah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzg;->zzcce:Lcom/google/android/gms/internal/pe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/pe;->zzaa(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

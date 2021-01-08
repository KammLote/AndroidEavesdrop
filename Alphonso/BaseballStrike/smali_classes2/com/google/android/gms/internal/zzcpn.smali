.class public final Lcom/google/android/gms/internal/zzcpn;
.super Lcom/google/android/gms/nearby/messages/internal/zzn;

# interfaces
.implements Lcom/google/android/gms/internal/zzcpm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzn;",
        "Lcom/google/android/gms/internal/zzcpm",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbzE:Lcom/google/android/gms/internal/zzbdv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpn;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-void
.end method


# virtual methods
.method public final zzH(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/Update;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpn;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    new-instance v1, Lcom/google/android/gms/internal/zzcpo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcpo;-><init>(Lcom/google/android/gms/internal/zzcpn;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdv;->zza(Lcom/google/android/gms/internal/zzbdy;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V
    .locals 0

    return-void
.end method

.method public final zzzX()Lcom/google/android/gms/internal/zzbdv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdv",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpn;->zzbzE:Lcom/google/android/gms/internal/zzbdv;

    return-object v0
.end method

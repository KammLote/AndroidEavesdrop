.class final Lcom/google/android/gms/internal/zzasn;
.super Lcom/google/android/gms/internal/zzasl;


# instance fields
.field private synthetic zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasm;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzasn;->zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzasa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaso;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaso;-><init>(Lcom/google/android/gms/internal/zzasn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasn;->zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzary;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
